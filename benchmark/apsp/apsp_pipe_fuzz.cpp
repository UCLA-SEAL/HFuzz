//==============================================================
// This sample provides a parallel implementation of blocked Floyd Warshall
// algorithm to compute all pairs shortest paths using DPC++.
//==============================================================
// Copyright © Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================

#include <CL/sycl.hpp>
#include <chrono>
#include <cstdlib>
#include <iostream>
#include "dpc_common.hpp"
#include "FakeIOPipes.hpp"
#include "HostSideChannel.hpp"

// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/<version>/include/dpc_common.hpp
#include "dpc_common.hpp"
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif

using namespace std;
using namespace sycl;

// Number of nodes in the graph.
constexpr int nodes = 1024;
typedef std::vector<int> IntVector; 
typedef std::vector<size_t> LargeVector;
// Block length and block count (along a single dimension).
constexpr int block_length = 16;
int a_max = 0;
int a_min = 10000000;
int branch_max =0;
constexpr int block_count = (nodes / block_length);
struct DeviceToHostSideChannelID;
struct SideChannelMainKernel;
using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, int, true, 64>;

// Maximum distance between two adjacent nodes.
constexpr int max_distance = 100000;
constexpr int infinite = (nodes * max_distance);

// Number of repetitions.
constexpr int repetitions = 8;

// Randomly initialize directed graph.
void InitializeDirectedGraph(int *graph, std::string file) {
  
  std::ifstream read(file);
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 
    
  for (int i = 0; i < nodes; i++) {
    for (int j = 0; j < nodes; j++) {
      int cell = i * nodes + j;

      if (i == j) {
        graph[cell] = 0;
      } else if (rand() % 2) {
        graph[cell] = infinite;
      } else {
        int number;
        if (read >> number){
            graph[cell] = number;
        }
        else {
            graph[cell] = rand() % max_distance + 1;
        }
      }
      if (graph[cell]>a_max) {a_max=graph[cell];}
    }
  }
  
}

int write_file(const char *address, int *graph){
    FILE* f = fopen(address,"w");
    
    for (int i = 0; i < nodes * nodes; i++) {
      fprintf(f,"%d ", graph[i]);
    }
    fclose(f);
    return 0;
}

void mutate(int *a, int max_i){
    srand(time(NULL) + rand());
    int knob = rand()%4+1;
    //std::thread *threads = new std::thread[THREADS];

    int pos_i = rand()% max_i;
    
    if (knob==1){
        int value = rand();
        a[pos_i] = value;
    }
    else if (knob==2){
        a[pos_i] = 0;
    }
    else if (knob==3){
        int max_k = rand()% (max_i - pos_i);
        for (size_t k = pos_i; k < pos_i+max_k; k++){
            int value = rand();
            a[k] = value;
        }
    }
    else if (knob==4){
        for (int i = 0; i <pos_i; i++){
            a[i] = 0;
        }
        //for (int i = 0; i < THREADS; i++)
		//    threads[i] = std::thread(parallel_sparsity, std::ref(a), max_k, max_i, i);
	    //for (int i = 0; i < THREADS; i++)
		//    threads[i].join();
    }
    else if (knob==5){
        for (int i = 1; i < pos_i; i++){
            a[i] = a[i] * 100000;
            if (a[i] > a_max){  
                a_max = a[i];
            }
            if (a[i] < a_min){  
                a_min = a[i];
            }
        }
        //for (int i = 0; i < THREADS; i++)
		//    threads[i] = std::thread(parallel_add, std::ref(a), max_k, max_i, i);
	    //for (int i = 0; i < THREADS; i++)
		//    threads[i].join();
    }
    else if (knob==6){
        for (int i = 1; i < pos_i; i++){
            a[i] = a[i] / 100 - 100000;
            if (a[i] < a_min){  
                a_min = a[i];
            }
        }
        //for (int i = 0; i < THREADS; i++)
		//    threads[i] = std::thread(parallel_minus,std::ref(a), max_k, max_i, i);
	    //for (int i = 0; i < THREADS; i++)
		//    threads[i].join();
    }
}

// Copy graph.
void CopyGraph(int *to, int *from) {
  for (int i = 0; i < nodes; i++) {
    for (int j = 0; j < nodes; j++) {
      int cell = i * nodes + j;
      to[cell] = from[cell];
    }
  }
}

// Check if two graphs are equal.
bool VerifyGraphsAreEqual(int *graph, int *h) {
  for (int i = 0; i < nodes; i++) {
    for (int j = 0; j < nodes; j++) {
      int cell = i * nodes + j;

      if (graph[cell] != h[cell]) {
        return false;
      }
    }
  }

  return true;
}

// The basic (sequential) implementation of Floyd Warshall algorithm for
// computing all pairs shortest paths.
void FloydWarshall(int *graph) {
  for (int k = 0; k < nodes; k++) {
    for (int i = 0; i < nodes; i++) {
      for (int j = 0; j < nodes; j++) {
        if (graph[i * nodes + j] >
            graph[i * nodes + k] + graph[k * nodes + j]) {
          graph[i * nodes + j] = graph[i * nodes + k] + graph[k * nodes + j];
        }
      }
    }
  }
}

typedef accessor<int, 2, access::mode::read_write, access::target::local>
    LocalBlock;

// Inner loop of the blocked Floyd Warshall algorithm. A thread handles one cell
// of a block. To complete the computation of a block, this function is invoked
// by as many threads as there are cells in the block. Each such invocation
// computes as many iterations as there are blocks (along a single dimension).
// Moreover, each thread (simultaneously operating on a block), synchronizes
// between them at the end of each iteration. This is required for correctness
// as a following iteration depends on the previous iteration.
void BlockedFloydWarshallCompute(nd_item<1> &item, const LocalBlock &C,
                                 const LocalBlock &A, const LocalBlock &B,
                                 int i, int j) {
  for (int k = 0; k < block_length; k++) {
    if (C[i][j] > A[i][k] + B[k][j]) {
      C[i][j] = A[i][k] + B[k][j];
    }

    item.barrier(access::fence_space::local_space);
  }
}

// Phase 1 of blocked Floyd Warshall algorithm. It always operates on a block
// on the diagonal of the adjacency matrix of the graph.
void BlockedFloydWarshallPhase1(queue &q, int *graph, int round, IntVector &flag) {
  // Each group will process one block.
  constexpr auto blocks = 1;
  // Each item/thread in a group will handle one cell of the block.
  constexpr auto block_size = block_length * block_length;
  buffer flagout(flag);
  
  q.submit([&](handler &h) {
    LocalBlock block(range<2>(block_length, block_length), h);
    accessor flagV (flagout, h ,write_only);
    h.parallel_for<class KernelPhase1>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          auto tid = item.get_local_id(0);
          auto i = tid / block_length;
          auto j = tid % block_length;

          // Copy data to local memory.
          block[i][j] = graph[(round * block_length + i) * nodes +
                              (round * block_length + j)];
          item.barrier(access::fence_space::local_space);
          bool flag=true;
          
          // Compute.
          //BlockedFloydWarshallCompute(item, block, block, block, i, j);
          for (int k = 0; k < block_length; k++) {
              
              if (block[i][j] > block[i][k] + block[k][j]) {
                  block[i][j] = block[i][k] + block[k][j];
                  MyDeviceToHostSideChannel::write(i,flag);
                  if (flag) flagV[0] = flagV[0] + 1;
              }

              item.barrier(access::fence_space::local_space);
          }
          
         
          // Copy back data to global memory.
          graph[(round * block_length + i) * nodes +
                (round * block_length + j)] = block[i][j];
          item.barrier(access::fence_space::local_space);
        });
  });

  q.wait();
}

// Phase 2 of blocked Floyd Warshall algorithm. It always operates on blocks
// that are either on the same row or on the same column of a diagonal block.
void BlockedFloydWarshallPhase2(queue &q, int *graph, int round) {
  // Each group will process one block.
  constexpr auto blocks = block_count;
  // Each item/thread in a group will handle one cell of the block.
  constexpr auto block_size = block_length * block_length;

  q.submit([&](handler &h) {
    LocalBlock diagonal(range<2>(block_length, block_length), h);
    LocalBlock off_diag(range<2>(block_length, block_length), h);

    h.parallel_for<class KernelPhase2>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          auto gid = item.get_group(0);
          auto index = gid;

          if (index != round) {
            auto tid = item.get_local_id(0);
            auto i = tid / block_length;
            auto j = tid % block_length;

            // Copy data to local memory.
            diagonal[i][j] = graph[(round * block_length + i) * nodes +
                                   (round * block_length + j)];
            off_diag[i][j] = graph[(index * block_length + i) * nodes +
                                   (round * block_length + j)];
            item.barrier(access::fence_space::local_space);

            // Compute for blocks above and below the diagonal block.
            BlockedFloydWarshallCompute(item, off_diag, off_diag, diagonal, i,
                                        j);
            
            for (int k = 0; k < block_length; k++) {
                if (off_diag[i][j] > off_diag[i][k] + diagonal[k][j]) {
                    off_diag[i][j] = off_diag[i][k] + diagonal[k][j];
                }

                item.barrier(access::fence_space::local_space);  
            }
            // Copy back data to global memory.
            graph[(index * block_length + i) * nodes +
                  (round * block_length + j)] = off_diag[i][j];

            // Copy data to local memory.
            off_diag[i][j] = graph[(round * block_length + i) * nodes +
                                   (index * block_length + j)];
            item.barrier(access::fence_space::local_space);

            // Compute for blocks at left and at right of the diagonal block.
            BlockedFloydWarshallCompute(item, off_diag, diagonal, off_diag, i,
                                        j);

            // Copy back data to global memory.
            graph[(round * block_length + i) * nodes +
                  (index * block_length + j)] = off_diag[i][j];
            item.barrier(access::fence_space::local_space);
          }
        });
  });

  q.wait();
}

// Phase 3 of blocked Floyd Warshall algorithm. It operates on all blocks except
// the ones that are handled in phase 1 and in phase 2 of the algorithm.
void BlockedFloydWarshallPhase3(queue &q, int *graph, int round) {
  // Each group will process one block.
  constexpr auto blocks = block_count * block_count;
  // Each item/thread in a group will handle one cell of the block.
  constexpr auto block_size = block_length * block_length;
    
  q.submit([&](handler &h) {
    LocalBlock A(range<2>(block_length, block_length), h);
    LocalBlock B(range<2>(block_length, block_length), h);
    LocalBlock C(range<2>(block_length, block_length), h);

    h.parallel_for<class KernelPhase3>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          auto bk = round;

          auto gid = item.get_group(0);
          auto bi = gid / block_count;
          auto bj = gid % block_count;

          if ((bi != bk) && (bj != bk)) {
            auto tid = item.get_local_id(0);
            auto i = tid / block_length;
            auto j = tid % block_length;

            // Copy data to local memory.
            A[i][j] = graph[(bi * block_length + i) * nodes +
                            (bk * block_length + j)];
            B[i][j] = graph[(bk * block_length + i) * nodes +
                            (bj * block_length + j)];
            C[i][j] = graph[(bi * block_length + i) * nodes +
                            (bj * block_length + j)];

            item.barrier(access::fence_space::local_space);

            // Compute.
            //BlockedFloydWarshallCompute(item, C, A, B, i, j);
            for (int k = 0; k < block_length; k++) {
                if (C[i][j] > A[i][k] + B[k][j]) {
                  C[i][j] = A[i][k] + B[k][j];
                }

                item.barrier(access::fence_space::local_space);
            }

            // Copy back data to global memory.
            graph[(bi * block_length + i) * nodes + (bj * block_length + j)] =
                C[i][j];
            item.barrier(access::fence_space::local_space);
          }
        });
  });

  q.wait();
}

// Parallel implementation of blocked Floyd Warshall algorithm. It has three
// phases. Given a prior round of these computation phases are complete, phase 1
// is independent; Phase 2 can only execute after phase 1 completes; Similarly
// phase 3 depends on phase 2 so can only execute after phase 2 is complete.
//
// The inner loop of the sequential implementation is similar to:
//   g[i][j] = min(g[i][j], g[i][k] + g[k][j])
// A careful observation shows that for the kth iteration of the outer loop,
// the computation depends on cells either on the kth column, g[i][k] or on the
// kth row, g[k][j] of the graph. Phase 1 handles g[k][k], phase 2 handles
// g[*][k] and g[k][*], and phase 3 handles g[*][*] in that sequence. This cell
// level observations largely propagate to the blocks as well.
void BlockedFloydWarshall(queue &q, int *graph, IntVector &flag) {
  
  for (int round = 0; round < block_count; round++) {
    BlockedFloydWarshallPhase1(q, graph, round, flag);
    BlockedFloydWarshallPhase2(q, graph, round);
    BlockedFloydWarshallPhase3(q, graph, round);
  }
}



int main(int argc, char* argv[]) {
    // Create device selector for the device of your interest.
#if FPGA_EMULATOR
  // DPC++ extension: FPGA emulator selector on systems without FPGA card.
  ext::intel::fpga_emulator_selector d_selector;
#elif FPGA
  // DPC++ extension: FPGA selector on systems with FPGA card.
  ext::intel::fpga_selector d_selector;
#else
  // The default device selector will select the most performant device.
  default_selector d_selector;
#endif
  std::string file;
  if (argc > 1) file = argv[1];
  IntVector sum_f, flag;
  sum_f.resize(2);
  flag.resize(100);
  int file_number = 0;
  try {
    queue q{d_selector, dpc_common::exception_handler};
    auto device = q.get_device();
    auto work_group_size = device.get_info<info::device::max_work_group_size>();
    auto block_size = block_length * block_length;

    cout << "Device: " << device.get_info<info::device::name>() << "\n";
    
    if (work_group_size < block_size) {
      cout << "Work group size " << work_group_size
           << " is less than required size " << block_size << "\n";
      return -1;
    }
    
    // Allocate unified shared memory so that graph data is accessible to both
    // the CPU and the device (e.g., a GPU).
    int *graph = (int *)malloc(sizeof(int) * nodes * nodes);
    int *sequential = malloc_shared<int>(nodes * nodes, q);
    int *parallel = malloc_shared<int>(nodes * nodes, q);

    if ((graph == nullptr) || (sequential == nullptr) ||
        (parallel == nullptr)) {
      if (graph != nullptr) free(graph);
      if (sequential != nullptr) free(sequential, q);
      if (parallel != nullptr) free(parallel, q);

      cout << "Memory allocation failure.\n";
      return -1;
    }
    InitializeDirectedGraph(graph, file);
    for (int j = 0; j<6; j++){
    // Initialize directed graph.
    

    // Warm up the JIT.
    MyDeviceToHostSideChannel::Init(q);
    CopyGraph(parallel, graph);
    BlockedFloydWarshall(q, parallel, sum_f);

    // Measure execution times.
    double elapsed_s = 0;
    double elapsed_p = 0;
    int i;

    cout << "Repeating computation " << repetitions
         << " times to measure run time ...\n";

    for (i = 0; i < repetitions; i++) {
      mutate(graph, nodes*nodes);
       // Sequential all pairs shortest paths.
      CopyGraph(sequential, graph);
        
      // Parallel all pairs shortest paths.
      CopyGraph(parallel, graph);
      sum_f[0]=0;
          
        
      cout << "Iteration: " << (i + 1) << "\n";

      dpc_common::TimeInterval timer_p;

      BlockedFloydWarshall(q, parallel, sum_f);
      elapsed_p += timer_p.Elapsed();
      
      if (sum_f[0]<0){
        std::string path_to_output("../../HeteroFuzz/prototype/good-outputs");
        for (int j = 0; j < sum_f[0]; j++) {
        // Blocking read an int from the pipe
        //auto flag1 = MyDeviceToHostSideChannel::read(read_flag);
        //if (!read_flag){ break;}
        //else {
            std::cout<<"start reading.\n";
            flag[j] = MyDeviceToHostSideChannel::read();
            std::cout<<flag[j]<<" find an overflow\n";
            std::cout << "[" << flag[j] << "] " << graph[flag[j]]<<"\n";
            
            std::cout<<"read success.\n";
            if (flag[j]==-1){break;}
        //}
        }
        FloydWarshall(sequential);
        if (!VerifyGraphsAreEqual(sequential, parallel)) {
            cout << "Failed to correctly compute all pairs shortest paths!\n";
            write_file((path_to_output+"/-bug"+std::to_string(file_number)).c_str(), graph);
        }
        else {
            write_file((path_to_output+"/-prob"+std::to_string(file_number)).c_str(), graph);
        }
        file_number++;
      }
      // Verify two results are equal.
      
    }

    if (i == repetitions) {
      cout << "Successfully computed all pairs shortest paths in parallel!\n";

      elapsed_p /= repetitions;

      cout << "Time parallel: " << elapsed_p << " sec\n";
    }
    
    MyDeviceToHostSideChannel::Destroy(q);
    if (sum_f[0]>branch_max) branch_max=sum_f[0];
    mutate(graph, nodes*nodes);
    
    
    }
    // Free unified shared memory.
    free(graph);
    free(sequential, q);
    free(parallel, q);
      
  } catch (std::exception const &e) {
    cout << "An exception is caught while computing on device.\n";
        std::ofstream outfile;
  outfile.open("exec_fpga_info.txt");
  outfile << a_max << std::endl << a_min << std::endl << branch_max;
  outfile.close();
    terminate();
  }
    std::ofstream outfile;
  outfile.open("exec_fpga_info.txt");
  outfile << a_max << std::endl << a_min << std::endl << branch_max;
  outfile.close();
  return 0;
}

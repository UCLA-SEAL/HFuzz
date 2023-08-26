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
#include <math.h>
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

//struct DeviceToHostSideChannelID;
//struct SideChannelMainKernel;
//using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, int, true, 8>;

// Number of nodes in the graph.
constexpr int nodes = 1024;

// Block length and block count (along a single dimension).
constexpr int block_length = 16;
constexpr int block_count = (nodes / block_length);

// Maximum distance between two adjacent nodes.
constexpr int max_distance = 100;
constexpr int infinite = (nodes * max_distance);

// Number of repetitions.
constexpr int repetitions = 8;
std::ofstream outfile;
int amax=0;

double value_min=10000;
double value_max=0;
int kernel_max=0;

void mutate(int *a, int knob, int value){    
    if (knob==1){
        *a = value;
    }
    else if (knob==2){
        *a = 0;
    }
    else if (knob==3){
            *a = *a + value;
    }
    else if (knob==4){
            *a = *a / 100 - 100000;
    }
}

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
      if (graph[cell]>amax) {amax=graph[cell];}
    }
  }
  
}

// Copy graph.
void CopyGraph(int *to, int *from) {
  for (int k = 0; k<10; k++){
  for (int i = 0; i < nodes; i++) {
    for (int j = 0; j < nodes; j++) {
      int cell = k * nodes * nodes + i * nodes + j;
      to[cell] = from[cell];
    }
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

typedef accessor<float, 2, access::mode::read_write, access::target::local>
    LocalBlockF;

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
                                 int i, int j, int pp) {
  for (int k = 0; k < block_length; k++) {
    if (C[i + pp * block_length][j] > A[i + pp * block_length][k] + B[k + pp * block_length][j]) {
      C[i + pp * block_length][j] = A[i + pp * block_length][k] + B[k + pp * block_length][j];
    }

    item.barrier(access::fence_space::local_space);
  }
}

// Phase 1 of blocked Floyd Warshall algorithm. It always operates on a block
// on the diagonal of the adjacency matrix of the graph.
void BlockedFloydWarshallPhase1(queue &q, int *graph, int round) {
  // Each group will process one block.
  constexpr auto blocks = 1;
  // Each item/thread in a group will handle one cell of the block.
  constexpr auto block_size = block_length * block_length;

  q.submit([&](handler &h) {
    LocalBlock block(range<2>(10 * block_length, block_length), h);
    
    h.parallel_for<class KernelPhase1>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          #pragma unroll 5
          for (int pp=0;pp<10;pp++){
              auto tid = item.get_local_id(0);
              auto k = tid / block_length;
              auto j = tid % block_length;
              auto i = k + 0.1;

              // Copy data to local memory.
              block[pp * block_length + k][j] = graph[pp * block_length * block_length + (round * block_length + k) * nodes + (round * block_length + j)];
              item.barrier(access::fence_space::local_space);

              // Compute.
              BlockedFloydWarshallCompute(item, block, block, block, i, j, pp);

              // Copy back data to global memory.
              graph[pp * block_length * block_length + (round * block_length + k) * nodes +
                    (round * block_length + j)] = block[pp * block_length + k][j];
              item.barrier(access::fence_space::local_space);
          }
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
    
    buffer vmin(&value_min,range<1>(1));
    buffer vmax(&value_max,range<1>(1));
  
  q.submit([&](handler &h) {
    LocalBlock diagonal(range<2>(10*block_length, block_length), h);
    LocalBlock off_diag(range<2>(10*block_length, block_length), h);
    accessor a(vmin, h, write_only);
    accessor b(vmax, h, write_only);
    h.parallel_for<class KernelPhase2>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          #pragma unroll 5
          for (int pp=0;pp<10;pp++){
              auto gid = item.get_group(0);
              auto index = gid;

              if (index != round) {
                auto tid = item.get_local_id(0);
                auto i = tid / block_length;
                auto j = tid % block_length;

                // Copy data to local memory.
                diagonal[i + pp * block_length][j] = graph[pp * block_length * block_length + (round * block_length + i) * nodes + (round * block_length + j)];
                off_diag[i + pp * block_length][j] = graph[pp * block_length * block_length + (index * block_length + i) * nodes + (round * block_length + j)];
                item.barrier(access::fence_space::local_space);

                // Compute for blocks above and below the diagonal block.
                BlockedFloydWarshallCompute(item, off_diag, off_diag, diagonal, i, j, pp);

                // Copy back data to global memory.
                graph[pp * block_length * block_length + (index * block_length + i) * nodes +
                  (round * block_length + j)] = off_diag[i + pp * block_length][j];

                // Copy data to local memory.
                off_diag[pp * block_length + i][j] = graph[pp * block_length * block_length + (round * block_length + i) * nodes + (index * block_length + j)];
                if (off_diag[pp * block_length + i][j]<a[0]){a[0]=off_diag[pp * block_length + i][j];}
                if (off_diag[pp * block_length + i][j]>b[0]){b[0]=off_diag[pp * block_length + i][j];}
                item.barrier(access::fence_space::local_space);
    
                // Compute for blocks at left and at right of the diagonal block.
                BlockedFloydWarshallCompute(item, off_diag, diagonal, off_diag, i, j, pp);

                // Copy back data to global memory.
                graph[pp * block_length * block_length + (round * block_length + i) * nodes +
                      (index * block_length + j)] = off_diag[pp * block_length + i][j];
                item.barrier(access::fence_space::local_space);
              }
            bool flag;
            //MyDeviceToHostSideChannel::write(a[0],flag);
            //MyDeviceToHostSideChannel::write(b[0],flag);
          }
        });
  });
  
 //       bool flag;
 //     MyDeviceToHostSideChannel::read(flag);
 //     if (flag) {
 //         int a = MyDeviceToHostSideChannel::read();
 //         if (a>kernel_max){kernel_max=a;}
 //     }

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
    LocalBlock A(range<2>(10*block_length, block_length), h);
    LocalBlock B(range<2>(10*block_length, block_length), h);
    LocalBlock C(range<2>(10*block_length, block_length), h);

    h.parallel_for<class KernelPhase3>(
        nd_range<1>(blocks * block_size, block_size), [=](nd_item<1> item) {
          #pragma unroll 5
          for (int pp=0;pp<10;pp++){
              auto bk = round;

              auto gid = item.get_group(0);
              auto bi = gid / block_count;
              auto bj = gid % block_count;

              if ((bi != bk) && (bj != bk)) {
                auto tid = item.get_local_id(0);
                auto i = tid / block_length;
                auto j = tid % block_length;

                // Copy data to local memory.
                A[pp * block_length + i][j] = graph[pp * block_length * block_length + (bi * block_length + i) * nodes +
                            (bk * block_length + j)];
                B[pp * block_length + i][j] = graph[pp * block_length * block_length + (bk * block_length + i) * nodes +
                            (bj * block_length + j)];
                C[pp * block_length + i][j] = graph[pp * block_length * block_length + (bi * block_length + i) * nodes +
                            (bj * block_length + j)];

                item.barrier(access::fence_space::local_space);

                // Compute.
                BlockedFloydWarshallCompute(item, C, A, B, i, j, pp);

                // Copy back data to global memory.
                graph[pp * block_length * block_length + (bi * block_length + i) * nodes + (bj * block_length + j)] =
                C[pp * block_length + i][j];
                item.barrier(access::fence_space::local_space);
              }
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
void BlockedFloydWarshall(queue &q, int *graph) {
    int(*knob) = new int[10];
    int(*start) = new int[10];
    int(*end) = new int[10];
    int(*value) = new int[10];
    
    outfile.open("mutation.txt");
    
    int N = block_length * block_length;
    for (int k = 0; k<10; k++){
       knob[k] = rand()%3+1;
       srand(time(NULL) + rand());
       value[k] = rand();
       start[k] = rand()%(N);
       end[k] = rand()%(N-start[k])+start[k];
       outfile << knob[k] <<" "<< start[k] <<" "<<"  "<<end[k]<<" "<<value[k]<<std::endl;
    }
        
    outfile.close();
    cout << "generate mutation.\n";
    //for (int k = 0; k < 10; k++){
      buffer<int, 1> graph_buf(graph, 10 * block_length * block_length);
      buffer<int, 1> start_buf(start,10);
      buffer<int, 1> end_buf(end,10);
      buffer<int, 1> value_buf(value,10);
      buffer<int, 1> knob_buf(knob,10);
      //buffer<int, 1> k_buf(&k,1);
      q.submit([&](handler& h) {
         auto graph = graph_buf.get_access<access::mode::read_write>(h);
         auto start = start_buf.get_access<access::mode::read>(h);
         auto end = end_buf.get_access<access::mode::read>(h);
         auto value = value_buf.get_access<access::mode::read>(h);
         auto knob = knob_buf.get_access<access::mode::read>(h);
         //auto k = k_buf.get_access<access::mode::read>(h);
         h.single_task([=]() {
            //#pragma unroll 4
            for (int i=0;i<10;i++){
                for (int j=start[i]; j<end[i]; j++){
                //j=j+1-1;
                  mutate(&graph[i* block_length * block_length + j], knob[i], value[i]);
                }
            }
            });
      });//}
      cout << "mutation done.\n";
      for (int k = 0; k < 10; k++){
      for (int round = 0; round < block_count; round++) {
        BlockedFloydWarshallPhase1(q, graph, round);
        BlockedFloydWarshallPhase2(q, graph, round);
        BlockedFloydWarshallPhase3(q, graph, round);
      }
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

  try {
    queue q{d_selector, dpc_common::exception_handler};
    auto device = q.get_device();
    auto work_group_size = device.get_info<info::device::max_work_group_size>();
    auto block_size = block_length * block_length;
    //MyDeviceToHostSideChannel::Init(q);
    cout << "Device: " << device.get_info<info::device::name>() << "\n";

    if (work_group_size < block_size) {
      cout << "Work group size " << work_group_size
           << " is less than required size " << block_size << "\n";
      return -1;
    }

    // Allocate unified shared memory so that graph data is accessible to both
    // the CPU and the device (e.g., a GPU).
    int *graph = (int *)malloc(sizeof(int) * 10 * nodes * nodes);
    int *sequential = malloc_shared<int>(10 * nodes * nodes, q);
    int *parallel = malloc_shared<int>(10 * nodes * nodes, q);

    if ((graph == nullptr) || (sequential == nullptr) ||
        (parallel == nullptr)) {
      if (graph != nullptr) free(graph);
      if (sequential != nullptr) free(sequential, q);
      if (parallel != nullptr) free(parallel, q);

      cout << "Memory allocation failure.\n";
      return -1;
    }

    // Initialize directed graph.
    double t1;
    dpc_common::TimeInterval timer_p;
    t1 = timer_p.Elapsed();
    InitializeDirectedGraph(graph, file);
    double exec_time=timer_p.Elapsed()-t1;
    cout<<"IO time: "<<exec_time<<"\n";
  
    // Warm up the JIT.
    CopyGraph(parallel, graph);
    BlockedFloydWarshall(q, parallel);

    // Measure execution times.
    double elapsed_s = 0;
    double elapsed_p = 0;
    int i;

    cout << "Repeating computation " << repetitions
         << " times to measure run time ...\n";
    for (i = 0; i < repetitions; i++) {
      cout << "Iteration: " << (i + 1) << "\n";

      // Sequential all pairs shortest paths.
      CopyGraph(sequential, graph);

      dpc_common::TimeInterval timer_s;

      FloydWarshall(sequential);
      elapsed_s += timer_s.Elapsed();

      // Parallel all pairs shortest paths.
      CopyGraph(parallel, graph);

      dpc_common::TimeInterval timer_p;

      BlockedFloydWarshall(q, parallel);
      elapsed_p += timer_p.Elapsed();
  //    bool flag;
  //    MyDeviceToHostSideChannel::read(flag);
  //    if (flag) {
 //         int a = MyDeviceToHostSideChannel::read();
 //         if (a>kernel_max){kernel_max=a;}
  //    }
      // Verify two results are equal.
      if (!VerifyGraphsAreEqual(sequential, parallel)) {
        cout << "Failed to correctly compute all pairs shortest paths!\n";
        break;
      }
    }

    if (i == repetitions) {
      cout << "Successfully computed all pairs shortest paths in parallel!\n";

      elapsed_s /= repetitions;
      elapsed_p /= repetitions;
      std::ofstream outfile;
      outfile.open("exec_fpga_info.txt");
      outfile << kernel_max<<std::endl<<amax << std::endl << elapsed_s;
      outfile.close();

      cout << "Time sequential: " << elapsed_s << " sec\n";
      cout << "Time parallel: " << elapsed_p << " sec\n";
    }

    // Free unified shared memory.
    free(graph);
    free(sequential, q);
    free(parallel, q);
    exec_time=timer_p.Elapsed()-t1;
    cout<<"final time: "<<exec_time<<"\n";
    cout<<"Max:"<<value_max<<"\n";
    cout<<"Min:"<<value_min<<"\n";
    
  } catch (std::exception const &e) {
    cout << "An exception is caught while computing on device.\n";
    terminate();
  }

  return 0;
}

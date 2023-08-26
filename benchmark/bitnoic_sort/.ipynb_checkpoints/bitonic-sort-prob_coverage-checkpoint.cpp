//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================
//
// Bitonic Sort: this algorithm converts a randomized sequence of numbers into
// a bitonic sequence (two ordered sequences), and then merge these two ordered
// sequences into a ordered sequence. Bitonic sort algorithm is briefly
// described as followed:
//
// - First, it decomposes the randomized sequence of size 2**n into 2**(n-1)
// pairs where each pair consists of 2 consecutive elements. Note that each pair
// is a bitonic sequence.
// - Step 0: for each pair (sequence of size 2), the two elements are swapped so
// that the two consecutive pairs form  a bitonic sequence in increasing order,
// the next two pairs form the second bitonic sequence in decreasing order, the
// next two pairs form the third bitonic sequence in  increasing order, etc, ...
// . At the end of this step, we have 2**(n-1) bitonic sequences of size 2, and
// they follow an order increasing, decreasing, increasing, .., decreasing.
// Thus, they form 2**(n-2) bitonic sequences of size 4.
// - Step 1: for each new 2**(n-2) bitonic sequences of size 4, (each new
// sequence consists of 2 consecutive previous sequences), it swaps the elements
// so that at the end of step 1, we have 2**(n-2) bitonic sequences of size 4,
// and they follow an order: increasing, decreasing, increasing, ...,
// decreasing. Thus, they form 2**(n-3) bitonic sequences of size 8.
// - Same logic applies until we reach the last step.
// - Step n: at this last step, we have one bitonic sequence of size 2**n. The
// elements in the sequence are swapped until we have a sequence in increasing
// oder.
//
// In this implementation, a randomized sequence of size 2**n is given (n is a
// positive number). Unified Shared Memory (USM) is used for data management. At
// each stage, a part of step, the host redefines the ordered sequenes and sends
// data to the kernel. The kernel swaps the elements accordingly in parallel.
//
#include <math.h>
#include <iostream>
#include <string>
#include <optional>
#include "dpc_common.hpp"
#include "FakeIOPipes.hpp"
#include "HostSideChannel.hpp"

// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/<version>/include/dpc_common.hpp
#include "dpc_common.hpp"
typedef std::vector<int> IntVector; 
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif
int a_max = 0;
int a_min = 10000000;
using namespace sycl;
using namespace std;

struct DeviceToHostSideChannelID;
using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, int, true, 8>;

#define DEBUG 0

int write_file(const char *address, int size, int *graph){
    FILE* f = fopen(address,"w");
    
    for (int i = 0; i < size - 1; i++) {
      fprintf(f,"%d ", graph[i]);
    }
    fclose(f);
    return 0;
}

void ParallelBitonicSort(int data_gpu[], int n, queue &q) {
  // n: the exponent used to set the array size. Array size = power(2, n)
  int size = pow(2, n);
  int *a = data_gpu;

  std::optional<event> last_event;

  // step from 0, 1, 2, ...., n-1
  for (int step = 0; step < n; step++) {
    // for each step s, stage goes s, s-1, ..., 0
    for (int stage = step; stage >= 0; stage--) {
      int seq_len = pow(2, stage + 1);

      // Constant used in the kernel: 2**(step-stage).
      int two_power = 1 << (step - stage);

      // Offload the work to kernel.
      last_event = q.submit([&](auto &h) {
        if (last_event.has_value())
          h.depends_on(last_event.value());
        h.parallel_for(range<1>(size), [=](id<1> i) {
          // Assign the bitonic sequence number.
          int seq_num = i / seq_len;

          // Variable used to identified the swapped element.
          int swapped_ele = -1;

          // Because the elements in the first half in the bitonic
          // sequence may swap with elements in the second half,
          // only the first half of elements in each sequence is
          // required (seq_len/2).
          int h_len = seq_len / 2;

          if (i < (seq_len * seq_num) + h_len) {
              MyDeviceToHostSideChannel::write(i,flag);
              if (flag) flagV[0] = flagV[0] + 1;
              swapped_ele = i + h_len;
          }

          // Check whether increasing or decreasing order.
          int odd = seq_num / two_power;

          // Boolean variable used to determine "increasing" or
          // "decreasing" order.
          bool increasing = ((odd % 2) == 0);

          // Swap the elements in the bitonic sequence if needed
          if (swapped_ele != -1) {
            MyDeviceToHostSideChannel::write(i,flag);
            if (flag) flagV[0] = flagV[0] + 1;
            if (((a[i] > a[swapped_ele]) && increasing) ||
                ((a[i] < a[swapped_ele]) && !increasing)) {
              MyDeviceToHostSideChannel::write(i,flag);
              if (flag) flagV[0] = flagV[0] + 1;
              int temp = a[i];
              a[i] = a[swapped_ele];
              a[swapped_ele] = temp;
            }
          }
        });
      });
    }  // end stage
  }    // end step
  q.wait();
}

void ParallelBitonicSortBuffer(int data_gpu[], int n, queue &q, IntVector &flag) {
  // n: the exponent used to set the array size. Array size = power(2, n)
  int size = pow(2, n);

  buffer input(data_gpu, range(size));
  buffer flagout(flag);
  // step from 0, 1, 2, ...., n-1
  for (int step = 0; step < n; step++) {
    // for each step s, stage goes s, s-1, ..., 0
    for (int stage = step; stage >= 0; stage--) {
      int seq_len = pow(2, stage + 1);

      // Constant used in the kernel: 2**(step-stage).
      int two_power = 1 << (step - stage);

      // Offload the work to kernel.
      q.submit([&](auto &h) {
        accessor a(input, h);
        accessor flagV (flagout, h ,write_only);
        h.parallel_for(size, [=](id<1> i) {
          // Assign the bitonic sequence number.
          int seq_num = i / seq_len;
          
          // Variable used to identified the swapped element.
          int swapped_ele = -1;

          // Because the elements in the first half in the bitonic
          // sequence may swap with elements in the second half,
          // only the first half of elements in each sequence is
          // required (seq_len/2).
          int h_len = seq_len / 2;

          if (i < (seq_len * seq_num) + h_len) swapped_ele = i + h_len;

          // Check whether increasing or decreasing order.
          int odd = seq_num / two_power;

          // Boolean variable used to determine "increasing" or
          // "decreasing" order.
          bool increasing = ((odd % 2) == 0);
        
          // Swap the elements in the bitonic sequence if needed
          if (swapped_ele != -1) {
            if (((a[i] > a[swapped_ele]) && increasing) ||
                ((a[i] < a[swapped_ele]) && !increasing)) {
              int temp = a[i];
              a[i] = a[swapped_ele];
              a[swapped_ele] = temp;
            }
            if ((a[i] > a[swapped_ele]) && increasing){
                bool flag=true;
                MyDeviceToHostSideChannel::write(i,flag);
                if (flag) flagV[0] = flagV[0] + 1;
            }
          }
        });
      });
    }  // end stage
  }    // end step
}

// Loop over the bitonic sequences at each stage in serial.
void SwapElements(int step, int stage, int num_sequence, int seq_len,
                  int *array) {
  for (int seq_num = 0; seq_num < num_sequence; seq_num++) {
    int odd = seq_num / (pow(2, (step - stage)));
    bool increasing = ((odd % 2) == 0);

    int h_len = seq_len / 2;

    // For all elements in a bitonic sequence, swap them if needed
    for (int i = seq_num * seq_len; i < seq_num * seq_len + h_len; i++) {
      int swapped_ele = i + h_len;

      if (((array[i] > array[swapped_ele]) && increasing) ||
          ((array[i] < array[swapped_ele]) && !increasing)) {
        int temp = array[i];
        array[i] = array[swapped_ele];
        array[swapped_ele] = temp;
      }
    }  // end for all elements in a sequence
  }    // end all sequences
}

// Function sorts an array in serial using bitonic sort algorithm. The size of
// the array is indicated by the exponent n: the array size is 2 ** n.
inline void BitonicSort(int a[], int n) {
  // n: the exponent indicating the array size = 2 ** n.

  // step from 0, 1, 2, ...., n-1
  for (int step = 0; step < n; step++) {
    // for each step s, stage goes s, s-1,..., 0
    for (int stage = step; stage >= 0; stage--) {
      // Sequences (same size) are formed at each stage.
      int num_sequence = pow(2, (n - stage - 1));
      // The length of the sequences (2, 4, ...).
      int sequence_len = pow(2, stage + 1);

      SwapElements(step, stage, num_sequence, sequence_len, a);
    }
  }
}

// Function showing the array.
void DisplayArray(int a[], int array_size) {
  for (int i = 0; i < array_size; ++i) cout << a[i] << " ";
  cout << "\n";
}

void Usage(string prog_name, int exponent) {
  cout << " Incorrect parameters\n";
  cout << " Usage: " << prog_name << " n k \n\n";
  cout << " n: Integer exponent presenting the size of the input array. "
          "The number of element in\n";
  cout << "    the array must be power of 2 (e.g., 1, 2, 4, ...). Please "
          "enter the corresponding\n";
  cout << "    exponent betwwen 0 and " << exponent - 1 << ".\n";
  cout << " k: Seed used to generate a random sequence.\n";
}

int main(int argc, char *argv[]) {
  int n, seed, size;
  int exp_max = log2(numeric_limits<int>::max());
    
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
    std::ifstream read(file);
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 
  IntVector sum_f, flag;
  sum_f.resize(2);
  flag.resize(100);

  // Read parameters.
  try {
    n = 16;

    // Verify the boundary of acceptance.
    if (n < 0 || n >= exp_max) {
      Usage(argv[0], exp_max);
      return -1;
    }

    seed = 6;
    size = pow(2, n);
  } catch (...) {
    Usage(argv[0], exp_max);
    return -1;
  }

  cout << "\nArray size: " << size << ", seed: " << seed << "\n";

  // Create queue on implementation-chosen default device.
  queue q{d_selector, dpc_common::exception_handler};

  cout << "Device: " << q.get_device().get_info<info::device::name>() << "\n";

  // Memory allocated for host access only.
  int *data_cpu = (int *)malloc(size * sizeof(int));

  // USM allocation using malloc_shared: data stores a sequence of random
  // numbers.
  int *data_usm = malloc_shared<int>(size, q);

  // Memory allocated to store gpu results using buffer allocation
  int *data_gpu = (int *)malloc(size * sizeof(int));

  // Initialize the array randomly using a seed.
  srand(seed);
  
  int number;
  for (int i = 0; i < size; i++){
      if (read>>number){
          data_usm[i] = data_gpu[i] = data_cpu[i] = number;
          if (number>a_max) {a_max=number;}
          if (number<a_min) {a_min=number;}
      }
      else{
          data_usm[i] = data_gpu[i] = data_cpu[i] = rand() % 1000;
      }
  }
#if DEBUG
  cout << "\ndata before:\n";
  DisplayArray(data_usm, size);
#endif

  // Start timer
  dpc_common::TimeInterval t_par1;

  // Parallel sort using buffer allocation
  MyDeviceToHostSideChannel::Init(q);
  ParallelBitonicSortBuffer(data_gpu, n, q, sum_f);
  MyDeviceToHostSideChannel::Destroy(q);
  cout << "Kernel time using buffer allocation: " << t_par1.Elapsed()
       << " sec\n";

#if DEBUG
  cout << "\ndata_gpu after sorting using parallel bitonic sort:\n";
  DisplayArray(data_gpu, size);
#endif
    // Verify both bitonic sort algorithms in kernel and in CPU.
  bool pass = true;
  if (sum_f[0]>0){
  // Start timer
  dpc_common::TimeInterval t_ser;

  // Bitonic sort in CPU (serial)
  BitonicSort(data_cpu, n);

  cout << "CPU serial time: " << t_ser.Elapsed() << " sec\n";
        std::string path_to_output("../../HeteroFuzz/prototype/good-outputs");
        for (int j = 0; j < sum_f[0]; j++) {
        // Blocking read an int from the pipe
        //auto flag1 = MyDeviceToHostSideChannel::read(read_flag);
        //if (!read_flag){ break;}
        //else {
            std::cout<<"start reading.\n";
            flag[j] = MyDeviceToHostSideChannel::read();
            std::cout<<flag[j]<<" find an overflow\n";
            std::cout << "[" << flag[j] << "] " <<"\n";
            
            std::cout<<"read success.\n";
            if (flag[j]==-1){break;}
        //}
        }
  for (int i = 0; i < size - 1; i++) {
    // Validate the sequence order is increasing in both kernel and CPU.

    if ((data_gpu[i] > data_gpu[i + 1]) || (data_gpu[i] != data_cpu[i])) {
      pass = false;
      break;
    }
  }
      
  if (!pass) {
      cout << "Failed to correctly compute all pairs shortest paths!\n";
            write_file((path_to_output+"/-bug").c_str(), size, data_usm);
  }
        else {
            write_file((path_to_output+"/-prob").c_str(), size, data_usm);
        }
  }
  

  // Clean resources.
  free(data_cpu);
  free(data_usm, q);
  free(data_gpu);
          
  std::ofstream outfile;
  outfile.open("exec_fpga_info.txt");
  outfile << a_max << std::endl << a_min << std::endl << a_max <<std::endl<<t_par1.Elapsed() ;
  outfile.close();
  if (!pass) {
    cout << "\nFailed!\n";
    return -2;
  }

  cout << "\nSuccess!\n";
  return 0;
}
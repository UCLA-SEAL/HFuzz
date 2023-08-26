//==============================================================
// Iota is the equivalent of a Hello, World! sample for data parallel programs.
// Building and running the sample verifies that your development environment
// is setup correctly and demonstrates the use of the core features of DPC++.
// This sample runs on both CPU and GPU (or FPGA). When run, it computes on both
// the CPU and offload device, then compares results. If the code executes on
// both CPU and the offload device, the name of the offload device and a success
// message are displayed. And, your development environment is setup correctly!
//
// For comprehensive instructions regarding DPC++ Programming, go to
// https://software.intel.com/en-us/oneapi-programming-guide and search based on
// relevant terms noted in the comments.
//
// DPC++ material used in the code sample:
// •	A one dimensional array of data.
// •	A device queue, buffer, accessor, and kernel.
//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================
//Jiyuan: Undone
#include <CL/sycl.hpp>
#include <array>
#include <iostream>
#include "FakeIOPipes.hpp"
#include "HostSideChannel.hpp"
// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/<version>/include/dpc_common.hpp
#include "dpc_common.hpp"
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif

using namespace sycl;
using namespace std;
  int a_max = 0;
  int a_min = 10000000;
typedef std::vector<int> IntVector; 
struct DeviceToHostSideChannelID;
struct SideChannelMainKernel;
using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, int, true, 8>;

// Array type and data size for this example.
constexpr size_t array_size = 10000;
typedef array<int, array_size> IntArray;

//************************************
// Iota in DPC++ on device.
//************************************
void IotaParallel(queue &q, IntArray &a_array, IntArray &b_array, IntVector &flag) {
  // Create the range object for the array managed by the buffer.
  range num_items{a_array.size()};

  // Create buffer that hold the data shared between the host and the devices.
  // The buffer destructor is responsible to copy the data back to host when it
  // goes out of scope.
  buffer a_buf(a_array);
  buffer b_buf(b_array);
  buffer flagout(flag);

  // Submit a command group to the queue by a lambda function that contains the
  // data access permission and device computation (kernel).
  q.submit([&](auto &h) {
    // Create an accessor with write permission.
    accessor a(a_buf, h, read_only, no_init);
    accessor b(b_buf, h, write_only, no_init);
    accessor flagV (flagout, h ,write_only);

    // Use parallel_for to populate consecutive numbers starting with a
    // specified value in parallel on device. This executes the kernel.
    //    1st parameter is the number of work items to use.
    //    2nd parameter is the kernel, a lambda that specifies what to do per
    //    work item. The parameter of the lambda is the work item id.
    // DPC++ supports unnamed lambda kernel by default.
    h.parallel_for(num_items, [=](auto i) { 
        b[i] = a[i] + i;                    
        if ((a[i]>0) and (b[i]<0)){
          bool flag=true;
          MyDeviceToHostSideChannel::write(i,flag); //Undo, write need to be cleaned out
          if (flag) flagV[0] = flagV[0] + 1;
        }
                                          });
  });
}

int write_file(const char *address, IntArray &a){
    FILE* f = fopen(address,"w");
    
    for (int i = 0; i < a.size(); i++) {
      fprintf(f,"%d ", a[i]);
    }

    return 0;
}

void mutate(IntArray &a, int max_i){
    srand(time(NULL) + rand());
    int knob = rand()%5+1;

    int pos_i = rand()% max_i;
    
    if (knob==1){
        int value = rand();
        a[pos_i] = value;
        if (a[pos_i] > a_max){  
                a_max = a[pos_i];
            }
            if (a[pos_i] < a_min){  
                a_min = a[pos_i];
            }
    }
    else if (knob==2){
        a[pos_i] = 0;
    }
    else if (knob==3){
        int max_k = rand()% (max_i - pos_i);
        for (size_t k = pos_i; k < pos_i+max_k; k++){
            int value = rand();
            a[k] = value;
            if (a[k] > a_max){  
                a_max = a[k];
            }
            if (a[k] < a_min){  
                a_min = a[k];
            }
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

//************************************
// Demonstrate iota both sequential on CPU and parallel on device.
//************************************
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

  // Create array objects with "array_size" to store data.
  IntArray sequential, parallel, original;
  constexpr int value = 100000;
  
  IntVector flag, sum_f;
  int file_number = 0;
  sum_f.resize(2);
  flag.resize(100);
  for (int i = 0; i < 100; i++) flag[i] = 0;
    
  std::string file;
  if (argc > 1) file = argv[1];
  std::ifstream read(file);
    
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 

  int number;
  int i = 0;
  int a_max = 0;
  int a_min = 10000000;
  while ((read >> number) and (i<array_size)){
    original[i] = number;
    if (number>a_max) a_max = number;
    if (number<a_min) a_min = number;
    i = i + 1;
  }

  try {
    queue q(d_selector, dpc_common::exception_handler);
        sum_f[0]=0;
        // Print out the device information used for the kernel code.
        MyDeviceToHostSideChannel::Init(q);
        cout << "Running on device: "
             << q.get_device().get_info<info::device::name>() << "\n";
        cout << "Array size: " << parallel.size() << "\n";

        // Parallel iota in DPC++.
        IotaParallel(q, original, parallel, sum_f);
        
        int interested = 0;
        std::cout<<sum_f[0]<<" Overflow were found.\n";
        std::cout<<"finish reading.\n";
        std::cout<<"start destroying the channel.\n";
        MyDeviceToHostSideChannel::Destroy(q);
        std::cout<<"finish destroying.\n";
        
  } catch (std::exception const &e) {
    cout << "An exception is caught while computing on device.\n";
    terminate();
  }


  int indices[]{0, 1, 2, (sequential.size() - 1)};
  constexpr size_t indices_size = sizeof(indices) / sizeof(int);

  // Print out iota result.
  for (int i = 0; i < indices_size; i++) {
    int j = indices[i];
    if (i == indices_size - 1) cout << "...\n";
    cout << "[" << j << "]: " << j << " + " << original[j] << " = "
         << parallel[j] << "\n";
  }

  cout << "Successfully completed on device.\n";
  
  std::ofstream outfile;
  outfile.open("exec_fpga_info.txt");
  outfile << sum_f[0] << std::endl << sum_f[0] << std::endl << sum_f[0] << std::endl << sum_f[0];
  outfile.close();
    
    std::cout << "Test successfully completed for a round.\n";

  return 0;
}
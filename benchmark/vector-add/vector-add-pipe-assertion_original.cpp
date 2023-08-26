//==============================================================
// Vector Add is the equivalent of a Hello, World! sample for data parallel
// programs. Building and running the sample verifies that your development
// environment is setup correctly and demonstrates the use of the core features
// of DPC++. This sample runs on both CPU and GPU (or FPGA). When run, it
// computes on both the CPU and offload device, then compares results. If the
// code executes on both CPU and offload device, the device name and a success
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
// Copyright © Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================
#include <CL/sycl.hpp>
#include <vector>
#include <iostream>
#include <string>
#include "FakeIOPipes.hpp"
#include "HostSideChannel.hpp"
#include <fstream>


#if FPGA || FPGA_EMULATOR
#include <sycl/ext/intel/fpga_extensions.hpp>
#endif

struct DeviceToHostSideChannelID;
struct SideChannelMainKernel;
using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, int, true, 8>;
// Vector type and data size for this example.
size_t vector_size = 10000;
typedef std::vector<int> IntVector; 
typedef std::vector<size_t> LargeVector;

// Create an exception handler for asynchronous SYCL exceptions
static auto exception_handler = [](sycl::exception_list e_list) {
  for (std::exception_ptr const &e : e_list) {
    try {
      std::rethrow_exception(e);
    }
    catch (std::exception const &e) {
#if _DEBUG
      std::cout << "Failure" << std::endl;
#endif
      std::terminate();
    }
  }
};

//************************************
// Vector add in DPC++ on device: returns sum in 4th parameter "sum_parallel".
//************************************
void VectorAdd(queue &q, const LargeVector &a_vector, const LargeVector &b_vector,
               IntVector &sum_parallel, IntVector &flag) {
  // Create the range object for the vectors managed by the buffer.
  range<1> num_items{a_vector.size()};
  // Create buffers that hold the data shared between the host and the devices.
  // The buffer destructor is responsible to copy the data back to host when it
  // goes out of scope.
  buffer a_buf(a_vector);
  buffer b_buf(b_vector);
  buffer sum_buf(sum_parallel.data(), num_items);
  //buffer f_buf(flag.data(), num_items/2);
  MyDeviceToHostSideChannel::Init(q);
  // Submit a command group to the queue by a lambda function that contains the
  // data access permission and device computation (kernel).
  q.submit([&](handler &h) {
    // Create an accessor for each buffer with access permission: read, write or
    // read/write. The accessor is a mean to access the memory in the buffer.
    accessor a(a_buf, h, read_only);
    accessor b(b_buf, h, read_only);

    // The sum_accessor is used to store (with write permission) the sum data.
    accessor sum(sum_buf, h, write_only, no_init);
    //accessor flag_kernel(f_buf, h, write_only, no_init);
    // Use parallel_for to run vector addition in parallel on device. This
    // executes the kernel.
    //    1st parameter is the number of work items.
    //    2nd parameter is the kernel, a lambda that specifies what to do per
    //    work item. The parameter of the lambda is the work item id.
    // DPC++ supports unnamed lambda kernel by default.
    h.parallel_for(num_items, [=](auto i) { sum[i] = a[i] + b[i]; 
                                            if (((sum[i]<0)and(a[i]>=0)and(b[i]>=0)) or ((sum[i]>0)and(a[i]<=0)and(b[i]<=0))){
                                                MyDeviceToHostSideChannel::write(i);
                                                sum[0]=sum[0]+1;
                                                }
                                          }
                  );
    
  });
  q.wait();
    
    
  bool read_flag=true;
  int interested = 0;
  std::cout<<sum_parallel[0]<<" Overflow were found.\n";
  for (int i = 0; i < sum_parallel[0]; i++) {
            interested = 1;
            std::cout<<"start reading.\n";
            flag[i] = MyDeviceToHostSideChannel::read();
            std::cout<<flag[i]<<" find an overflow\n";
            std::cout<<"read success.\n";
            if (flag[i]==-1){break;}
        //}
      }
  std::cout<<"finish reading.\n";
  
  //return interested;    
}

//************************************
// Initialize the vector from 0 to vector_size - 1
//************************************
void InitializeVector(LargeVector &a) {
  for (size_t i = 0; i < a.size(); i++) a.at(i) = i;
  a.at(2) = (1<<30) + 2000000;
}

//************************************
// Demonstrate vector add both in sequential on CPU and in parallel on device.
//************************************
int main(int argc, char* argv[]) {
  // Change vector_size if it was passed as argument
  if (argc > 2) vector_size = std::stoi(argv[2]);
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

  // Create vector objects with "vector_size" to store the input and output data.
  IntVector flag, sum_parallel;
  LargeVector a, b, sum_sequential;
  a.resize(vector_size);
  b.resize(vector_size);
  flag.resize(vector_size/2);
  sum_sequential.resize(vector_size);
  sum_parallel.resize(vector_size);

  // Initialize input vectors with values from 0 to vector_size - 1, read file if necessary
  InitializeVector(a);
  InitializeVector(b);
  
  std::string file;
  if (argc > 1) file = argv[1];
  std::ifstream read(file);
    
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 
  int number;
  int i = 0;
  while ((read >> number) and (i<vector_size)){
    a.at(i) = number;
    i = i + 1;
  }
  i = 0;
  while ((read >> number) and (i<vector_size)){
    b.at(i) = number;
    i = i + 1;
  }
  read.close();
  a.at(0) = 0;
  b.at(0) = 0;
  a.at(2) = (1<<30) + 2000000;
  b.at(2) = (1<<30) + 2000000;
    
  try {
    queue q(d_selector, exception_handler);

    // Print out the device information used for the kernel code.
    std::cout << "Running on device: "
              << q.get_device().get_info<info::device::name>() << "\n";
    std::cout << "Vector size: " << a.size() << "\n";

    // Vector addition in DPC++
    VectorAdd(q, a, b, sum_parallel, flag);
      
  } catch (exception const &e) {
    std::cout << "An exception is caught for vector add.\n";
    std::terminate();
  }

  // Compute the sum of two vectors in sequential for validation.
  for (size_t i = 0; i < sum_sequential.size(); i++)
    sum_sequential.at(i) = a.at(i) + b.at(i);
  sum_parallel[0] = 0;
  int indices[]{0, 1, 2, (static_cast<int>(a.size()) - 1)};
  constexpr size_t indices_size = sizeof(indices) / sizeof(int);
    // Print out the result of vector add.
  for (int i = 0; i < indices_size; i++) {
    int j = indices[i];
    if (i == indices_size - 1) std::cout << "...\n";
    std::cout << "[" << j << "]: " << a[j] << " + " << b[j] << " = "
      << sum_parallel[j] << " " << sum_sequential[j]<<"\n";
  }


  // Verify that the two vectors are equal.  
  for (size_t i = 0; i < sum_sequential.size(); i++) {
    if (sum_parallel.at(i) != sum_sequential.at(i)) {
      std::cout << "Vector add failed on device.\n";
      return -1;
    }
  }


  a.clear();
  b.clear();
  sum_sequential.clear();
  sum_parallel.clear();

  std::cout << "Vector add successfully completed on device.\n";
  return 0;
}

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

// Vector type and data size for this example.
std::ofstream outfile;
const size_t vector_size = 10000;
typedef std::vector<int> IntVector; 
typedef std::vector<size_t> SizeTVector;
const int N = 10;

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

void mutate(int *a, int knob, int value){
    //srand(time(NULL) + rand());
    //int knob = rand()%4+1;
    
    if (knob==1){
        *a = value;
    }
    else if (knob==2){
        *a = 0;
    }
    else if (knob==3){
       // for (int i = 1; i < pos_i; i++){
            *a = *a * 100000;
        //}
    }
    else if (knob==4){
        //for (int i = 1; i < pos_i; i++){
            *a = *a / 100 - 100000;
            //if (a[i] < a_min){  
             //   a_min = a[i];
            //}
        //}
    }
}

//************************************
// Vector add in DPC++ on device: returns sum in 4th parameter "sum_parallel".
//************************************
void VectorAdd(queue &q, IntVector &a_vector, const IntVector &b_vector,
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
  // Submit a command group to the queue by a lambda function that contains the
  // data access permission and device computation (kernel).
  for (int i = 0; i < 10; i++) {
    int value = rand();
    int knob = rand()%4+1;
    int s = rand()%(vector_size);
    int e = rand()%(vector_size-s)+s;
    outfile.open("mutation.txt");
    outfile << knob <<" "<< s <<" "<<"  "<<e<<" "<<value<<std::endl;
    q.submit([&](handler &h) {
        accessor a(a_buf, h, write_only);
        //range<1> num{static_cast<int>(e-s)};
        h.parallel_for(e-s, [=](auto i) { 
            mutate(&a[i+s], knob, value);
         });
      });
  
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
        h.parallel_for(num_items, [=](auto i) { 
           #pragma unroll
           for (int j=0; j<N;j++) sum[i+j*vector_size] = a[i+j*vector_size] + b[i+j*vector_size]; 
        });
      });
  }


  //return interested;    
}

//************************************
// Initialize the vector from 0 to vector_size - 1
//************************************
void InitializeVector(IntVector &a) {
  for (size_t i = 0; i < a.size(); i++) a.at(i) = i;
  a.at(900) = (1<<30) + 2000000;
}

//************************************
// Demonstrate vector add both in sequential on CPU and in parallel on device.
//************************************
int main(int argc, char* argv[]) {
  // Change vector_size if it was passed as argument
    
  std::string output_file;
  //if (argc > 2) vector_size = std::stoi(argv[2]);
  // Create device selector for the device of your interest.
#if FPGA_EMULATOR
  // DPC++ extension: FPGA emulator selector on systems without FPGA card.
  ext::intel::fpga_emulator_selector d_selector;
  output_file = "fpga_simulation.txt";
#elif FPGA
  // DPC++ extension: FPGA selector on systems with FPGA card.
  ext::intel::fpga_selector d_selector;
#else
  // The default device selector will select the most performant device.
  default_selector d_selector;
  output_file = "gpu.txt";
#endif

  // Create vector objects with "vector_size" to store the input and output data.
  IntVector a, b, sum_parallel, flag;
  SizeTVector sum_sequential;
  a.resize(vector_size*N);
  b.resize(vector_size*N);
  flag.resize(vector_size/2);
  sum_sequential.resize(vector_size);
  sum_parallel.resize(vector_size*N);

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
  int a_max = 0;
  int a_min = 10000000;
  while ((read >> number) and (i<vector_size)){
    a.at(i) = number;
    if (number>a_max) a_max = number;
    if (number<a_min) a_min = number;
    i = i + 1;
  }
 
  i = 0;
  int b_max = 0;
  int b_min = 10000000;
  while ((read >> number) and (i<vector_size)){
    b.at(i) = number;
    if (number>b_max) b_max = number;
    if (number<b_min) b_min = number;
    i = i + 1;
  }
  read.close();
  int sum_max = 0;
  int sum_min = 10000000;
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

  // Verify that the two vectors are equal.  
  for (size_t i = 0; i < sum_sequential.size(); i++) {
    if (sum_parallel.at(i)>sum_max) sum_max = sum_parallel.at(i);
    if (sum_parallel.at(i)<sum_min) sum_min = sum_parallel.at(i);
    if (sum_parallel.at(i) != sum_sequential.at(i)) {
      std::cout << "Vector add failed on device.\n";
      //return -1;
    }
  }
  
  outfile.open("exec_fpga_info.txt");
  outfile << a_max << std::endl << a_min << std::endl << sum_max << std::endl << sum_min;
  outfile.close();
    
  outfile.open(output_file);

  int indices[]{0, 1, 2, (static_cast<int>(a.size()) - 1)};
  constexpr size_t indices_size = sizeof(indices) / sizeof(int);

  // Print out the result of vector add.
  //for (int i = 0; i < indices_size; i++) {
  //  int j = indices[i];
  //  if (i == indices_size - 1) std::cout << "...\n";
  //  std::cout << "[" << j << "]: " << a[j] << " + " << b[j] << " = "
  //    << sum_parallel[j] << " " << flag[i/2]<<"\n";
  //  outfile<< "[" << j << "]: " << a[j] << " + " << b[j] << " = "
  //    << sum_parallel[j] << " " << flag[i/2]<<"\n";
  //}
  outfile.close();
    
  a.clear();
  b.clear();
  sum_sequential.clear();
  sum_parallel.clear();

  std::cout << "Vector add successfully completed on device.\n";
  return 0;
}

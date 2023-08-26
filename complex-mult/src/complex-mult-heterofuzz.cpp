
//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================
#include <CL/sycl.hpp>
#include <iomanip>
#include <vector>
// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/<version>/include/dpc_common.hpp
#include "dpc_common.hpp"
#include "complex.hpp"

using namespace sycl;
using namespace std;



#if FPGA || FPGA_EMULATOR
#include <sycl/ext/intel/fpga_extensions.hpp>
#endif
// Number of complex numbers passing to the DPC++ code
static int num_elements = 10000;


// in_vect1 and in_vect2 are the vectors with num_elements complex nubers and
// are inputs to the parallel function
void DpcppParallel(queue &q, std::vector<Complex2> &in_vect1,
                   std::vector<Complex2> &in_vect2,
                   std::vector<Complex2> &out_vect ) {
  auto R = range(in_vect1.size());
  if (in_vect2.size() != in_vect1.size() || out_vect.size() != in_vect1.size()){ 
	  std::cout << "ERROR: Vector sizes do not  match"<< "\n";
	  return;
  }
  // Setup input buffers
  buffer bufin_vect1(in_vect1);
  buffer bufin_vect2(in_vect2);

  // Setup Output buffers 
  buffer bufout_vect(out_vect);

  std::cout << "Target Device: "
            << q.get_device().get_info<info::device::name>() << "\n";
  // Submit Command group function object to the queue
  q.submit([&](auto &h) {
    // Accessors set as read mode
    accessor V1(bufin_vect1,h,read_only);
    accessor V2(bufin_vect2,h,read_only);
    // Accessor set to Write mode
    accessor V3 (bufout_vect,h,write_only);
    h.parallel_for(R, [=](auto i) {
      // call the complex_mul function that computes the multiplication of the
      // complex number
      V3[i] = V1[i].complex_mul(V2[i]);
    });
  });
  q.wait_and_throw();
}
void DpcppScalar(std::vector<Complex2> &in_vect1,
                 std::vector<Complex2> &in_vect2,
                 std::vector<Complex2> &out_vect) {
  if ((in_vect2.size() != in_vect1.size()) || (out_vect.size() != in_vect1.size())){
	  std::cout<<"ERROR: Vector sizes do not match"<<"\n";
	  return;
  }		 
  for (int i = 0; i < in_vect1.size(); i++) {
    out_vect[i] = in_vect1[i].complex_mul(in_vect2[i]);
  }
}
// Compare the results of the two output vectors from parallel and scalar. They
// should be equal
int Compare(std::vector<Complex2> &v1, std::vector<Complex2> &v2) {
  int ret_code = 1;
  if(v1.size() != v2.size()){
	  ret_code = -1;
  }
  for (int i = 0; i < v1.size(); i++) {
    if (v1[i] != v2[i]) {
      ret_code = -1;
      break;
    }
  }
  return ret_code;
}

void InitializeCVector(vector<Complex2> &a){
    for(size_t i = 0; i < a.size(); i++){
        a.at(i).m_real_ = i;
        a.at(i).m_imag_ = (((i<<7) % 3) << 3) + i; 
    }
}

int main(int argc, char* argv[]) {
    std::string report_name = "gpu.txt";
    //Change size of complex vector, if specified in argv[2]
    if (argc > 2) num_elements = stoi(argv[2]);
    
    //For FPGA Emulation.
    #if FPGA_EMULATOR
    // DPC++ extension: FPGA emulator selector on systems without FPGA card.
    ext::intel::fpga_emulator_selector d_selector;
    report_name = "fpga_simulation.txt";
    #elif FPGA
    // DPC++ extension: FPGA selector on systems with FPGA card.
    ext::intel::fpga_selector d_selector;
    report_name = "fpga_simulation.txt";
    #else
    // The default device selector will select the most performant device.
    default_selector d_selector;
    #endif

    // Declare your Input and Output vectors of the Complex2 class
    // Resize, if needed
    // Initialize to avoid undefined behavior
    vector<Complex2> input_vect1;            input_vect1.resize(num_elements);          InitializeCVector(input_vect1);
    vector<Complex2> input_vect2;            input_vect2.resize(num_elements);          InitializeCVector(input_vect2);
    vector<Complex2> out_vect_parallel;      out_vect_parallel.resize(num_elements);
    vector<Complex2> out_vect_scalar;        out_vect_scalar.resize(num_elements);

    //I/Os
    std::string file;
    if(argc > 1) file = argv[1];
    std::ifstream read(file);

    if(!read.is_open()){
        std::cout << "Could not open the input file. \n";
    }
    int number;
    int i = 0;
    bool real = true;
    int a_min_real = INT_MAX; int a_min_img = INT_MAX;
    int a_max_real = INT_MIN; int a_max_img = INT_MIN;
    while((read >> number) and (i/2 < num_elements)){
        if(real){
            input_vect1.at(i/2).m_real_ = number;
            if(number>a_max_real) a_max_real = number;
            if(number<a_min_real) a_min_real = number;
        }else{
            input_vect1.at(i/2).m_imag_ = number;
            if(number>a_max_img) a_max_img = number;
            if(number<a_min_img) a_min_img = number;
        }
        real = !real;
        i++;
    }

    i = 0; real = true;
    int b_min_real = INT_MAX; int b_min_img = INT_MAX;
    int b_max_real = INT_MIN; int b_max_img = INT_MIN;
    while((read >> number) and (i/2 < num_elements)){
        if(real){
            input_vect2.at(i/2).m_real_ = number;
            if(number>b_max_real) b_max_real = number;
            if(number<b_min_real) b_min_real = number;
        }else{
            input_vect2.at(i/2).m_imag_ = number;
            if(number>b_max_img) b_max_img = number;
            if(number<b_min_img) b_min_img = number;
        }
        real = !real;
        i++;
    }

    read.close();
    try {
        queue q(d_selector, dpc_common::exception_handler);
        // Call the DpcppParallel with the required inputs and outputs
        DpcppParallel(q, input_vect1, input_vect2, out_vect_parallel);
    } catch (...) {
        // some other exception detected
        std::cout << "Failure" << std::endl;
        std::terminate();
    }

    //std::cout<<"givemesomething"<<report_name<<std::endl;
    std::cout
        << "****************************************Multiplying Complex numbers "
            "in Parallel********************************************************"
        << std::endl;
    // Print the outputs of the Parallel function
    int indices[]{0, 1, 2, 3, 4, (num_elements - 1)};
    constexpr size_t indices_size = sizeof(indices) / sizeof(int);

    for (int i = 0; i < indices_size; i++) {
        int j = indices[i];
        if (i == indices_size - 1) std::cout << "...\n";
        std::cout << "[" << j << "] " << input_vect1[j] << " * " << input_vect2[j]
                << " = " << out_vect_parallel[j] << "\n";
    }
    // Call the DpcppScalar function with the required input and outputs
    DpcppScalar(input_vect1, input_vect2, out_vect_scalar);

    // Compare the outputs from the parallel and the scalar functions. They should
    // be equal

    std::ofstream outfile;
    outfile.open(report_name);
    outfile << a_max_real << std::endl << a_min_real << std::endl << a_max_img << std::endl << a_min_img << std::endl;
    outfile << b_max_real << std::endl << b_min_real << std::endl << b_max_img << std::endl << b_min_img << std::endl;
    outfile.close();

    int ret_code = Compare(out_vect_parallel, out_vect_scalar);
    if (ret_code == 1) {
        std::cout << "Complex multiplication successfully run on the device"
                << "\n";
    } else
        std::cout
            << "*********************************************Verification Failed. Results are "
            "not matched**************************"
            << "\n";

    return 0;
}
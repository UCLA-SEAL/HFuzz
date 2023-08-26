
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
#include "Complex.hpp"
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif
//Undone
using namespace sycl;
using namespace std;
  int a_max = 0;
  int a_min = 10000000;

// Number of complex numbers passing to the DPC++ code
static const int num_elements = 100000;
typedef std::vector<int> IntVector; 

class CustomDeviceSelector : public device_selector {
 public:
  CustomDeviceSelector(std::string vendorName) : vendorName_(vendorName){};
  int operator()(const device &dev) const override {
    int device_rating = 0;
    // In the below code we are querying for the custom device specific to a
    // Vendor and if it is a GPU device we are giving the highest rating. The
    // second preference is given to any GPU device and the third preference is
    // given to CPU device.
    if (dev.is_gpu() & (dev.get_info<info::device::name>().find(vendorName_) !=
                        std::string::npos))
      device_rating = 3;
    else if (dev.is_gpu())
      device_rating = 2;
    else if (dev.is_cpu())
      device_rating = 1;
    return device_rating;
  };

 private:
  std::string vendorName_;
};

int write_file(const char *address, std::vector<Complex2> &a, std::vector<Complex2> &b){
    FILE* f = fopen(address,"w");
    
    for (int i = 0; i < a.size(); i++) {
      fprintf(f,"%d %d", a[i].real(), a[i].imag());
    }
    for (int i = 0; i < b.size(); i++) {
      fprintf(f,"%d %d", b[i].real(), b[i].imag());
    }
    return 0;
}

void mutate(Complex2 &a, int knob, int value){
    
    if (knob==1){
        a = Complex2(value, value+2);
    }
    else if (knob==2){
        a = Complex2(23124,12312);
    }
    else if (knob==3){
       a = Complex2(a.real()*20+100, a.imag()*20+100);
    }
    else if (knob==4){
       a = Complex2(a.real()/20-100, a.imag()/20-100);
    }
}

// in_vect1 and in_vect2 are the vectors with num_elements complex nubers and
// are inputs to the parallel function
void DpcppParallel(queue &q, std::vector<Complex2> &in_vect1,
                   std::vector<Complex2> &in_vect2,
                   std::vector<Complex2> &out_vect, IntVector &flag) {
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
  buffer flagout(flag);
  std::cout << "Target Device: "
            << q.get_device().get_info<info::device::name>() << "\n";
  // Submit Command group function object to the queue
  q.submit([&](auto &h) {
    // Accessors set as read mode
    accessor V1(bufin_vect1,h,read_only);
    accessor V2(bufin_vect2,h,read_only);
    // Accessor set to Write mode
    accessor V3 (bufout_vect,h,write_only);
    accessor flagV (flagout, h ,write_only);
    h.parallel_for(R, [=](auto i) {
      // call the complex_mul function that computes the multiplication of the
      // complex number
      V3[i] = V1[i].complex_mul(V2[i]);
      if (not (V2[i].complex_limit() and V1[i].complex_limit())) {
         flagV[0] = flagV[0] + 1;
         flagV[flagV[0]] = i;
      }
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
      std::cout<<"Error:"<<i<<"\n";
      std::cout << v1[i] << " / " << v2[i] << "\n";
      ret_code = i;
      break;
    }
  }
  return ret_code;
}


int main(int argc, char* argv[]) {
  // Declare your Input and Output vectors of the Complex2 class
  vector<Complex2> input_vect1;
  vector<Complex2> input_vect2;
  vector<Complex2> out_vect_parallel[10];
  vector<Complex2> out_vect_scalar;
  
  IntVector sum_f, flag;
  int file_number = 0;
  sum_f.resize(100);
  flag.resize(100);
  for (int i = 0; i < 100; i++) flag[i] = 0;
  
  std::string file;
  if (argc > 1) file = argv[1];
  std::ifstream read(file);
  std::ofstream outfile;
    
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 
  int number;
  int i = 0;
  while ((read >> number) and (i<num_elements)){
    input_vect1.push_back(Complex2(number, number + 2));
    if (number>a_max) a_max = number;
    if (number<a_min) a_min = number;
    i = i + 1;
  }
  while (i<num_elements){
      input_vect1.push_back(Complex2(i, i+2));
      i = i + 1;
  }
 
  i = 0;
  int b_max = 0;
  int b_min = 10000000;
  while ((read >> number) and (i<num_elements)){
    input_vect2.push_back(Complex2(number, number + 2));
    if (number>b_max) b_max = number;
    if (number<b_min) b_min = number;
    i = i + 1;
  }
    
  while (i<num_elements){
      input_vect2.push_back(Complex2(i, i+2));
      i = i + 1;
  }

  for (int i = 0; i < num_elements; i++) {
    out_vect_parallel[0].push_back(Complex2(0, 0));
    out_vect_scalar.push_back(Complex2(0, 0));
  }
  #if FPGA_EMULATOR
  // DPC++ extension: FPGA emulator selector on systems without FPGA card.
    ext::intel::fpga_emulator_selector d_selector;
  #else
    std::string vendor_name = "Intel";
    CustomDeviceSelector d_selector(vendor_name);
  #endif  
  // Initialize your Input and Output Vectors. Inputs are initialized as below.
  // Outputs are initialized with 0
  try {
    // Pass in the name of the vendor for which the device you want to query
    //std::string vendor_name = "Intel";
    // std::string vendor_name = "AMD";
    // std::string vendor_name = "Nvidia";
    // queue constructor passed exception handler
    //CustomDeviceSelector selector(vendor_name);
    queue q(d_selector, dpc_common::exception_handler);
    
      int knob[10];
      int start[10];
      int end[10];
      int value[10];
        
        outfile.open("mutation.txt");
                     
        for (int k = 0; k<10; k++){
            knob[k] = rand()%4+1;
            srand(time(NULL) + rand());
            value[k] = rand();
            start[k] = rand()%(num_elements);
            end[k] = rand()%(num_elements-start[k])+start[k];
            outfile << knob[k] <<" "<< start[k] <<" "<<"  "<<end[k]<<" "<<value[k]<<std::endl;
        }
        
        outfile.close();
    int R = input_vect1.size();
std::cout<<"mutation recorded.\n";
        buffer bufin_vect1(input_vect1);
          // Setup input buffers
        buffer bufin_vect2(input_vect2);
        buffer start_buf(reinterpret_cast<int *>(start), range(10));
        buffer end_buf(reinterpret_cast<int *>(end), range(10));
        buffer knob_buf(reinterpret_cast<int *>(knob), range(10));
        buffer value_buf(reinterpret_cast<int *>(value), range(10));
        sum_f[0] = 0;
    // Call the DpcppParallel with the required inputs and outputs
        std::cout<<"pipe init.\n";
        q.submit([&](handler& h) {
           accessor a(bufin_vect2, h,read_write);
         
            auto start = start_buf.get_access<access::mode::read>(h);
            auto end = end_buf.get_access<access::mode::read>(h);
            auto value = value_buf.get_access<access::mode::read>(h);
            auto knob = knob_buf.get_access<access::mode::read>(h);
        
         h.single_task([=]() {
            //#pragma unroll 4
            for (int i=0;i<10;i++){
                for (int j=start[i]; j<end[i]; j++){
                  mutate(a[j], knob[i], value[i]);
                }
              }
            });
          });
        
        std::cout<<"start execution.\n";
        
        DpcppParallel(q, input_vect1, input_vect2, out_vect_parallel[0], sum_f);
        
        int interested = 0;
        std::cout<<sum_f[0]<<" Overflow were found.\n";
        for (int i = 0; i < sum_f[0]; i++) {
        // Blocking read an int from the pipe
        //auto flag1 = MyDeviceToHostSideChannel::read(read_flag);
        //if (!read_flag){ break;}
        //else {
            interested = 1;
            std::cout<<"start reading.\n";
            flag[i] = sum_f[i+1];
            std::cout<<flag[i]<<" find an overflow\n";
              std::cout << "[" << flag[i] << "] " << input_vect1[flag[i]] << " * " << input_vect2[flag[i]];
            
            std::cout<<"read success.\n";
            if (flag[i]==-1){break;}
        //}
        }
        std::cout<<"finish reading.\n";
        
  } catch (...) {
    // some other exception detected
    std::cout << "Failure" << std::endl;
    std::terminate();
  }

  std::cout
      << "****************************************Multiplying Complex numbers "
         "in Parallel********************************************************"
      << std::endl;
  // Print the outputs of the Parallel function
  int indices[]{0, 1, 2, 3, (num_elements - 1)};
  constexpr size_t indices_size = sizeof(indices) / sizeof(int);

    
  // Call the DpcppScalar function with the required input and outputs
  DpcppScalar(input_vect1, input_vect2, out_vect_scalar);

  // Compare the outputs from the parallel and the scalar functions. They should
  // be equal

  int ret_code = Compare(out_vect_parallel[9], out_vect_scalar);
  if (ret_code == 1) {
    std::cout << "Complex multiplication successfully run on the device"
              << "\n";
  } else
    std::cout
        << "*********************************************Verification Failed. Results are "
           "not matched**************************"
        << "\n";
  
  outfile.open("exec_fpga_info.txt");
  outfile << a_max << std::endl << a_min << std::endl << b_max << std::endl << b_min;
  outfile.close();
  return 0;
}

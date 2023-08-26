 //==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================

#include <CL/sycl.hpp>
#include "GSimulation.hpp"

// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/latest/include/dpc_common.hpp
#include "dpc_common.hpp"
#include "FakeIOPipes.hpp"
#include "HostSideChannel.hpp"
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif
#include <math.h>
#include <stdlib.h> 

struct DeviceToHostSideChannelID;
struct SideChannelMainKernel;
struct DeviceToHostSideTermChannelID;
using DeviceToHostMax_distance_sqr = DeviceToHostSideChannel<DeviceToHostSideChannelID, RealType, true, 512>;
using DeviceToHostMin_distance_sqr = DeviceToHostSideChannel<DeviceToHostSideTermChannelID, RealType, true, 512>;
using MyDeviceToHostSideChannel = DeviceToHostSideChannel<DeviceToHostSideChannelID, RealType, true, 512>;
std::ofstream outfile;
using namespace sycl;

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

/* Default Constructor for the GSimulation class which sets up the default
 * values for number of particles, number of integration steps, time steo and
 * sample frequency */
GSimulation::GSimulation() {
  std::cout << "==============================="
            << "\n";
  std::cout << " Initialize Gravity Simulation"
            << "\n";
  set_npart(16000);
  set_nsteps(10);
  set_tstep(0.1);
  set_sfreq(1);
}

/* Set the number of particles */
void GSimulation::SetNumberOfParticles(int N) { set_npart(N); }

/* Set the number of integration steps */
void GSimulation::SetNumberOfSteps(int N) { set_nsteps(N); }

/* Initialize the position of all the particles using random number generator
 * between 0 and 1.0 */
void GSimulation::InitPos(std::string file) {
  
  std::ifstream read(file);
  if (!read.is_open()){
      std::cout << "Could not open the input file.\n";
  } 
    
  std::random_device rd;  // random number generator
  std::mt19937 gen(42);
  std::uniform_real_distribution<RealType> unif_d(0, 1.0);

  for (int i = 0; i < get_npart(); ++i) {
    float number;
    particles_[i].pos[0] = unif_d(gen);
    particles_[i].pos[1] = unif_d(gen);
    particles_[i].pos[2] = unif_d(gen);
    if (read >> number){
        particles_[i].pos[0] = number;
    }
    if (read >> number){
        particles_[i].pos[1] = number;
    }
    if (read >> number){
        particles_[i].pos[2] = number;
    }
  }
}

/* Initialize the velocity of all the particles using random number generator
 * between -1.0 and 1.0 */
void GSimulation::InitVel() {
  std::random_device rd;  // random number generator
  std::mt19937 gen(42);
  std::uniform_real_distribution<RealType> unif_d(-1.0, 1.0);

  for (int i = 0; i < get_npart(); ++i) {
    particles_[i].vel[0] = unif_d(gen) * 1.0e-3f;
    particles_[i].vel[1] = unif_d(gen) * 1.0e-3f;
    particles_[i].vel[2] = unif_d(gen) * 1.0e-3f;
  }
}

/* Initialize the acceleration of all the particles to 0 */
void GSimulation::InitAcc() {
  for (int i = 0; i < get_npart(); ++i) {
    particles_[i].acc[0] = 0.f;
    particles_[i].acc[1] = 0.f;
    particles_[i].acc[2] = 0.f;
  }
}

/* Initialize the mass of all the particles using a random number generator
 * between 0 and 1 */
void GSimulation::InitMass() {
  RealType n = static_cast<RealType>(get_npart());
  std::random_device rd;  // random number generator
  std::mt19937 gen(42);
  std::uniform_real_distribution<RealType> unif_d(0.0, 1.0);

  for (int i = 0; i < get_npart(); ++i) {
    particles_[i].mass = n * unif_d(gen);
  }
}

void mutate(Particle &a, int knob, int value){

    
    if (knob==1){
        a.pos[0] = value;
        a.pos[1] = value;
        a.pos[2] = value;
    }
    else if (knob==2){
        a.pos[0] = 0;
        a.pos[1] = 0;
        a.pos[2] = 0;
    }

    else if (knob==3){
        a.pos[0] = a.pos[0] * 100000;
    }
    else if (knob==4){
        a.pos[0] = a.pos[0]/ 100 - 100000;

    }
}

/* This function does the simulation logic for Nbody */
void GSimulation::Start(std::string file) {
  RealType dt = get_tstep();
  int n = get_npart();
  particles_.resize(n);
  
  InitPos(file);
  InitVel();
  InitAcc();
  InitMass();

  PrintHeader();

  total_time_ = 0.;

  constexpr float kSofteningSquared = 1e-14f;
  // prevents explosion in the case the particles are really close to each other
  constexpr float kG = 6.67259e-11f;
  double gflops = 1e-9 * ((11. + 18.) * n * n + n * 19.);
  int nf = 0;
  double av = 0.0, dev = 0.0;
  // Create global range
  auto r = range<1>(n);
  // Create local range
  auto lr = range<1>(128);
  // Create ndrange 
  auto ndrange = nd_range<1>(r, lr);
  // Create a queue to the selected device and enabled asynchronous exception
  // handling for that queue
  queue q(d_selector, dpc_common::exception_handler);
  // Create SYCL buffer for the Particle array of size "n"
  buffer pbuf(particles_.data(), r,
              {cl::sycl::property::buffer::use_host_ptr()});
  // Allocate energy using USM allocator shared
  RealType *energy = malloc_shared<RealType>(1,q);
    
  int knobarray[10];
  int valuearray[10];
  int startarray[10];
  int endarray[10];
    
  buffer<int, 1> knobbuf(knobarray,10);
  buffer<int, 1> valuebuf(valuearray,10);
  buffer<int, 1> startbuf(startarray,10);
  buffer<int, 1> endbuf(endarray,10);
    
  float acc_max = 0;
  float acc_min = 0;
  dpc_common::TimeInterval t0;
  std::cout <<"\n"<< "mutation start";
  int nsteps = get_nsteps();
  outfile.open("mutation.txt");
                     
        for (int k = 0; k<10; k++){
            std::cout <<"\n"<< "mutation for number:"<<k;
            knobarray[k] = rand()%4+1;
            srand(time(NULL) + rand());
            valuearray[k] = rand();
            startarray[k] = rand()%(n);
            endarray[k] = rand()%(n-startarray[k])+startarray[k];
            outfile << knobarray[k] <<" "<< startarray[k] <<" "<<"  "<<endarray[k]<<" "<<valuearray[k]<<std::endl;
        }
        
        outfile.close();
  std::cout <<"\n"<< "mutation finished";
    
  // Looping across integration steps
    *energy = 0.f;
    RealType dxmonmax;
    RealType dymonmax;
    RealType dzmonmax;
    RealType dxmonmin;
    RealType dymonmin;
    RealType dzmonmin;
    RealType distance_sqrmonmax;
    RealType distance_sqrmonmin;
    dpc_common::TimeInterval ts0;
    // Submitting first kernel to device which computes acceleration of all
    // particles
    DeviceToHostMax_distance_sqr::Init(q);
    DeviceToHostMin_distance_sqr::Init(q);
      
    q.submit([&](handler& h) {
        auto p = pbuf.get_access(h);
        auto knob = knobbuf.get_access(h);
        auto start = startbuf.get_access(h);
        auto value = valuebuf.get_access(h);
        auto end = endbuf.get_access(h);
        //
        
        h.parallel_for(10, [=](nd_item<1> it) {
           auto i = it.get_global_id();
           //#pragma unroll 4
           for (int j=start[i]; j<end[i]; j++){
               mutate(p[j], knob[i], value[i]);
           }
            
           RealType dx, dy, dz;
           RealType distance_sqr = 0.0f;
           RealType distance_sqrmax, distance_sqrmin;
           
           #pragma unroll 5
           for (int i=0; i<n; i++){
            for (int j = 0; j < n; j++) {

               dx = p[j].pos[0] - p[i].pos[0];  // 1flop
               dy = p[j].pos[1] - p[i].pos[1];  // 1flop
               dz = p[j].pos[2] - p[i].pos[2];  // 1flop

               distance_sqr = dx * dx + dy * dy + dz * dz+ kSofteningSquared;  // 6flops
               if (distance_sqr>distance_sqrmax) {distance_sqrmax=distance_sqr;}
               if (distance_sqr<distance_sqrmin) {distance_sqrmin=distance_sqr;}
   
               p[i].acc[0] += dx * kG * p[j].mass/distance_sqr; 
               p[i].acc[1] += dy * kG * p[j].mass/distance_sqr;
               p[i].acc[1] += dz * kG * p[j].mass/distance_sqr; 
            }
            p[i].vel[0] += p[i].acc[0] * dt;  // 2flops
            p[i].vel[1] += p[i].acc[1] * dt;  // 2flops
            p[i].vel[2] += p[i].acc[2] * dt;  // 2flops
            bool flag=true;
            DeviceToHostMax_distance_sqr::write(distance_sqrmax,flag);
            DeviceToHostMin_distance_sqr::write(distance_sqrmin,flag);
           }
          
         #pragma unroll 5   
         for (int i=0; i<n; i++){
             p[i].pos[0] += p[i].vel[0] * dt;  // 2flops
             p[i].pos[1] += p[i].vel[1] * dt;  // 2flops
             p[i].pos[2] += p[i].vel[2] * dt;  // 2flops

             energy[0] += (p[i].mass *
                (p[i].vel[0] * p[i].vel[0] + p[i].vel[1] * p[i].vel[1] +
                 p[i].vel[2] * p[i].vel[2]));
         } 
        });
    }).wait_and_throw();
    std::cout <<"\n"<< "kernel job ends.";
    
    bool flag=true;
        auto acpt = DeviceToHostMax_distance_sqr::read(flag);
        if (flag){
            auto acpt = DeviceToHostMax_distance_sqr::read();
            if (acpt>distance_sqrmonmax) {distance_sqrmonmax = acpt;}
        }
    flag=true;
        acpt = DeviceToHostMin_distance_sqr::read(flag);
        if (flag){
            auto acpt = DeviceToHostMin_distance_sqr::read();
            if (acpt<distance_sqrmonmin) {distance_sqrmonmin = acpt;}
    }
    DeviceToHostMax_distance_sqr::Destroy(q);
    DeviceToHostMin_distance_sqr::Destroy(q);
    int s = 1;
    kenergy_ = 0.5 * (*energy);
    double elapsed_seconds = ts0.Elapsed();
      nf += 1;
      std::cout << " " << std::left << std::setw(8) << s << std::left
                << std::setprecision(5) << std::setw(8) << s * get_tstep()
                << std::left << std::setprecision(5) << std::setw(12)
                << kenergy_ << std::left << std::setprecision(5)
                << std::setw(12) << elapsed_seconds << std::left
                << std::setprecision(5) << std::setw(12)
                << gflops * get_sfreq() / elapsed_seconds << "\n";
      if (nf > 2) {
        av += gflops * get_sfreq() / elapsed_seconds;
        dev += gflops * get_sfreq() * gflops * get_sfreq() /
               (elapsed_seconds * elapsed_seconds);
      }

    for (int i=0; i<n; i++){
        if (particles_[i].acc[0]>acc_max) {acc_max=particles_[i].acc[0];}
        if (particles_[i].acc[1]>acc_max) {acc_max=particles_[i].acc[1];}
        if (particles_[i].acc[2]>acc_max) {acc_max=particles_[i].acc[2];}
             
        if (particles_[i].acc[0]<acc_min) {acc_min=particles_[i].acc[0];}
        if (particles_[i].acc[1]<acc_min) {acc_min=particles_[i].acc[1];}
        if (particles_[i].acc[2]<acc_min) {acc_min=particles_[i].acc[2];}
    }
    if (-acc_min>acc_max) {acc_max = -acc_min;}
    outfile.open("exec_fpga_info.txt");
    outfile << acc_max << std::endl << total_time_ << std::endl;
    outfile <<" "<< dxmonmax<<" "<< dxmonmin <<" "<< dymonmax<<" "<< dymonmin <<" "<<dzmonmax<<" "<< dzmonmin<<" "<<distance_sqrmonmax<<" "<<distance_sqrmonmin << std::endl;
    outfile.close();
  
  total_time_ = t0.Elapsed();
  total_flops_ = gflops * get_nsteps();
  av /= (double)(nf - 2);
  dev = sqrt(dev / (double)(nf - 2) - av * av);
  std::cout <<"\n";
  std::cout << "# Total Time (s)     : " << total_time_ << "\n";
  std::cout << "# Average Performance : " << av << " +- " << dev << "\n";
  std::cout << "==============================="
            << "\n";
}

/* Print the headers for the output */
void GSimulation::PrintHeader() {
  std::cout << " nPart = " << get_npart() << "; "
            << "nSteps = " << get_nsteps() << "; "
            << "dt = " << get_tstep() << "\n";

  std::cout << "------------------------------------------------"
            << "\n";
  std::cout << " " << std::left << std::setw(8) << "s" << std::left
            << std::setw(8) << "dt" << std::left << std::setw(12) << "kenergy"
            << std::left << std::setw(12) << "time (s)" << std::left
            << std::setw(12) << "GFLOPS"
            << "\n";
  std::cout << "------------------------------------------------"
            << "\n";
}
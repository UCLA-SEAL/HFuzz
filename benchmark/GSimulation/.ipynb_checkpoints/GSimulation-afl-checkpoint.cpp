//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================

#include "GSimulation.hpp"
#include <fstream>
#include <math.h> 
// dpc_common.hpp can be found in the dev-utilities include folder.
// e.g., $ONEAPI_ROOT/dev-utilities/latest/include/dpc_common.hpp
//#include "dpc_common.hpp"
#if FPGA || FPGA_EMULATOR
  #include <sycl/ext/intel/fpga_extensions.hpp>
#endif

//using namespace sycl;
using namespace std;
    // Create device selector for the device of your interest.
//#if FPGA_EMULATOR
  // DPC++ extension: FPGA emulator selector on systems without FPGA card.
//  ext::intel::fpga_emulator_selector d_selector;
//#elif FPGA
  // DPC++ extension: FPGA selector on systems with FPGA card.
//  ext::intel::fpga_selector d_selector;
//#else
  // The default device selector will select the most performant device.
//  default_selector d_selector;
//#endif

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
  std::uniform_real_distribution<float> unif_d(0, 1.0);

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
  std::uniform_real_distribution<float> unif_d(-1.0, 1.0);

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
  float n = static_cast<float>(get_npart());
  std::random_device rd;  // random number generator
  std::mt19937 gen(42);
  std::uniform_real_distribution<float> unif_d(0.0, 1.0);

  for (int i = 0; i < get_npart(); ++i) {
    particles_[i].mass = n * unif_d(gen);
  }
}

/* This function does the simulation logic for Nbody */
void GSimulation::Start(std::string file) {
  float dt = get_tstep();
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
  auto r = n;
  // Create local range
  auto lr = 128;
  // Create ndrange 
  //auto ndrange = nd_range<1>(r, lr);
  // Create a queue to the selected device and enabled asynchronous exception
  // handling for that queue
  //queue q(d_selector, dpc_common::exception_handler);
  // Create SYCL buffer for the Particle array of size "n"
  //buffer pbuf(particles_.data(), r,
  //            {cl::sycl::property::buffer::use_host_ptr()});
  // Allocate energy using USM allocator shared
  float energy = 0.f;
  

  //dpc_common::TimeInterval t0;
  int nsteps = get_nsteps();
  // Looping across integration steps
  for (int s = 1; s <= nsteps; ++s) {
    //dpc_common::TimeInterval ts0;
    // Submitting first kernel to device which computes acceleration of all
    // particles
    //q.submit([&](handler& h) {
      // auto p = pbuf.get_access(h);
       //h.parallel_for(ndrange, [=](nd_item<1> it) {
	 //auto i = it.get_global_id();
      for (int i =0;i<n;i++){
         float acc0 = particles_[i].acc[0];
         float acc1 = particles_[i].acc[1];
         float acc2 = particles_[i].acc[2];
         for (int j = 0; j < n; j++) {
           float dx, dy, dz;
           float distance_sqr = 0.0f;
           float distance_inv = 0.0f;

           dx = particles_[j].pos[0] - particles_[i].pos[0];  // 1flop
           dy = particles_[j].pos[1] - particles_[i].pos[1];  // 1flop
           dz = particles_[j].pos[2] - particles_[i].pos[2];  // 1flop

           distance_sqr =
               dx * dx + dy * dy + dz * dz+ kSofteningSquared;  // 6flops
           distance_inv = 1.0f / sqrt(distance_sqr);       // 1div+1sqrt

           if (dx==0) {acc0=0;}
           else{
             acc0 += dx * kG * particles_[j].mass * distance_inv * distance_inv *
                   distance_inv; } // 6flops
           if (dy==0) {acc1=0;}
           else{
           acc1 += dy * kG * particles_[j].mass * distance_inv * distance_inv *
                   distance_inv; } // 6flops}
           if (dz==0){acc2=0;}
           else{
           acc2 += dz * kG * particles_[j].mass * distance_inv * distance_inv *
                   distance_inv;}  // 6flops
          }
         //p[i].acc[0] = acc0;
         //p[i].acc[1] = acc1;
         //p[i].acc[2] = acc2;
           
         particles_[i].vel[0] += acc0 * dt;  // 2flops
         particles_[i].vel[1] += acc1 * dt;  // 2flops
         particles_[i].vel[2] += acc2 * dt;  // 2flops
       }//);
    // }).wait_and_throw();
      
    // Second kernel updates the velocity and position for all particles
    //q.submit([&](handler& h) {
       //auto p = pbuf.get_access(h);
       //#if(__SYCL_COMPILER_VERSION <= 20200827)
       //h.parallel_for(ndrange, intel::reduction(energy, 0.f, std::plus<float>()), [=](nd_item<1> it, auto& energy) {
       //#else
       //h.parallel_for(ndrange, ext::oneapi::reduction(energy, 0.f, std::plus<float>()), [=](nd_item<1> it, auto& energy) {
       //#endif
	 //auto i = it.get_global_id();
    for (int i =0;i<n;i++){
         particles_[i].pos[0] += particles_[i].vel[0] * dt;  // 2flops
         particles_[i].pos[1] += particles_[i].vel[1] * dt;  // 2flops
         particles_[i].pos[2] += particles_[i].vel[2] * dt;  // 2flops

         particles_[i].acc[0] = 0.f;
         particles_[i].acc[1] = 0.f;
         particles_[i].acc[2] = 0.f;

         energy = (particles_[i].mass *
                (particles_[i].vel[0] * particles_[i].vel[0] + particles_[i].vel[1] * particles_[i].vel[1] +
                 particles_[i].vel[2] * particles_[i].vel[2])) + energy;  // 7flops
      // });
    }
     //}).wait_and_throw();
    kenergy_ = 0.5 * (energy);
    energy = 0.f;
    double elapsed_seconds = 0.1;
    if ((s % get_sfreq()) == 0) {
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
    }

  }  // end of the time step loop
  //total_time_ = t0.Elapsed();
  total_flops_ = gflops * get_nsteps();
  av /= (double)(nf - 2);
  dev = sqrt(dev / (double)(nf - 2) - av * av);

  std::cout <<"\n";
  //std::cout << "# Total Time (s)     : " << total_time_ << "\n";
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
//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================

#include <iostream>

#include "GSimulation.hpp"

int main(int argc, char** argv) {
  int n;      // number of particles
  int nstep;  // number ot integration steps

  GSimulation sim;

#ifdef DEBUG
  char* env = std::getenv("SYCL_BE");
  std::cout << "[ENV] SYCL_BE = " << (env ? env : "<not set>") << "\n";
#endif
  std::string file;
  if (argc > 1) {
    //n = std::atoi(argv[1]);
    //sim.SetNumberOfParticles(n);
    file = argv[1];
    if (argc == 3) {
      nstep = std::atoi(argv[2]);
      sim.SetNumberOfSteps(nstep);
    }
  }

  sim.Start(file);

  return 0;
}
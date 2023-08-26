dpcpp -fintelfpga matrix_mul/matrix_mul.cpp -o matrix_mul/matrix_mul.fpga_emu -DFPGA_EMULATOR=1
./matrix_mul/matrix_mul.fpga_emu

dpcpp -fintelfpga matrix_mul/matrix_mul_heterofuzz.cpp -o matrix_mul/matrix_mul_heterofuzz.fpga_emu -DFPGA_EMULATOR=1
./matrix_mul/matrix_mul_heterofuzz.fpga_emu seeds/seed0
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 matrix_mul/matrix_mul_heterofuzz.fpga_emu

dpcpp -std=c++17 -g -o matrix_mul/matrix_mul_heterofuzz.gpu matrix_mul/matrix_mul_heterofuzz.cpp
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 matrix_mul/matrix_mul_heterofuzz.gpu
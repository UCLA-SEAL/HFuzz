dpcpp -fintelfpga matrix_mul/matrix_mul.cpp -o matrix_mul/matrix_mul.fpga_emu -DFPGA_EMULATOR=1
./matrix_mul/matrix_mul.fpga_emu $1
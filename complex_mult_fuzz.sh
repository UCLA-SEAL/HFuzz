#ssh devcloud
dpcpp -fintelfpga complex-mult/src/complex-mult.cpp -o complex-mult/complex-mult.fpga_emu -DFPGA_EMULATOR=1
./complex-mult/complex-mult.fpga_emu


dpcpp -fintelfpga complex-mult/src/complex-mult-heterofuzz.cpp -o complex-mult/complex-mult-heterofuzz.fpga_emu -DFPGA_EMULATOR=1
./complex-mult/complex-mult-heterofuzz.fpga_emu seeds/seed0
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 complex-mult/complex-mult-heterofuzz.fpga_emu

# qsub -I -l nodes=1:gpu:ppn=2
dpcpp -std=c++17 -g -o complex-mult/complex-mult-heterofuzz.gpu complex-mult/src/complex-mult-heterofuzz.cpp
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 complex-mult/complex-mult-heterofuzz.gpu
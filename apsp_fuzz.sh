# ssh devcloud
dpcpp -fintelfpga apsp/src/apsp.cpp -o apsp/apsp.fpga_emu -DFPGA_EMULATOR=1
./apsp/apsp.fpga_emu

dpcpp -fintelfpga apsp/src/apsp-heterofuzz.cpp -o apsp/apsp-heterofuzz.fpga_emu -DFPGA_EMULATOR=1
./apsp/apsp-heterofuzz.fpga_emu seeds/seed0
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 apsp/apsp-heterofuzz.fpga_emu

# qsub -I -l nodes=1:gpu:ppn=2
dpcpp -std=c++17 -g -o apsp/apsp-heterofuzz.gpu apsp/src/apsp-heterofuzz.cpp
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 apsp/apsp-heterofuzz.gpu
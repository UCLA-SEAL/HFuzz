# ssh devcloud
dpcpp -fintelfpga vector-add/src/vector-add-buffers.cpp -o vector-add/vector-add-buffers.fpga_emu -DFPGA_EMULATOR=1
./vector-add/vector-add-buffers.fpga_emu

dpcpp -fintelfpga vector-add/src/vector-add-heterofuzz.cpp -o vector-add/vector-add-heterofuzz.fpga_emu -DFPGA_EMULATOR=1
./vector-add/vector-add-heterofuzz.fpga_emu seeds/seed0
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 vector-add/vector-add-heterofuzz.fpga_emu

# qsub -I -l nodes=1:gpu:ppn=2
dpcpp -std=c++17 -g -o vector-add/vector-add-heterofuzz.gpu vector-add/src/vector-add-heterofuzz.cpp
./HeteroFuzz/prototype/fuzz seeds/ output/ 10 vector-add/vector-add-heterofuzz.gpu

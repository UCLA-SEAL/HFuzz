// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 2022.1 (Release Build #96.2)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from bb_ZTS21SideChannelMainKernel_B3_stall_region
// Created for function/kernel k3_ZTS21SideChannelMainKernel
// SystemVerilog created on Wed Feb 16 17:20:20 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k3_ZTS21SideChannelMainKernel_bb_ZTS21Si0000rnel_B3_stall_region (
    input wire [7:0] in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid,
    output wire [0:0] out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    input wire [63:0] in_arg1,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe71,
    input wire [0:0] in_valid_in,
    input wire [7:0] in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid,
    output wire [0:0] out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_valid,
    output wire [31:0] out_c0_exe71,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_s;
    reg [63:0] i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_valid_out;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_stall;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_valid;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_stall;
    wire [0:0] i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_valid;
    reg [31:0] redist0_stall_entry_o4_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_q;
    wire [0:0] bubble_select_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and0;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and1;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and2;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_V0;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_1;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_2;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_3;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_2;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_3;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_or1;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_or2;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V1;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V2;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V3;


    // bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_q = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_q[63:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_q = i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_q[63:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1(BITJOIN,41)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1(BITSELECT,42)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3(MUX,7)@1
    assign i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_b;
    always @(i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_s or bubble_select_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_b or bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_b)
    begin
        unique case (i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_s)
            1'b0 : i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_q = bubble_select_i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_b;
            1'b1 : i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_q = bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_b;
            default : i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    k3_ZTS21SideChannelMainKernel_i_llvm_fpg0016dechannelmainkernel0 thei_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_acl_2_i_lcssa_select_k3_zts21sidechannelmainkernel3_q),
        .in_stall_in(SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    k3_ZTS21SideChannelMainKernel_i_llvm_fpg0014dechannelmainkernel0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_5_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    k3_ZTS21SideChannelMainKernel_i_llvm_fpg0015dechannelmainkernel0 thei_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_V0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_backStall = i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and0 = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and1 = i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k3_ZTS21SideChannelMainKernel_i_llvm_fpg0017dechannelmainkernel0 thei_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0 (
        .in_buffer_in(in_arg1),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_backStall),
        .in_valid_in(SE_redist0_stall_entry_o4_1_0_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full@20000000
    // out out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready@20000000
    // out out_o_stall@20000000
    k3_ZTS21SideChannelMainKernel_i_iord_nb_0002dechannelmainkernel0 thei_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x (
        .in_i_stall(SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall),
        .in_i_valid(SE_redist0_stall_entry_o4_1_0_V2),
        .in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata(in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid),
        .out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready),
        .out_o_stall(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_k3_zts21sidechannelmainkernel24_k3_zts21sidechannelmainkernel1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i64_acl_110_k3_zts21sidechannelmainkernel2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_redist0_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_stall_entry_o4_1_0(STALLENABLE,78)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_1_0_V0 = SE_redist0_stall_entry_o4_1_0_R_v_0;
    assign SE_redist0_stall_entry_o4_1_0_V1 = SE_redist0_stall_entry_o4_1_0_R_v_1;
    assign SE_redist0_stall_entry_o4_1_0_V2 = SE_redist0_stall_entry_o4_1_0_R_v_2;
    assign SE_redist0_stall_entry_o4_1_0_V3 = SE_redist0_stall_entry_o4_1_0_R_v_3;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_1_0_s_tv_0 = SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall & SE_redist0_stall_entry_o4_1_0_R_v_0;
    assign SE_redist0_stall_entry_o4_1_0_s_tv_1 = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_stall & SE_redist0_stall_entry_o4_1_0_R_v_1;
    assign SE_redist0_stall_entry_o4_1_0_s_tv_2 = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_stall & SE_redist0_stall_entry_o4_1_0_R_v_2;
    assign SE_redist0_stall_entry_o4_1_0_s_tv_3 = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer3_k3_zts21sidechannelmainkernel0_out_stall_out & SE_redist0_stall_entry_o4_1_0_R_v_3;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_1_0_or0 = SE_redist0_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist0_stall_entry_o4_1_0_or1 = SE_redist0_stall_entry_o4_1_0_s_tv_1 | SE_redist0_stall_entry_o4_1_0_or0;
    assign SE_redist0_stall_entry_o4_1_0_or2 = SE_redist0_stall_entry_o4_1_0_s_tv_2 | SE_redist0_stall_entry_o4_1_0_or1;
    assign SE_redist0_stall_entry_o4_1_0_backEN = ~ (SE_redist0_stall_entry_o4_1_0_s_tv_3 | SE_redist0_stall_entry_o4_1_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_1_0_v_s_0 = SE_redist0_stall_entry_o4_1_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_1_0_backStall = ~ (SE_redist0_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist0_stall_entry_o4_1_0_R_v_1 <= 1'b0;
            SE_redist0_stall_entry_o4_1_0_R_v_2 <= 1'b0;
            SE_redist0_stall_entry_o4_1_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 & SE_redist0_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_1 <= SE_redist0_stall_entry_o4_1_0_R_v_1 & SE_redist0_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_1 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_2 <= SE_redist0_stall_entry_o4_1_0_R_v_2 & SE_redist0_stall_entry_o4_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_2 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_3 <= SE_redist0_stall_entry_o4_1_0_R_v_3 & SE_redist0_stall_entry_o4_1_0_s_tv_3;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_3 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_V0 = SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and0 = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_valid;
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and1 = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_valid & SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and0;
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and2 = i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_valid_out & SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and1;
    assign SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_wireValid = SE_redist0_stall_entry_o4_1_0_V0 & SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_and2;

    // i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x(BLACKBOX,37)@1
    // in in_i_stall@20000000
    // out out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full@20000000
    // out out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready@20000000
    // out out_o_stall@20000000
    k3_ZTS21SideChannelMainKernel_i_iord_nb_0003dechannelmainkernel0 thei_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x (
        .in_i_stall(SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_backStall),
        .in_i_valid(SE_redist0_stall_entry_o4_1_0_V1),
        .in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata(in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifovalid),
        .out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready),
        .out_o_stall(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready;
    assign out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel25_k3_zts21sidechannelmainkernel4_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // regfree_osync(GPOUT,27)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i64_unnamed_k3_zts21sidechannelmainkernel27_k3_zts21sidechannelmainkernel7_out_intel_reserved_ffwd_6_0;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoready;
    assign out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_iord_nb_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // bubble_join_stall_entry(BITJOIN,51)
    assign bubble_join_stall_entry_q = in_c0_exe71;

    // bubble_select_stall_entry(BITSELECT,52)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // redist0_stall_entry_o4_1_0(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // bubble_join_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x(BITJOIN,59)
    assign bubble_join_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_q = i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_out_o_data_1_tpl;

    // bubble_select_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x(BITSELECT,60)
    assign bubble_select_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_b = $unsigned(bubble_join_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,35)@1
    assign out_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI29HostToDeviceTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_valid = bubble_select_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_b;
    assign out_c0_exe71 = redist0_stall_entry_o4_1_0_q;
    assign out_valid_out = SE_out_i_iord_nb_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli29hosttodevicetermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k3_zts21sidechannelmainkernel26_k3_zts21sidechannelmainkernel5_aunroll_x_V0;

endmodule

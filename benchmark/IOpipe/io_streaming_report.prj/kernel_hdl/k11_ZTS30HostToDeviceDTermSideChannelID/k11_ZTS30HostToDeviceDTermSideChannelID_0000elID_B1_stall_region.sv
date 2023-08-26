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

// SystemVerilog created from bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region
// Created for function/kernel k11_ZTS30HostToDeviceDTermSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:19 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k11_ZTS30HostToDeviceDTermSideChannelID_0000elID_B1_stall_region (
    input wire [511:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_arg0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready,
    output wire [32:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write,
    output wire [511:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata,
    output wire [63:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable,
    output wire [4:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_valid_out,
    output wire [7:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [0:0] i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_stall;
    wire [0:0] i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_valid;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_3_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_5_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_b;
    wire [66:0] bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_e;
    wire [0:0] SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_wireValid;
    wire [0:0] SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_and0;
    wire [0:0] SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_backStall;
    wire [0:0] SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_1;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_or0;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    wire [0:0] SE_coalesced_delay_0_2_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in_bitsignaltemp;
    wire [7:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out_bitsignaltemp;
    wire [7:0] bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,47)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,48)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,61)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    k11_ZTS30HostToDeviceDTermSideChannelID_0000annelID_B1_merge_reg theZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x(BITJOIN,51)
    assign bubble_join_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_q = ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x(BITSELECT,52)
    assign bubble_select_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_V0 = SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_stall | ~ (SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_wireValid = ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_q = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_readdata;

    // SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_V0 = SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_backStall = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_wireValid = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_valid;

    // bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg(STALLFIFO,94)
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_data_in = bubble_join_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_q;
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(8),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_b = $unsigned(bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_data_out[7:0]);

    // bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x(BITJOIN,55)
    assign bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q = {i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_2_tpl};

    // bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x(BITSELECT,56)
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_q[66:66]);

    // join_for_coalesced_delay_0(BITJOIN,37)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_d};

    // coalesced_delay_0_0(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,38)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[1:1]);

    // i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4(BLACKBOX,7)@8
    // in in_i_stall@20000000
    // out out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata@20000000
    // out out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid@20000000
    // out out_o_stall@20000000
    k11_ZTS30HostToDeviceDTermSideChannelID_0006edtermsidechannelid0 thei_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4 (
        .in_c0_exe4(sel_for_coalesced_delay_0_b),
        .in_i_data(bubble_select_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_b),
        .in_i_stall(SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_backStall),
        .in_i_valid(SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_V0),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata(i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid(i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_stall),
        .out_o_valid(i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_V0 = SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_and0 = i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_valid;
    assign SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_wireValid = SE_coalesced_delay_0_2_V1 & SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_and0;

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_backStall = i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_o_stall | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_and0 = bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_wireValid = SE_coalesced_delay_0_2_V0 & SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_and0;

    // SE_coalesced_delay_0_2(STALLENABLE,71)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_V1 = SE_coalesced_delay_0_2_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_data_backStall & SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_s_tv_1 = SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_backStall & SE_coalesced_delay_0_2_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_or0 = SE_coalesced_delay_0_2_s_tv_0;
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_1 | SE_coalesced_delay_0_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_R_v_1 & SE_coalesced_delay_0_2_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,70)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,69)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3(BLACKBOX,8)@5
    // in in_i_stall@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write@20000000
    // out out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    k11_ZTS30HostToDeviceDTermSideChannelID_0007edtermsidechannelid0 thei_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_b),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V0),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x(STALLENABLE,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_o_stall) & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_wireValid = i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x(BLACKBOX,33)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    // out out_c0_exit_3_tpl@5
    // out out_c0_exit_4_tpl@5
    // out out_c0_exit_5_tpl@5
    k11_ZTS30HostToDeviceDTermSideChannelID_0000edtermsidechannelid1 thei_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x (
        .in_arg0(in_arg0),
        .in_i_stall(SE_out_i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_backStall),
        .in_i_valid(SE_out_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ZTS30HostToDeviceDTermSideChannelID_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_c0_exit_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out = i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out = i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_lr_ph_zts30hosttodevicedtermsidechannelids_c0_enter1_k11_zts30hosttodevicedtermsidechannelid1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount = i_llvm_fpga_mem_lm_k11_zts30hosttodevicedtermsidechannelid3_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;

    // dupName_0_sync_out_x(GPOUT,31)@8
    assign out_c0_exe5 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,32)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata = i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid = i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12producerimpli30hosttodevicedtermsidechannelidclb0elm1ee6pipeidecli1ee9m_storagee_pipe_channel_unnamed_k11_zts30hosttodevicedtermsidechannelid7_k11_zts30hosttodevicedtermsidechannelid4_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;

endmodule

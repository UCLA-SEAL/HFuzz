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

// SystemVerilog created from bb_ZTS26DeviceToHostTSideChannelID_B1_stall_region
// Created for function/kernel k9_ZTS26DeviceToHostTSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:22 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000elID_B1_stall_region (
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg0,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write,
    output wire [511:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata,
    output wire [63:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable,
    output wire [4:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount,
    output wire [0:0] out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready;
    wire [31:0] i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_data;
    wire [0:0] i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_stall;
    wire [0:0] i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata;
    wire [0:0] ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_3_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_5_tpl;
    wire [0:0] i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_c1_exit_1_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_q;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_q;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_q;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_q;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_q;
    reg [0:0] redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    wire [31:0] bubble_join_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_q;
    wire [31:0] bubble_select_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_b;
    wire [4:0] bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_f;
    wire [63:0] bubble_join_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_1;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_2;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or1;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V1;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V2;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V0;
    reg [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_V0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_i_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_data0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V;
    wire [0:0] SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_D0;


    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,76)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    k9_ZTS26DeviceToHostTSideChannelID_ZTS260000annelID_B1_merge_reg theZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x(BITJOIN,63)
    assign bubble_join_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_q = ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x(BITSELECT,64)
    assign bubble_select_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_V0 = SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_stall | ~ (SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_wireValid = ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3(BITJOIN,55)
    assign bubble_join_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_q = i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_data;

    // bubble_select_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3(BITSELECT,56)
    assign bubble_select_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_b = $unsigned(bubble_join_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_q[31:0]);

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1(STALLENABLE,87)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_s_tv_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2(STALLENABLE,88)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_s_tv_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_v_s_0;
            end

        end
    end

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_e);
        end
    end

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_q <= $unsigned(redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_q);
        end
    end

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_q <= $unsigned(redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_q);
        end
    end

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_q <= $unsigned(redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_q);
        end
    end

    // SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4(STALLREG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid <= 1'b0;
            SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall & (SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid | SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_i_valid);

            if (SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_data0 <= $unsigned(redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_i_valid = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall = SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid | ~ (SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_i_valid);

    // Valid
    assign SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V = SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid : SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_i_valid;

    assign SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_D0 = SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_r_data0 : redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_q;

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4(STALLENABLE,90)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_s_tv_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN & SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5(STALLENABLE,91)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backEN & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_V0 = SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_and0 = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_wireValid = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_V0 & SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_and0;

    // join_for_coalesced_delay_0(BITJOIN,42)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_c};

    // coalesced_delay_0_0(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,43)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_3_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_3_q[1:1]);

    // bubble_join_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x(BITJOIN,70)
    assign bubble_join_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_q = i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x(BITSELECT,71)
    assign bubble_select_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7(BLACKBOX,8)@9
    // in in_i_stall@20000000
    // out out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write@20000000
    // out out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata@20000000
    k9_ZTS26DeviceToHostTSideChannelID_i_llv0006ohosttsidechannelid0 thei_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_b),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack),
        .out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_valid),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata(i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3(STALLENABLE,89)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V1 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V2 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_0 = SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_1 = SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_2 = i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_stall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_0;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or1 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_1 | SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or0;
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_2 | SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_2_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0 <= 1'b0;
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1 <= 1'b0;
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0;
            end

            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_1;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_1 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0;
            end

            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_s_tv_2;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_R_v_2 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_v_s_0;
            end

        end
    end

    // i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3(BLACKBOX,7)@9
    // in in_i_stall@20000000
    // out out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full@20000000
    // out out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready@20000000
    // out out_o_stall@20000000
    k9_ZTS26DeviceToHostTSideChannelID_i_ior0000ohosttsidechannelid0 thei_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3 (
        .in_c0_exe2(sel_for_coalesced_delay_0_b),
        .in_i_stall(SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_backStall),
        .in_i_valid(SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V2),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full(i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready(i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready),
        .out_o_data(i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_data),
        .out_o_stall(i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_stall),
        .out_o_valid(i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and0 = i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and1 = i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_o_valid & SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_wireValid = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_3_V1 & SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_and1;

    // bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x(BITJOIN,67)
    assign bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q = {i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x(BITSELECT,68)
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_q[4:4]);

    // i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x(BLACKBOX,37)@5
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c1_exit_0_tpl@9
    // out out_c1_exit_1_tpl@9
    k9_ZTS26DeviceToHostTSideChannelID_i_sfc0000ohosttsidechannelid5 thei_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x (
        .in_arg0(in_arg0),
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_b),
        .in_c0_exe5(bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_f),
        .in_i_stall(SE_out_i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V1),
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_f),
        .in_c1_eni2_2_tpl(bubble_select_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_b),
        .out_o_stall(i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0(STALLENABLE,86)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_V0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_s_tv_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_1_backStall & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_v_s_0 = SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backStall = ~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0 & SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_R_v_0 <= SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x(STALLENABLE,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed0 = (~ (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_0_backStall) & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_wireValid = i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    // out out_c0_exit_3_tpl@5
    // out out_c0_exit_4_tpl@5
    // out out_c0_exit_5_tpl@5
    k9_ZTS26DeviceToHostTSideChannelID_i_sfc0000ohosttsidechannelid1 thei_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_backStall),
        .in_i_valid(SE_out_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ZTS26DeviceToHostTSideChannelID_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out = i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out = i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready = i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready;
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full = i_iord_bl_acl_c_zn2cl4sycl3ext5intel4pipein6detail12consumerimpli26devicetohosttsidechannelidilb0elm8ee6pipeideili8ee9m_storagee_pipe_channel_unnamed_k9_zts26devicetohosttsidechannelid6_k9_zts26devicetohosttsidechannelid3_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_q <= $unsigned(SR_SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_D0);
        end
    end

    // redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_q <= $unsigned(redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_4_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,33)@11
    assign out_c0_exe4 = redist2_i_sfc_s_c0_in_lr_ph_zts26devicetohosttsidechannelids_c0_enter1_k9_zts26devicetohosttsidechannelid1_aunroll_x_out_c0_exit_4_tpl_6_5_q;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,34)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,35)
    assign out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active = i_llvm_fpga_mem_unnamed_k9_zts26devicetohosttsidechannelid8_k9_zts26devicetohosttsidechannelid7_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active;

endmodule

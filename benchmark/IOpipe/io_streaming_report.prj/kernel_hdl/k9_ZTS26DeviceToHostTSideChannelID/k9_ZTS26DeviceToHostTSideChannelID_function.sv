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

// SystemVerilog created from k9_ZTS26DeviceToHostTSideChannelID_function
// Created for function/kernel k9_ZTS26DeviceToHostTSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:22 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k9_ZTS26DeviceToHostTSideChannelID_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arg0,
    input wire [63:0] in_arg_arg1,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest,
    input wire [0:0] in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_o_active_unnamed_k9_ZTS26DeviceToHostTSideChannelID8,
    output wire [0:0] out_stall_out,
    output wire [32:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address,
    output wire [4:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount,
    output wire [63:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write,
    output wire [511:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_capture;
    wire DeviceToHostTSideChannelID_B1_x_i_capture_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_clear;
    wire DeviceToHostTSideChannelID_B1_x_i_clear_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_enable;
    wire DeviceToHostTSideChannelID_B1_x_i_enable_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_shift;
    wire DeviceToHostTSideChannelID_B1_x_i_shift_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_stall_pred;
    wire DeviceToHostTSideChannelID_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_stall_succ;
    wire DeviceToHostTSideChannelID_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_valid_loop;
    wire DeviceToHostTSideChannelID_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_valid_pred;
    wire DeviceToHostTSideChannelID_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] DeviceToHostTSideChannelID_B1_x_i_valid_succ;
    wire DeviceToHostTSideChannelID_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B0_out_feedback_stall_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_0_0;
    wire [64:0] bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B0_out_stall_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B0_out_valid_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_pipeline_valid_out;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_in_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_1;
    wire [32:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address;
    wire [4:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount;
    wire [63:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write;
    wire [511:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_1;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_valid_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_out_stall_out_0;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_out_valid_out_0;
    wire [1:0] c_i2_013_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_valid_out;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_valid;


    // c_i2_013(CONSTANT,13)
    assign c_i2_013_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo(BLACKBOX,15)
    k9_ZTS26DeviceToHostTSideChannelID_i_llv0000hannelid6_valid_fifo thei_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo (
        .in_data_in(c_i2_013_q),
        .in_stall_in(bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS26DeviceToHostTSideChannelID_B2(BLACKBOX,5)
    k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000ostTSideChannelID_B2 thebb_ZTS26DeviceToHostTSideChannelID_B2 (
        .in_feedback_stall_in_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_stall_out_0),
        .out_valid_out_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x(BLACKBOX,46)
    k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000ideChannelID_B2_sr_0 thebb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x (
        .in_i_stall(bb_ZTS26DeviceToHostTSideChannelID_B2_out_stall_out_0),
        .in_i_valid(bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr(BLACKBOX,14)
    k9_ZTS26DeviceToHostTSideChannelID_i_llv0000sttsidechannelid6_sr thei_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_stall_out),
        .in_i_valid(bb_ZTS26DeviceToHostTSideChannelID_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS26DeviceToHostTSideChannelID_B0(BLACKBOX,3)
    k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000ostTSideChannelID_B0 thebb_ZTS26DeviceToHostTSideChannelID_B0 (
        .in_arg0(in_arg_arg0),
        .in_arg1(in_arg_arg1),
        .in_feedback_in_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_ZTS26DeviceToHostTSideChannelID_B2_out_feedback_valid_out_0),
        .in_stall_in_0(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_1_0),
        .out_stall_out_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_stall_out_0),
        .out_valid_out_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS26DeviceToHostTSideChannelID_B1(BLACKBOX,4)
    k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000ostTSideChannelID_B1 thebb_ZTS26DeviceToHostTSideChannelID_B1 (
        .in_arg0(in_arg_arg0),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_ZTS26DeviceToHostTSideChannelID_B0_out_intel_reserved_ffwd_1_0),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_sr_out_o_stall),
        .in_stall_in_0(bb_ZTS26DeviceToHostTSideChannelID_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdata),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_readdatavalid),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_waitrequest),
        .in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack(in_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_k9_zts26devicetohosttsidechannelid6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready),
        .out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active(bb_ZTS26DeviceToHostTSideChannelID_B1_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active),
        .out_pipeline_valid_out(bb_ZTS26DeviceToHostTSideChannelID_B1_out_pipeline_valid_out),
        .out_stall_in_0(bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_in_0),
        .out_stall_out_0(bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_0),
        .out_stall_out_1(bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_1),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write),
        .out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata(bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata),
        .out_valid_in_0(bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_0),
        .out_valid_in_1(bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_1),
        .out_valid_out_0(bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x(BLACKBOX,45)
    k9_ZTS26DeviceToHostTSideChannelID_bb_ZT0000ideChannelID_B1_sr_1 thebb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x (
        .in_i_stall(bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_out_1),
        .in_i_valid(bb_ZTS26DeviceToHostTSideChannelID_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // DeviceToHostTSideChannelID_B1_x(EXTIFACE,2)
    assign DeviceToHostTSideChannelID_B1_x_i_capture = GND_q;
    assign DeviceToHostTSideChannelID_B1_x_i_clear = GND_q;
    assign DeviceToHostTSideChannelID_B1_x_i_enable = VCC_q;
    assign DeviceToHostTSideChannelID_B1_x_i_shift = GND_q;
    assign DeviceToHostTSideChannelID_B1_x_i_stall_pred = bb_ZTS26DeviceToHostTSideChannelID_B1_sr_1_aunroll_x_out_o_stall;
    assign DeviceToHostTSideChannelID_B1_x_i_stall_succ = bb_ZTS26DeviceToHostTSideChannelID_B1_out_stall_in_0;
    assign DeviceToHostTSideChannelID_B1_x_i_valid_loop = bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_0;
    assign DeviceToHostTSideChannelID_B1_x_i_valid_pred = bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_in_1;
    assign DeviceToHostTSideChannelID_B1_x_i_valid_succ = bb_ZTS26DeviceToHostTSideChannelID_B1_out_valid_out_0;
    assign DeviceToHostTSideChannelID_B1_x_i_capture_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_capture[0];
    assign DeviceToHostTSideChannelID_B1_x_i_clear_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_clear[0];
    assign DeviceToHostTSideChannelID_B1_x_i_enable_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_enable[0];
    assign DeviceToHostTSideChannelID_B1_x_i_shift_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_shift[0];
    assign DeviceToHostTSideChannelID_B1_x_i_stall_pred_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_stall_pred[0];
    assign DeviceToHostTSideChannelID_B1_x_i_stall_succ_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_stall_succ[0];
    assign DeviceToHostTSideChannelID_B1_x_i_valid_loop_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_valid_loop[0];
    assign DeviceToHostTSideChannelID_B1_x_i_valid_pred_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_valid_pred[0];
    assign DeviceToHostTSideChannelID_B1_x_i_valid_succ_bitsignaltemp = DeviceToHostTSideChannelID_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("DeviceToHostTSideChannelID.B1")
    ) theDeviceToHostTSideChannelID_B1_x (
        .i_capture(DeviceToHostTSideChannelID_B1_x_i_capture_bitsignaltemp),
        .i_clear(DeviceToHostTSideChannelID_B1_x_i_clear_bitsignaltemp),
        .i_enable(DeviceToHostTSideChannelID_B1_x_i_enable_bitsignaltemp),
        .i_shift(DeviceToHostTSideChannelID_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(DeviceToHostTSideChannelID_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(DeviceToHostTSideChannelID_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(DeviceToHostTSideChannelID_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(DeviceToHostTSideChannelID_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(DeviceToHostTSideChannelID_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,33)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,34)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTS26DeviceToHostTSideChannelID_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI26DeviceToHostTSideChannelIDiLb0ELm8EE6PipeIDEiLi8EE9m_StorageE_pipe_channel_o_fifoready;

    // out_o_active_unnamed_k9_ZTS26DeviceToHostTSideChannelID8(GPOUT,35)
    assign out_o_active_unnamed_k9_ZTS26DeviceToHostTSideChannelID8 = bb_ZTS26DeviceToHostTSideChannelID_B1_out_lsu_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_o_active;

    // out_stall_out(GPOUT,36)
    assign out_stall_out = bb_ZTS26DeviceToHostTSideChannelID_B0_out_stall_out_0;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address(GPOUT,37)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_address;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount(GPOUT,38)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_burstcount;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable(GPOUT,39)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_byteenable;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable(GPOUT,40)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_enable;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read(GPOUT,41)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_read;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write(GPOUT,42)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_write;

    // out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata(GPOUT,43)
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata = bb_ZTS26DeviceToHostTSideChannelID_B1_out_unnamed_k9_ZTS26DeviceToHostTSideChannelID8_k9_ZTS26DeviceToHostTSideChannelID_avm_writedata;

    // out_valid_out(GPOUT,44)
    assign out_valid_out = bb_ZTS26DeviceToHostTSideChannelID_B2_out_valid_out_0;

endmodule

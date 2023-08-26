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

// SystemVerilog created from k0_ZTS18LoopBackMainKernel_function
// Created for function/kernel k0_ZTS18LoopBackMainKernel
// SystemVerilog created on Wed Feb 16 17:20:18 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS18LoopBackMainKernel_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arg0,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [31:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] LoopBackMainKernel_B1_x_i_capture;
    wire LoopBackMainKernel_B1_x_i_capture_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_clear;
    wire LoopBackMainKernel_B1_x_i_clear_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_enable;
    wire LoopBackMainKernel_B1_x_i_enable_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_shift;
    wire LoopBackMainKernel_B1_x_i_shift_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_stall_pred;
    wire LoopBackMainKernel_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_stall_succ;
    wire LoopBackMainKernel_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_valid_loop;
    wire LoopBackMainKernel_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_valid_pred;
    wire LoopBackMainKernel_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] LoopBackMainKernel_B1_x_i_valid_succ;
    wire LoopBackMainKernel_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B0_out_feedback_stall_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_0_0;
    wire [64:0] bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B0_out_stall_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B0_out_valid_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready;
    wire [31:0] bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_pipeline_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_stall_in_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_stall_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_stall_out_1;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_valid_in_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_valid_in_1;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_out_valid_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_out_feedback_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_out_feedback_valid_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_out_stall_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_out_valid_out_0;
    wire [1:0] c_i2_012_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_valid;


    // c_i2_012(CONSTANT,13)
    assign c_i2_012_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo(BLACKBOX,15)
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p0000inkernel6_valid_fifo thei_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo (
        .in_data_in(c_i2_012_q),
        .in_stall_in(bb_ZTS18LoopBackMainKernel_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B2(BLACKBOX,5)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B2 thebb_ZTS18LoopBackMainKernel_B2 (
        .in_feedback_stall_in_0(bb_ZTS18LoopBackMainKernel_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_ZTS18LoopBackMainKernel_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_ZTS18LoopBackMainKernel_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_ZTS18LoopBackMainKernel_B2_out_stall_out_0),
        .out_valid_out_0(bb_ZTS18LoopBackMainKernel_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x(BLACKBOX,35)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B2_sr_0 thebb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x (
        .in_i_stall(bb_ZTS18LoopBackMainKernel_B2_out_stall_out_0),
        .in_i_valid(bb_ZTS18LoopBackMainKernel_B1_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr(BLACKBOX,14)
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p0000opbackmainkernel6_sr thei_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_stall_out),
        .in_i_valid(bb_ZTS18LoopBackMainKernel_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B0(BLACKBOX,3)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B0 thebb_ZTS18LoopBackMainKernel_B0 (
        .in_arg0(in_arg_arg0),
        .in_feedback_in_0(bb_ZTS18LoopBackMainKernel_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_ZTS18LoopBackMainKernel_B2_out_feedback_valid_out_0),
        .in_stall_in_0(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_ZTS18LoopBackMainKernel_B0_out_feedback_stall_out_0),
        .out_intel_reserved_ffwd_0_0(bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_1_0),
        .out_stall_out_0(bb_ZTS18LoopBackMainKernel_B0_out_stall_out_0),
        .out_valid_out_0(bb_ZTS18LoopBackMainKernel_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B1(BLACKBOX,4)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B1 thebb_ZTS18LoopBackMainKernel_B1 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_ZTS18LoopBackMainKernel_B0_out_intel_reserved_ffwd_1_0),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_sr_out_o_stall),
        .in_stall_in_0(bb_ZTS18LoopBackMainKernel_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata(bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid(bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_pipeline_valid_out(bb_ZTS18LoopBackMainKernel_B1_out_pipeline_valid_out),
        .out_stall_in_0(bb_ZTS18LoopBackMainKernel_B1_out_stall_in_0),
        .out_stall_out_0(bb_ZTS18LoopBackMainKernel_B1_out_stall_out_0),
        .out_stall_out_1(bb_ZTS18LoopBackMainKernel_B1_out_stall_out_1),
        .out_valid_in_0(bb_ZTS18LoopBackMainKernel_B1_out_valid_in_0),
        .out_valid_in_1(bb_ZTS18LoopBackMainKernel_B1_out_valid_in_1),
        .out_valid_out_0(bb_ZTS18LoopBackMainKernel_B1_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x(BLACKBOX,34)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B1_sr_1 thebb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x (
        .in_i_stall(bb_ZTS18LoopBackMainKernel_B1_out_stall_out_1),
        .in_i_valid(bb_ZTS18LoopBackMainKernel_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // LoopBackMainKernel_B1_x(EXTIFACE,2)
    assign LoopBackMainKernel_B1_x_i_capture = GND_q;
    assign LoopBackMainKernel_B1_x_i_clear = GND_q;
    assign LoopBackMainKernel_B1_x_i_enable = VCC_q;
    assign LoopBackMainKernel_B1_x_i_shift = GND_q;
    assign LoopBackMainKernel_B1_x_i_stall_pred = bb_ZTS18LoopBackMainKernel_B1_sr_1_aunroll_x_out_o_stall;
    assign LoopBackMainKernel_B1_x_i_stall_succ = bb_ZTS18LoopBackMainKernel_B1_out_stall_in_0;
    assign LoopBackMainKernel_B1_x_i_valid_loop = bb_ZTS18LoopBackMainKernel_B1_out_valid_in_0;
    assign LoopBackMainKernel_B1_x_i_valid_pred = bb_ZTS18LoopBackMainKernel_B1_out_valid_in_1;
    assign LoopBackMainKernel_B1_x_i_valid_succ = bb_ZTS18LoopBackMainKernel_B1_out_valid_out_0;
    assign LoopBackMainKernel_B1_x_i_capture_bitsignaltemp = LoopBackMainKernel_B1_x_i_capture[0];
    assign LoopBackMainKernel_B1_x_i_clear_bitsignaltemp = LoopBackMainKernel_B1_x_i_clear[0];
    assign LoopBackMainKernel_B1_x_i_enable_bitsignaltemp = LoopBackMainKernel_B1_x_i_enable[0];
    assign LoopBackMainKernel_B1_x_i_shift_bitsignaltemp = LoopBackMainKernel_B1_x_i_shift[0];
    assign LoopBackMainKernel_B1_x_i_stall_pred_bitsignaltemp = LoopBackMainKernel_B1_x_i_stall_pred[0];
    assign LoopBackMainKernel_B1_x_i_stall_succ_bitsignaltemp = LoopBackMainKernel_B1_x_i_stall_succ[0];
    assign LoopBackMainKernel_B1_x_i_valid_loop_bitsignaltemp = LoopBackMainKernel_B1_x_i_valid_loop[0];
    assign LoopBackMainKernel_B1_x_i_valid_pred_bitsignaltemp = LoopBackMainKernel_B1_x_i_valid_pred[0];
    assign LoopBackMainKernel_B1_x_i_valid_succ_bitsignaltemp = LoopBackMainKernel_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("LoopBackMainKernel.B1")
    ) theLoopBackMainKernel_B1_x (
        .i_capture(LoopBackMainKernel_B1_x_i_capture_bitsignaltemp),
        .i_clear(LoopBackMainKernel_B1_x_i_clear_bitsignaltemp),
        .i_enable(LoopBackMainKernel_B1_x_i_enable_bitsignaltemp),
        .i_shift(LoopBackMainKernel_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(LoopBackMainKernel_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(LoopBackMainKernel_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(LoopBackMainKernel_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(LoopBackMainKernel_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(LoopBackMainKernel_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,28)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,29)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTS18LoopBackMainKernel_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata(GPOUT,30)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata = bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid(GPOUT,31)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid = bb_ZTS18LoopBackMainKernel_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = bb_ZTS18LoopBackMainKernel_B0_out_stall_out_0;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = bb_ZTS18LoopBackMainKernel_B2_out_valid_out_0;

endmodule

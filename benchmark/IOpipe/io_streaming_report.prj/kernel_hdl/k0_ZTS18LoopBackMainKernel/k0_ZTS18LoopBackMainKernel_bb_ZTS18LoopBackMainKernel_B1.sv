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

// SystemVerilog created from bb_ZTS18LoopBackMainKernel_B1
// Created for function/kernel k0_ZTS18LoopBackMainKernel
// SystemVerilog created on Wed Feb 16 17:20:18 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B1 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [31:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] ZTS18LoopBackMainKernel_B1_branch_out_stall_out;
    wire [0:0] ZTS18LoopBackMainKernel_B1_branch_out_valid_out_0;
    wire [0:0] ZTS18LoopBackMainKernel_B1_branch_out_valid_out_1;
    wire [0:0] ZTS18LoopBackMainKernel_B1_merge_out_forked;
    wire [0:0] ZTS18LoopBackMainKernel_B1_merge_out_stall_out_0;
    wire [0:0] ZTS18LoopBackMainKernel_B1_merge_out_stall_out_1;
    wire [0:0] ZTS18LoopBackMainKernel_B1_merge_out_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_c0_exe4;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready;
    wire [31:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_stall_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B1_stall_region_out_valid_out;


    // ZTS18LoopBackMainKernel_B1_branch(BLACKBOX,2)
    k0_ZTS18LoopBackMainKernel_ZTS18LoopBackMainKernel_B1_branch theZTS18LoopBackMainKernel_B1_branch (
        .in_c0_exe4(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_c0_exe4),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_valid_out),
        .out_stall_out(ZTS18LoopBackMainKernel_B1_branch_out_stall_out),
        .out_valid_out_0(ZTS18LoopBackMainKernel_B1_branch_out_valid_out_0),
        .out_valid_out_1(ZTS18LoopBackMainKernel_B1_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTS18LoopBackMainKernel_B1_merge(BLACKBOX,3)
    k0_ZTS18LoopBackMainKernel_ZTS18LoopBackMainKernel_B1_merge theZTS18LoopBackMainKernel_B1_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(ZTS18LoopBackMainKernel_B1_merge_out_forked),
        .out_stall_out_0(ZTS18LoopBackMainKernel_B1_merge_out_stall_out_0),
        .out_stall_out_1(ZTS18LoopBackMainKernel_B1_merge_out_stall_out_1),
        .out_valid_out(ZTS18LoopBackMainKernel_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B1_stall_region(BLACKBOX,4)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopB0000rnel_B1_stall_region thebb_ZTS18LoopBackMainKernel_B1_stall_region (
        .in_forked(ZTS18LoopBackMainKernel_B1_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_i_fifoready),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ZTS18LoopBackMainKernel_B1_branch_out_stall_out),
        .in_valid_in(ZTS18LoopBackMainKernel_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out),
        .out_c0_exe4(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_c0_exe4),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_pipeline_valid_out(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_stall_out),
        .out_valid_out(bb_ZTS18LoopBackMainKernel_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,16)
    assign out_exiting_stall_out = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,17)
    assign out_exiting_valid_out = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,18)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,19)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI20LoopBackReadIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifoready;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata(GPOUT,20)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid(GPOUT,21)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ConsumerImplI21LoopBackWriteIOPipeIDiLb0ELm4EE6PipeIDEiLi4EE9m_StorageE_pipe_channel_o_fifovalid;

    // out_stall_in_0(GPOUT,22)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = ZTS18LoopBackMainKernel_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = ZTS18LoopBackMainKernel_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,26)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = ZTS18LoopBackMainKernel_B1_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = ZTS18LoopBackMainKernel_B1_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = bb_ZTS18LoopBackMainKernel_B1_stall_region_out_pipeline_valid_out;

endmodule

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

// SystemVerilog created from bb_ZTS30HostToDeviceDTermSideChannelID_B1
// Created for function/kernel k11_ZTS30HostToDeviceDTermSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:19 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k11_ZTS30HostToDeviceDTermSideChannelID_0000TermSideChannelID_B1 (
    input wire [63:0] in_arg0,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready,
    input wire [511:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest,
    input wire [0:0] in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [7:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [32:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address,
    output wire [4:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount,
    output wire [63:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read,
    output wire [0:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write,
    output wire [511:0] out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata,
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

    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_stall_out;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_0;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_1;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_forked;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_0;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_1;
    wire [0:0] ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_valid_out;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_c0_exe5;
    wire [7:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [32:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;
    wire [4:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;
    wire [63:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;
    wire [511:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_stall_out;
    wire [0:0] bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_valid_out;


    // ZTS30HostToDeviceDTermSideChannelID_B1_branch(BLACKBOX,2)
    k11_ZTS30HostToDeviceDTermSideChannelID_0000eChannelID_B1_branch theZTS30HostToDeviceDTermSideChannelID_B1_branch (
        .in_c0_exe5(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_c0_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_valid_out),
        .out_stall_out(ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_stall_out),
        .out_valid_out_0(ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_0),
        .out_valid_out_1(ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTS30HostToDeviceDTermSideChannelID_B1_merge(BLACKBOX,3)
    k11_ZTS30HostToDeviceDTermSideChannelID_0000deChannelID_B1_merge theZTS30HostToDeviceDTermSideChannelID_B1_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_forked),
        .out_stall_out_0(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_0),
        .out_stall_out_1(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_1),
        .out_valid_out(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region(BLACKBOX,4)
    k11_ZTS30HostToDeviceDTermSideChannelID_0000elID_B1_stall_region thebb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region (
        .in_arg0(in_arg0),
        .in_flush(in_flush),
        .in_forked(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack(in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_stall_out),
        .in_valid_in(ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out),
        .out_c0_exe5(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_c0_exe5),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata),
        .out_pipeline_valid_out(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_stall_out),
        .out_valid_out(bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,20)
    assign out_exiting_stall_out = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,21)
    assign out_exiting_valid_out = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k11_zts30hosttodevicedtermsidechannelid6_exiting_valid_out;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata(GPOUT,22)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid(GPOUT,23)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address(GPOUT,24)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount(GPOUT,25)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable(GPOUT,26)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable(GPOUT,27)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read(GPOUT,28)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write(GPOUT,29)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;

    // out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata(GPOUT,30)
    assign out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;

    // out_stall_in_0(GPOUT,31)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = ZTS30HostToDeviceDTermSideChannelID_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,34)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,35)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,37)
    assign out_valid_out_1 = ZTS30HostToDeviceDTermSideChannelID_B1_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = bb_ZTS30HostToDeviceDTermSideChannelID_B1_stall_region_out_pipeline_valid_out;

endmodule

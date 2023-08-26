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

// SystemVerilog created from i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0
// Created for function/kernel k11_ZTS30HostToDeviceDTermSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:19 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k11_ZTS30HostToDeviceDTermSideChannelID_000pedtermsidechannelid0 (
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_out_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] adapt_scalar_trunc4_in;
    wire [0:0] adapt_scalar_trunc4_q;
    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_data_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out;
    wire i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out_bitsignaltemp;


    // adapt_scalar_trunc4(ROUND,2)
    assign adapt_scalar_trunc4_in = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out;
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[0:0];

    // i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg(BLACKBOX,9)@20000000
    // out out_data_out@20000001
    // out out_valid_out@20000001
    k11_ZTS30HostToDeviceDTermSideChannelID_0001rmsidechannelid0_reg thei_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg (
        .in_data_in(adapt_scalar_trunc4_q),
        .in_stall_in(in_stall_in),
        .in_valid_in(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out),
        .out_data_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_data_out),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i7_03(CONSTANT,5)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,6)
    assign element_extension2_q = {c_i7_03_q, in_data_in};

    // i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1(EXTIFACE,10)
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in = element_extension2_q[0:0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir = VCC_q;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in = in_feedback_stall_in_0;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate = GND_q;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_stall_out;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in = in_valid_in;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in_bitsignaltemp = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in[0];
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out[0] = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out[0] = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out[0] = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out[0] = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out[0] = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(1),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(1'b0),
        .MIN_FIFO_LATENCY(0),
        .STYLE("TOKEN"),
        .ASYNC_RESET(1),
        .DATA_WIDTH(1),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(0),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1 (
        .data_in(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_in_bitsignaltemp),
        .dir(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_data_out_bitsignaltemp),
        .feedback_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out_bitsignaltemp),
        .feedback_valid_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,8)
    assign out_feedback_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_out;
    assign out_feedback_valid_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_feedback_valid_out;

    // sync_out(GPOUT,12)@20000000
    assign out_stall_out = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid1_stall_out;

    // dupName_0_sync_out_x(GPOUT,14)@1
    assign out_data_out = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_data_out;
    assign out_valid_out = i_llvm_fpga_push_token_i1_throttle_push_k11_zts30hosttodevicedtermsidechannelid0_reg_out_valid_out;

endmodule

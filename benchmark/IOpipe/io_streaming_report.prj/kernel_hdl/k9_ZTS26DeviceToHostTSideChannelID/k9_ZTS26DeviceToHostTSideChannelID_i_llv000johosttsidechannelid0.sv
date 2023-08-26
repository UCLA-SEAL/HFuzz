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

// SystemVerilog created from i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid0
// Created for function/kernel k9_ZTS26DeviceToHostTSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:22 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k9_ZTS26DeviceToHostTSideChannelID_i_llv000johosttsidechannelid0 (
    input wire [0:0] in_feedback_stall_in_3,
    output wire [127:0] out_feedback_out_3,
    output wire [0:0] out_feedback_valid_out_3,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [64:0] in_data_in,
    input wire [0:0] in_keep_going,
    input wire [0:0] in_valid_in,
    output wire [64:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [62:0] c_i63_03_q;
    wire [127:0] element_extension2_q;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_data_in;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in_bitsignaltemp;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_data_out;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_out;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out;
    wire i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out_bitsignaltemp;
    wire [64:0] adapt_scalar_trunc4_sel_x_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i63_03(CONSTANT,4)
    assign c_i63_03_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // element_extension2(BITJOIN,5)@1
    assign element_extension2_q = {c_i63_03_q, in_data_in};

    // i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1(EXTIFACE,8)@1
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_data_in = element_extension2_q;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir = in_keep_going;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in = in_feedback_stall_in_3;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate = GND_q;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in = in_stall_in;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir_bitsignaltemp = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir[0];
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in[0];
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate_bitsignaltemp = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate[0];
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in_bitsignaltemp = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in[0];
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in_bitsignaltemp = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in[0];
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out[0] = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out[0] = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out[0] = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(1),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
        .MIN_FIFO_LATENCY(1),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .DATA_WIDTH(128),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1 (
        .data_in(element_extension2_q),
        .dir(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_data_out),
        .feedback_out(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_out),
        .feedback_valid_out(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,7)
    assign out_feedback_out_3 = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_out;
    assign out_feedback_valid_out_3 = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_feedback_valid_out;

    // sync_out(GPOUT,10)@1
    assign out_stall_out = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_stall_out;

    // adapt_scalar_trunc4_sel_x(BITSELECT,12)@1
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_data_out[64:0];

    // dupName_0_sync_out_x(GPOUT,13)@1
    assign out_data_out = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k9_zts26devicetohosttsidechannelid1_valid_out;

endmodule

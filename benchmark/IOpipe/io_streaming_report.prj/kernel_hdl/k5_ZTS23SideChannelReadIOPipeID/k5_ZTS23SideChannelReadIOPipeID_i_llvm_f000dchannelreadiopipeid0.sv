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

// SystemVerilog created from i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid0
// Created for function/kernel k5_ZTS23SideChannelReadIOPipeID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000dchannelreadiopipeid0 (
    input wire [7:0] in_feedback_in_5,
    input wire [0:0] in_feedback_valid_in_5,
    output wire [0:0] out_feedback_stall_out_5,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [3:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    output wire [3:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [3:0] c_i4_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_data_in;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir_bitsignaltemp;
    wire [7:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out;
    wire i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out_bitsignaltemp;
    wire [3:0] adapt_scalar_trunc4_sel_x_b;


    // c_i4_03(CONSTANT,3)
    assign c_i4_03_q = $unsigned(4'b0000);

    // element_extension2(BITJOIN,4)@2
    assign element_extension2_q = {c_i4_03_q, in_data_in};

    // i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1(EXTIFACE,7)@2
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_data_in = element_extension2_q;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir = in_dir;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_in = in_feedback_in_5;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in = in_feedback_valid_in_5;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate = in_predicate;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in = in_stall_in;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir_bitsignaltemp = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir[0];
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate_bitsignaltemp = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate[0];
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in_bitsignaltemp = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in[0];
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in_bitsignaltemp = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in[0];
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out[0] = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out[0] = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out[0] = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(8),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1 (
        .data_in(element_extension2_q),
        .dir(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_5),
        .feedback_valid_in(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,6)
    assign out_feedback_stall_out_5 = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_feedback_stall_out;

    // sync_out(GPOUT,9)@2
    assign out_stall_out = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_stall_out;

    // adapt_scalar_trunc4_sel_x(BITSELECT,11)@2
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_data_out[3:0];

    // dupName_0_sync_out_x(GPOUT,12)@2
    assign out_data_out = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid1_valid_out;

endmodule

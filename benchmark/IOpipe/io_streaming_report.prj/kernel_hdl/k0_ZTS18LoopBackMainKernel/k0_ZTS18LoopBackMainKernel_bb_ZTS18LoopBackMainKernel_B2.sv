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

// SystemVerilog created from bb_ZTS18LoopBackMainKernel_B2
// Created for function/kernel k0_ZTS18LoopBackMainKernel
// SystemVerilog created on Wed Feb 16 17:20:18 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopBackMainKernel_B2 (
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] ZTS18LoopBackMainKernel_B2_branch_out_stall_out;
    wire [0:0] ZTS18LoopBackMainKernel_B2_branch_out_valid_out_0;
    wire [0:0] ZTS18LoopBackMainKernel_B2_merge_out_stall_out_0;
    wire [0:0] ZTS18LoopBackMainKernel_B2_merge_out_valid_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_valid_out_0;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_stall_region_out_stall_out;
    wire [0:0] bb_ZTS18LoopBackMainKernel_B2_stall_region_out_valid_out;


    // ZTS18LoopBackMainKernel_B2_merge(BLACKBOX,3)
    k0_ZTS18LoopBackMainKernel_ZTS18LoopBackMainKernel_B2_merge theZTS18LoopBackMainKernel_B2_merge (
        .in_stall_in(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(ZTS18LoopBackMainKernel_B2_merge_out_stall_out_0),
        .out_valid_out(ZTS18LoopBackMainKernel_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTS18LoopBackMainKernel_B2_branch(BLACKBOX,2)
    k0_ZTS18LoopBackMainKernel_ZTS18LoopBackMainKernel_B2_branch theZTS18LoopBackMainKernel_B2_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_valid_out),
        .out_stall_out(ZTS18LoopBackMainKernel_B2_branch_out_stall_out),
        .out_valid_out_0(ZTS18LoopBackMainKernel_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS18LoopBackMainKernel_B2_stall_region(BLACKBOX,4)
    k0_ZTS18LoopBackMainKernel_bb_ZTS18LoopB0000rnel_B2_stall_region thebb_ZTS18LoopBackMainKernel_B2_stall_region (
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(ZTS18LoopBackMainKernel_B2_branch_out_stall_out),
        .in_valid_in(ZTS18LoopBackMainKernel_B2_merge_out_valid_out),
        .out_feedback_out_0(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_valid_out_0),
        .out_stall_out(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_stall_out),
        .out_valid_out(bb_ZTS18LoopBackMainKernel_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_0_sync(GPOUT,5)
    assign out_feedback_out_0 = bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,7)
    assign out_feedback_valid_out_0 = bb_ZTS18LoopBackMainKernel_B2_stall_region_out_feedback_valid_out_0;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = ZTS18LoopBackMainKernel_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = ZTS18LoopBackMainKernel_B2_branch_out_valid_out_0;

endmodule

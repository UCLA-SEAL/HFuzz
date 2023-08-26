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

// SystemVerilog created from bb_ZTS25DeviceToHostSideChannelID_B2_stall_region
// Created for function/kernel k7_ZTS25DeviceToHostSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k7_ZTS25DeviceToHostSideChannelID_bb_ZTS0000elID_B2_stall_region (
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_valid_out;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_stall_entry(STALLENABLE,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0(STALLENABLE,20)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_wireValid = i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    k7_ZTS25DeviceToHostSideChannelID_i_llvm000otohostsidechannelid0 thei_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_0_sync(GPOUT,5)
    assign out_feedback_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,7)
    assign out_feedback_valid_out_0 = i_llvm_fpga_push_token_i1_throttle_push_k7_zts25devicetohostsidechannelid0_out_feedback_valid_out_0;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,16)@0
    assign out_valid_out = SE_stall_entry_V1;

endmodule

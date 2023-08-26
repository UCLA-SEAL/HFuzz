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

// SystemVerilog created from bb_ZTS23SideChannelReadIOPipeID_B0_stall_region
// Created for function/kernel k5_ZTS23SideChannelReadIOPipeID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k5_ZTS23SideChannelReadIOPipeID_bb_ZTS230000peID_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [63:0] in_arg1,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [64:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_stall_out;
    wire [0:0] ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_valid_out;
    wire [63:0] c_i64_116_q;
    wire [63:0] c_i64_117_q;
    wire [64:0] c_i65_118_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_valid_out;
    wire [64:0] i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_valid_out;
    wire [0:0] i_umax_k5_zts23sidechannelreadiopipeid7_s;
    reg [63:0] i_umax_k5_zts23sidechannelreadiopipeid7_q;
    wire [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid10_a;
    wire [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid10_b;
    logic [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid10_o;
    wire [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid10_q;
    wire [0:0] i_unnamed_k5_zts23sidechannelreadiopipeid2_q;
    wire [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid5_a;
    wire [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid5_b;
    logic [65:0] i_unnamed_k5_zts23sidechannelreadiopipeid5_o;
    wire [0:0] i_unnamed_k5_zts23sidechannelreadiopipeid5_c;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid8_a;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid8_b;
    logic [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid8_o;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid8_q;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_join_q;
    wire [63:0] i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_select_63_b;
    wire [64:0] bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid10_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid8_sel_x_b;
    wire [63:0] c_i64_015_recast_x_q;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid9_sel_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_b;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireStall;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg0;
    reg [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed0;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg1;
    reg [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed1;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg2;
    reg [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed2;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg3;
    reg [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg3;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed3;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or0;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or1;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or2;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_backStall;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V0;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V1;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V2;
    wire [0:0] SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_V0;
    reg [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_v_s_0;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_s_tv_0;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_backEN;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_and0;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_backStall;
    wire [0:0] SE_i_umax_k5_zts23sidechannelreadiopipeid7_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_V0;


    // c_i65_118(CONSTANT,9)
    assign c_i65_118_q = $unsigned(65'b11111111111111111111111111111111111111111111111111111111111111111);

    // c_i64_117(CONSTANT,8)
    assign c_i64_117_q = $unsigned(64'b1111111111111111111111111111111111111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_q = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_q[63:0]);

    // c_i64_116(CONSTANT,7)
    assign c_i64_116_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_q = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_q[63:0]);

    // i_unnamed_k5_zts23sidechannelreadiopipeid5(COMPARE,25)@1
    assign i_unnamed_k5_zts23sidechannelreadiopipeid5_a = {2'b00, c_i64_116_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid5_b = {2'b00, bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_b};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid5_o = $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid5_a) - $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid5_b);
    assign i_unnamed_k5_zts23sidechannelreadiopipeid5_c[0] = i_unnamed_k5_zts23sidechannelreadiopipeid5_o[65];

    // i_umax_k5_zts23sidechannelreadiopipeid7(MUX,22)@1 + 1
    assign i_umax_k5_zts23sidechannelreadiopipeid7_s = i_unnamed_k5_zts23sidechannelreadiopipeid5_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_umax_k5_zts23sidechannelreadiopipeid7_q <= 64'b0;
        end
        else if (SE_i_umax_k5_zts23sidechannelreadiopipeid7_backEN == 1'b1)
        begin
            unique case (i_umax_k5_zts23sidechannelreadiopipeid7_s)
                1'b0 : i_umax_k5_zts23sidechannelreadiopipeid7_q <= c_i64_116_q;
                1'b1 : i_umax_k5_zts23sidechannelreadiopipeid7_q <= bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_b;
                default : i_umax_k5_zts23sidechannelreadiopipeid7_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_k5_zts23sidechannelreadiopipeid8(ADD,26)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid8_a = {1'b0, i_umax_k5_zts23sidechannelreadiopipeid7_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid8_b = {1'b0, c_i64_117_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid8_o = $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid8_a) + $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid8_b);
    assign i_unnamed_k5_zts23sidechannelreadiopipeid8_q = i_unnamed_k5_zts23sidechannelreadiopipeid8_o[64:0];

    // bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid8_sel_x(BITSELECT,54)@2
    assign bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid8_sel_x_b = i_unnamed_k5_zts23sidechannelreadiopipeid8_q[63:0];

    // i_unnamed_k5_zts23sidechannelreadiopipeid9_sel_x(BITSELECT,58)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid9_sel_x_b = {1'b0, bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid8_sel_x_b[63:0]};

    // i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_select_63(BITSELECT,30)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_select_63_b = i_unnamed_k5_zts23sidechannelreadiopipeid9_sel_x_b[63:0];

    // i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_join(BITJOIN,29)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_join_q = {GND_q, i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_select_63_b};

    // i_unnamed_k5_zts23sidechannelreadiopipeid10(ADD,23)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid10_a = {1'b0, i_unnamed_k5_zts23sidechannelreadiopipeid9_vt_join_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid10_b = {1'b0, c_i65_118_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid10_o = $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid10_a) + $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid10_b);
    assign i_unnamed_k5_zts23sidechannelreadiopipeid10_q = i_unnamed_k5_zts23sidechannelreadiopipeid10_o[65:0];

    // bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid10_sel_x(BITSELECT,53)@2
    assign bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid10_sel_x_b = i_unnamed_k5_zts23sidechannelreadiopipeid10_q[64:0];

    // i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12(BLACKBOX,17)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0001channelreadiopipeid0 thei_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid10_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_backStall),
        .in_valid_in(SE_i_umax_k5_zts23sidechannelreadiopipeid7_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_V0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_backStall = SE_i_umax_k5_zts23sidechannelreadiopipeid7_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_wireValid = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_valid_out;

    // SE_i_umax_k5_zts23sidechannelreadiopipeid7(STALLENABLE,93)
    // Valid signal propagation
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_V0 = SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0;
    // Stall signal propagation
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_s_tv_0 = i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_stall_out & SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0;
    // Backward Enable generation
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_backEN = ~ (SE_i_umax_k5_zts23sidechannelreadiopipeid7_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_and0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_V0 & SE_i_umax_k5_zts23sidechannelreadiopipeid7_backEN;
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_v_s_0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_V0 & SE_i_umax_k5_zts23sidechannelreadiopipeid7_and0;
    // Backward Stall generation
    assign SE_i_umax_k5_zts23sidechannelreadiopipeid7_backStall = ~ (SE_i_umax_k5_zts23sidechannelreadiopipeid7_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_umax_k5_zts23sidechannelreadiopipeid7_backEN == 1'b0)
            begin
                SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0 <= SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0 & SE_i_umax_k5_zts23sidechannelreadiopipeid7_s_tv_0;
            end
            else
            begin
                SE_i_umax_k5_zts23sidechannelreadiopipeid7_R_v_0 <= SE_i_umax_k5_zts23sidechannelreadiopipeid7_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_V0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_backStall = SE_i_umax_k5_zts23sidechannelreadiopipeid7_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_wireValid = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_valid_out;

    // i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0005channelreadiopipeid0 thei_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6 (
        .in_buffer_in(in_arg1),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_backStall),
        .in_valid_in(SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg(STALLENABLE,133)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_valid_out;

    // c_i64_015_recast_x(CONSTANT,55)
    assign c_i64_015_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_q = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_q[63:0]);

    // i_unnamed_k5_zts23sidechannelreadiopipeid2(LOGICAL,24)@1
    assign i_unnamed_k5_zts23sidechannelreadiopipeid2_q = $unsigned(bubble_select_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_b == c_i64_015_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0000channelreadiopipeid0 thei_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_unnamed_k5_zts23sidechannelreadiopipeid2_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_V0 = SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_wireValid = i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_valid_out;

    // i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0004channelreadiopipeid0 thei_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1 (
        .in_buffer_in(in_arg1),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_backStall),
        .in_valid_in(SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0003channelreadiopipeid0 thei_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4 (
        .in_buffer_in(in_arg1),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_backStall),
        .in_valid_in(SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,100)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ZTS23SideChannelReadIOPipeID_B0_merge_reg(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    k5_ZTS23SideChannelReadIOPipeID_ZTS23Sid0000OPipeID_B0_merge_reg theZTS23SideChannelReadIOPipeID_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_stall_out),
        .out_valid_out(ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg(STALLENABLE,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg0 <= '0;
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg1 <= '0;
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg2 <= '0;
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg0 <= SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg1 <= SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg2 <= SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg2;
            // Successor 3
            SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg3 <= SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_stall_out) & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid) | SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg0;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer1_k5_zts23sidechannelreadiopipeid4_out_stall_out) & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid) | SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg1;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed2 = (~ (i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer2_k5_zts23sidechannelreadiopipeid1_out_stall_out) & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid) | SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg2;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed3 = (~ (i_llvm_fpga_sync_buffer_i64_arg1_sync_buffer_k5_zts23sidechannelreadiopipeid6_out_stall_out) & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid) | SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg3;
    // Consuming
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_backStall & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg0 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed0;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg1 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed1;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg2 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed2;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_toReg3 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_StallValid & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed3;
    // Backward Stall generation
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or0 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed0;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or1 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed1 & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or0;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or2 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed2 & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or1;
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireStall = ~ (SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_consumed3 & SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_or2);
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_backStall = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V0 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid & ~ (SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg0);
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V1 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid & ~ (SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg1);
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V2 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid & ~ (SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg2);
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V3 = SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid & ~ (SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_wireValid = ZTS23SideChannelReadIOPipeID_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and1 = i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0002channelreadiopipeid0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_backStall),
        .in_valid_in(SE_out_ZTS23SideChannelReadIOPipeID_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,14)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,47)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_k5_zts23sidechannelreadiopipeid0_k5_zts23sidechannelreadiopipeid11_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i65_unnamed_k5_zts23sidechannelreadiopipeid1_k5_zts23sidechannelreadiopipeid12_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,57)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_k5_zts23sidechannelreadiopipeid0_V0;

endmodule

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

// SystemVerilog created from i_sfc_logic_s_c0_in_lr_ph_zts18loopbackmainkernels_c0_enter1_k0_zts18loopbackmainkernel0
// Created for function/kernel k0_ZTS18LoopBackMainKernel
// SystemVerilog created on Wed Feb 16 17:20:18 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS18LoopBackMainKernel_i_sfc_logic_s00008loopbackmainkernel0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [0:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTS18LoopBackMainKernel5,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_742_q;
    wire [64:0] c_i65_147_q;
    wire [64:0] c_i65_undef45_q;
    wire [3:0] i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_join_q;
    wire [3:0] i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_in;
    wire [2:0] i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_b;
    wire [66:0] i_exitcond_k0_zts18loopbackmainkernel19_a;
    wire [66:0] i_exitcond_k0_zts18loopbackmainkernel19_b;
    logic [66:0] i_exitcond_k0_zts18loopbackmainkernel19_o;
    wire [0:0] i_exitcond_k0_zts18loopbackmainkernel19_n;
    wire [0:0] i_first_cleanup_xor_k0_zts18loopbackmainkernel4_q;
    wire [0:0] i_first_cleanup_xor_or3_k0_zts18loopbackmainkernel18_q;
    wire [0:0] i_first_cleanup_xor_or_k0_zts18loopbackmainkernel16_q;
    wire [65:0] i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_a;
    wire [65:0] i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_b;
    logic [65:0] i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_o;
    wire [65:0] i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_s;
    reg [64:0] i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel3_k0_zts18loopbackmainkernel15_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel4_k0_zts18loopbackmainkernel17_out_dest_data_out_0_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_pipeline_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_feedback_stall_out_5;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_feedback_stall_out_4;
    wire [64:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_valid_out_4;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_valid_out_3;
    wire [0:0] i_masked_k0_zts18loopbackmainkernel28_q;
    wire [0:0] i_next_cleanups_k0_zts18loopbackmainkernel24_s;
    reg [3:0] i_next_cleanups_k0_zts18loopbackmainkernel24_q;
    wire [3:0] i_next_initerations_k0_zts18loopbackmainkernel8_vt_join_q;
    wire [3:0] i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_in;
    wire [2:0] i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_b;
    wire [0:0] i_notcmp_k0_zts18loopbackmainkernel21_q;
    wire [0:0] i_or_k0_zts18loopbackmainkernel23_q;
    wire [64:0] bgTrunc_i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_sel_x_b;
    wire [0:0] i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x_b;
    wire [0:0] i_last_initeration_k0_zts18loopbackmainkernel10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [4:0] i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_q;
    wire [4:0] i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_qint;
    wire [2:0] i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_q;
    wire [3:0] i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_qint;
    reg [0:0] redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together61_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together61_aunroll_x_in_i_valid_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together61_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together61_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out);
        end
    end

    // i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs(BITSHIFT,84)@2
    assign i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_qint = { i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out, 1'b0 };
    assign i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_q = i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_qint[4:0];

    // i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3(BITSELECT,23)@2
    assign i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_in = i_cleanups_shl_k0_zts18loopbackmainkernel0_shift_x_fs_q[3:0];
    assign i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_b = i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_in[3:1];

    // i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_join(BITJOIN,22)@2
    assign i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_join_q = {i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_k0_zts18loopbackmainkernel4(LOGICAL,26)@2
    assign i_first_cleanup_xor_k0_zts18loopbackmainkernel4_q = i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x_b ^ VCC_q;

    // i_notcmp_k0_zts18loopbackmainkernel21(LOGICAL,49)@2
    assign i_notcmp_k0_zts18loopbackmainkernel21_q = i_exitcond_k0_zts18loopbackmainkernel19_n ^ VCC_q;

    // i_or_k0_zts18loopbackmainkernel23(LOGICAL,50)@2
    assign i_or_k0_zts18loopbackmainkernel23_q = i_notcmp_k0_zts18loopbackmainkernel21_q | i_first_cleanup_xor_k0_zts18loopbackmainkernel4_q;

    // i_next_cleanups_k0_zts18loopbackmainkernel24(MUX,45)@2
    assign i_next_cleanups_k0_zts18loopbackmainkernel24_s = i_or_k0_zts18loopbackmainkernel23_q;
    always @(i_next_cleanups_k0_zts18loopbackmainkernel24_s or i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out or i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_join_q)
    begin
        unique case (i_next_cleanups_k0_zts18loopbackmainkernel24_s)
            1'b0 : i_next_cleanups_k0_zts18loopbackmainkernel24_q = i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out;
            1'b1 : i_next_cleanups_k0_zts18loopbackmainkernel24_q = i_cleanups_shl_k0_zts18loopbackmainkernel5_vt_join_q;
            default : i_next_cleanups_k0_zts18loopbackmainkernel24_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25(BLACKBOX,41)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00078loopbackmainkernel0 thei_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25 (
        .in_data_in(i_next_cleanups_k0_zts18loopbackmainkernel24_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_feedback_stall_out_5),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_742(CONSTANT,17)
    assign c_i4_742_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2(BLACKBOX,36)@2
    // out out_feedback_stall_out_5@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00028loopbackmainkernel0 thei_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i4_cleanups_push5_k0_zts18loopbackmainkernel25_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x(BITSELECT,63)@2
    assign i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop5_k0_zts18loopbackmainkernel2_out_data_out[0:0];

    // c_i65_undef45(CONSTANT,19)
    assign c_i65_undef45_q = $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12(BLACKBOX,34)@1
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_f00048loopbackmainkernel0 thei_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_147(CONSTANT,18)
    assign c_i65_147_q = $unsigned(65'b11111111111111111111111111111111111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26(ADD,29)@1
    assign i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_a = {1'b0, i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q};
    assign i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_b = {1'b0, c_i65_147_q};
    assign i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_o = $unsigned(i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_a) + $unsigned(i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_b);
    assign i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_q = i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_o[65:0];

    // bgTrunc_i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_sel_x(BITSELECT,57)@1
    assign bgTrunc_i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_sel_x_b = i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_q[64:0];

    // i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27(BLACKBOX,43)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00098loopbackmainkernel0 thei_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_k0_zts18loopbackmainkernel26_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_feedback_stall_out_3),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13(BLACKBOX,38)@1
    // out out_feedback_stall_out_3@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00048loopbackmainkernel0 thei_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13 (
        .in_data_in(c_i65_undef45_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k0_zts18loopbackmainkernel27_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14(MUX,30)@1
    assign i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_s or i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_data_out or i_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q = i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k0_zts18loopbackmainkernel13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q = i_llvm_fpga_ffwd_dest_i65_unnamed_k0_zts18loopbackmainkernel2_k0_zts18loopbackmainkernel12_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q = 65'b0;
        endcase
    end

    // i_exitcond_k0_zts18loopbackmainkernel19(COMPARE,24)@1 + 1
    assign i_exitcond_k0_zts18loopbackmainkernel19_a = $unsigned({{2{i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q[64]}}, i_fpga_indvars_iv_replace_phi_k0_zts18loopbackmainkernel14_q});
    assign i_exitcond_k0_zts18loopbackmainkernel19_b = $unsigned({{2{c_i65_undef45_q[64]}}, c_i65_undef45_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_exitcond_k0_zts18loopbackmainkernel19_o <= 67'b0;
        end
        else
        begin
            i_exitcond_k0_zts18loopbackmainkernel19_o <= $unsigned($signed(i_exitcond_k0_zts18loopbackmainkernel19_a) - $signed(i_exitcond_k0_zts18loopbackmainkernel19_b));
        end
    end
    assign i_exitcond_k0_zts18loopbackmainkernel19_n[0] = ~ (i_exitcond_k0_zts18loopbackmainkernel19_o[66]);

    // i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22(BLACKBOX,40)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00068loopbackmainkernel0 thei_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22 (
        .in_data_in(i_exitcond_k0_zts18loopbackmainkernel19_n),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,74)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,72)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,73)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9(BLACKBOX,42)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00088loopbackmainkernel0 thei_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9 (
        .in_data_in(i_next_initerations_k0_zts18loopbackmainkernel8_vt_join_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_feedback_stall_out_4),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7(BLACKBOX,37)@2
    // out out_feedback_stall_out_4@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00038loopbackmainkernel0 thei_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i4_initerations_push4_k0_zts18loopbackmainkernel9_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs(BITSHIFT,85)@2
    assign i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_qint = i_llvm_fpga_pop_i4_initerations_pop4_k0_zts18loopbackmainkernel7_out_data_out;
    assign i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_q = i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_qint[3:1];

    // i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2(BITSELECT,48)@2
    assign i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_in = {1'b0, i_next_initerations_k0_zts18loopbackmainkernel0_shift_x_fs_q};
    assign i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_b = i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_in[2:0];

    // i_next_initerations_k0_zts18loopbackmainkernel8_vt_join(BITJOIN,47)@2
    assign i_next_initerations_k0_zts18loopbackmainkernel8_vt_join_q = {GND_q, i_next_initerations_k0_zts18loopbackmainkernel8_vt_select_2_b};

    // i_last_initeration_k0_zts18loopbackmainkernel10_sel_x(BITSELECT,64)@2
    assign i_last_initeration_k0_zts18loopbackmainkernel10_sel_x_b = i_next_initerations_k0_zts18loopbackmainkernel8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11(BLACKBOX,39)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00058loopbackmainkernel0 thei_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11 (
        .in_data_in(i_last_initeration_k0_zts18loopbackmainkernel10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6(BLACKBOX,35)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_p00018loopbackmainkernel0 thei_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_k0_zts18loopbackmainkernel11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k0_zts18loopbackmainkernel22_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,71)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked_k0_zts18loopbackmainkernel28(LOGICAL,44)@2
    assign i_masked_k0_zts18loopbackmainkernel28_q = i_notcmp_k0_zts18loopbackmainkernel21_q & i_first_cleanup_k0_zts18loopbackmainkernel3_sel_x_b;

    // valid_fanout_reg5(REG,76)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel4_k0_zts18loopbackmainkernel17(BLACKBOX,33)@2
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_f00038loopbackmainkernel0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel4_k0_zts18loopbackmainkernel17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel4_k0_zts18loopbackmainkernel17_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or3_k0_zts18loopbackmainkernel18(LOGICAL,27)@2
    assign i_first_cleanup_xor_or3_k0_zts18loopbackmainkernel18_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel4_k0_zts18loopbackmainkernel17_out_dest_data_out_0_0 | i_first_cleanup_xor_k0_zts18loopbackmainkernel4_q;

    // valid_fanout_reg4(REG,75)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel3_k0_zts18loopbackmainkernel15(BLACKBOX,32)@2
    k0_ZTS18LoopBackMainKernel_i_llvm_fpga_f00028loopbackmainkernel0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel3_k0_zts18loopbackmainkernel15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel3_k0_zts18loopbackmainkernel15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_k0_zts18loopbackmainkernel16(LOGICAL,28)@2
    assign i_first_cleanup_xor_or_k0_zts18loopbackmainkernel16_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k0_zts18loopbackmainkernel3_k0_zts18loopbackmainkernel15_out_dest_data_out_0_0 | i_first_cleanup_xor_k0_zts18loopbackmainkernel4_q;

    // sync_out_aunroll_x(GPOUT,69)@2
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going_k0_zts18loopbackmainkernel6_out_data_out_1_q;
    assign out_c0_exi4_2_tpl = i_first_cleanup_xor_or_k0_zts18loopbackmainkernel16_q;
    assign out_c0_exi4_3_tpl = i_first_cleanup_xor_or3_k0_zts18loopbackmainkernel18_q;
    assign out_c0_exi4_4_tpl = i_masked_k0_zts18loopbackmainkernel28_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k0_ZTS18LoopBackMainKernel5 = GND_q;

endmodule

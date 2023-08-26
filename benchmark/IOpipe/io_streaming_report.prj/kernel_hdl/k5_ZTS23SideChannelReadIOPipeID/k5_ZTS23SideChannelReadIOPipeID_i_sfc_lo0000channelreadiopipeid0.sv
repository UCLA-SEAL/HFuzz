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

// SystemVerilog created from i_sfc_logic_s_c0_in_lr_ph_zts23sidechannelreadiopipeids_c0_enter1_k5_zts23sidechannelreadiopipeid0
// Created for function/kernel k5_ZTS23SideChannelReadIOPipeID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k5_ZTS23SideChannelReadIOPipeID_i_sfc_lo0000channelreadiopipeid0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg0,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [64:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [63:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k5_ZTS23SideChannelReadIOPipeID6,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_750_q;
    wire [63:0] c_i64_054_q;
    wire [63:0] c_i64_155_q;
    wire [64:0] c_i65_157_q;
    wire [64:0] c_i65_undef53_q;
    wire [3:0] i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_join_q;
    wire [3:0] i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_in;
    wire [2:0] i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_b;
    wire [66:0] i_exitcond_k5_zts23sidechannelreadiopipeid24_a;
    wire [66:0] i_exitcond_k5_zts23sidechannelreadiopipeid24_b;
    logic [66:0] i_exitcond_k5_zts23sidechannelreadiopipeid24_o;
    wire [0:0] i_exitcond_k5_zts23sidechannelreadiopipeid24_n;
    wire [0:0] i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4_q;
    wire [0:0] i_first_cleanup_xor_or3_k5_zts23sidechannelreadiopipeid21_q;
    wire [0:0] i_first_cleanup_xor_or_k5_zts23sidechannelreadiopipeid19_q;
    wire [65:0] i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_a;
    wire [65:0] i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_b;
    logic [65:0] i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_o;
    wire [65:0] i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_s;
    reg [64:0] i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid4_k5_zts23sidechannelreadiopipeid18_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid5_k5_zts23sidechannelreadiopipeid20_out_dest_data_out_0_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_pipeline_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_feedback_stall_out_5;
    wire [63:0] i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_feedback_stall_out_4;
    wire [64:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_valid_out_5;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_valid_out_4;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_valid_out_3;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_select_63_b;
    wire [0:0] i_masked_k5_zts23sidechannelreadiopipeid33_q;
    wire [0:0] i_next_cleanups_k5_zts23sidechannelreadiopipeid29_s;
    reg [3:0] i_next_cleanups_k5_zts23sidechannelreadiopipeid29_q;
    wire [3:0] i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_join_q;
    wire [3:0] i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_in;
    wire [2:0] i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_b;
    wire [0:0] i_notcmp_k5_zts23sidechannelreadiopipeid26_q;
    wire [0:0] i_or_k5_zts23sidechannelreadiopipeid28_q;
    wire [1:0] i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_const_1_q;
    wire [63:0] i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_join_q;
    wire [61:0] i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_select_63_b;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid22_a;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid22_b;
    logic [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid22_o;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid22_q;
    wire [64:0] bgTrunc_i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid22_sel_x_b;
    wire [0:0] i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x_b;
    wire [0:0] i_last_initeration_k5_zts23sidechannelreadiopipeid10_sel_x_b;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_a;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_b;
    logic [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_o;
    wire [64:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_q;
    wire [61:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_narrow_x_b;
    wire [63:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_shift_join_x_q;
    wire [63:0] i_unnamed_k5_zts23sidechannelreadiopipeid0_dupName_0_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [4:0] i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q;
    wire [4:0] i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint;
    wire [2:0] i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q;
    wire [3:0] i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint;
    reg [0:0] redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together74_aunroll_x_in_i_valid_1(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together74_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together74_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out);
        end
    end

    // i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs(BITSHIFT,112)@2
    assign i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint = { i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out, 1'b0 };
    assign i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q = i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint[4:0];

    // i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3(BITSELECT,29)@2
    assign i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_in = i_cleanups_shl_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q[3:0];
    assign i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_b = i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_in[3:1];

    // i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_join(BITJOIN,28)@2
    assign i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_join_q = {i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4(LOGICAL,32)@2
    assign i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4_q = i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x_b ^ VCC_q;

    // i_notcmp_k5_zts23sidechannelreadiopipeid26(LOGICAL,61)@2
    assign i_notcmp_k5_zts23sidechannelreadiopipeid26_q = i_exitcond_k5_zts23sidechannelreadiopipeid24_n ^ VCC_q;

    // i_or_k5_zts23sidechannelreadiopipeid28(LOGICAL,62)@2
    assign i_or_k5_zts23sidechannelreadiopipeid28_q = i_notcmp_k5_zts23sidechannelreadiopipeid26_q | i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4_q;

    // i_next_cleanups_k5_zts23sidechannelreadiopipeid29(MUX,57)@2
    assign i_next_cleanups_k5_zts23sidechannelreadiopipeid29_s = i_or_k5_zts23sidechannelreadiopipeid28_q;
    always @(i_next_cleanups_k5_zts23sidechannelreadiopipeid29_s or i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out or i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_join_q)
    begin
        unique case (i_next_cleanups_k5_zts23sidechannelreadiopipeid29_s)
            1'b0 : i_next_cleanups_k5_zts23sidechannelreadiopipeid29_q = i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out;
            1'b1 : i_next_cleanups_k5_zts23sidechannelreadiopipeid29_q = i_cleanups_shl_k5_zts23sidechannelreadiopipeid5_vt_join_q;
            default : i_next_cleanups_k5_zts23sidechannelreadiopipeid29_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30(BLACKBOX,48)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000ichannelreadiopipeid0 thei_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30 (
        .in_data_in(i_next_cleanups_k5_zts23sidechannelreadiopipeid29_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_feedback_stall_out_6),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_750(CONSTANT,21)
    assign c_i4_750_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2(BLACKBOX,42)@2
    // out out_feedback_stall_out_6@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000cchannelreadiopipeid0 thei_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i4_cleanups_push6_k5_zts23sidechannelreadiopipeid30_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x(BITSELECT,81)@2
    assign i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop6_k5_zts23sidechannelreadiopipeid2_out_data_out[0:0];

    // c_i65_undef53(CONSTANT,25)
    assign c_i65_undef53_q = $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12(BLACKBOX,40)@1
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000achannelreadiopipeid0 thei_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_157(CONSTANT,24)
    assign c_i65_157_q = $unsigned(65'b11111111111111111111111111111111111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31(ADD,35)@1
    assign i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_a = {1'b0, i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q};
    assign i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_b = {1'b0, c_i65_157_q};
    assign i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_o = $unsigned(i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_a) + $unsigned(i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_b);
    assign i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_q = i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_o[65:0];

    // bgTrunc_i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_sel_x(BITSELECT,74)@1
    assign bgTrunc_i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_sel_x_b = i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_q[64:0];

    // i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32(BLACKBOX,51)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000lchannelreadiopipeid0 thei_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_k5_zts23sidechannelreadiopipeid31_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_feedback_stall_out_3),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13(BLACKBOX,45)@1
    // out out_feedback_stall_out_3@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000fchannelreadiopipeid0 thei_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13 (
        .in_data_in(c_i65_undef53_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k5_zts23sidechannelreadiopipeid32_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14(MUX,36)@1
    assign i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_s or i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_data_out or i_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q = i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k5_zts23sidechannelreadiopipeid13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q = i_llvm_fpga_ffwd_dest_i65_unnamed_k5_zts23sidechannelreadiopipeid2_k5_zts23sidechannelreadiopipeid12_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q = 65'b0;
        endcase
    end

    // i_exitcond_k5_zts23sidechannelreadiopipeid24(COMPARE,30)@1 + 1
    assign i_exitcond_k5_zts23sidechannelreadiopipeid24_a = $unsigned({{2{i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q[64]}}, i_fpga_indvars_iv_replace_phi_k5_zts23sidechannelreadiopipeid14_q});
    assign i_exitcond_k5_zts23sidechannelreadiopipeid24_b = $unsigned({{2{c_i65_undef53_q[64]}}, c_i65_undef53_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_exitcond_k5_zts23sidechannelreadiopipeid24_o <= 67'b0;
        end
        else
        begin
            i_exitcond_k5_zts23sidechannelreadiopipeid24_o <= $unsigned($signed(i_exitcond_k5_zts23sidechannelreadiopipeid24_a) - $signed(i_exitcond_k5_zts23sidechannelreadiopipeid24_b));
        end
    end
    assign i_exitcond_k5_zts23sidechannelreadiopipeid24_n[0] = ~ (i_exitcond_k5_zts23sidechannelreadiopipeid24_o[66]);

    // i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27(BLACKBOX,47)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000hchannelreadiopipeid0 thei_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27 (
        .in_data_in(i_exitcond_k5_zts23sidechannelreadiopipeid24_n),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,98)@1 + 1
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

    // valid_fanout_reg1(REG,96)@1 + 1
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

    // valid_fanout_reg2(REG,97)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9(BLACKBOX,49)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000jchannelreadiopipeid0 thei_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9 (
        .in_data_in(i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_join_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_feedback_stall_out_5),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7(BLACKBOX,43)@2
    // out out_feedback_stall_out_5@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000dchannelreadiopipeid0 thei_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i4_initerations_push5_k5_zts23sidechannelreadiopipeid9_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs(BITSHIFT,113)@2
    assign i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint = i_llvm_fpga_pop_i4_initerations_pop5_k5_zts23sidechannelreadiopipeid7_out_data_out;
    assign i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q = i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_qint[3:1];

    // i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2(BITSELECT,60)@2
    assign i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_in = {1'b0, i_next_initerations_k5_zts23sidechannelreadiopipeid0_shift_x_fs_q};
    assign i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_b = i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_in[2:0];

    // i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_join(BITJOIN,59)@2
    assign i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_join_q = {GND_q, i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_select_2_b};

    // i_last_initeration_k5_zts23sidechannelreadiopipeid10_sel_x(BITSELECT,82)@2
    assign i_last_initeration_k5_zts23sidechannelreadiopipeid10_sel_x_b = i_next_initerations_k5_zts23sidechannelreadiopipeid8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11(BLACKBOX,46)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000gchannelreadiopipeid0 thei_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11 (
        .in_data_in(i_last_initeration_k5_zts23sidechannelreadiopipeid10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6(BLACKBOX,41)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000bchannelreadiopipeid0 thei_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_k5_zts23sidechannelreadiopipeid11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k5_zts23sidechannelreadiopipeid27_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,69)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,95)@1 + 1
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

    // i_masked_k5_zts23sidechannelreadiopipeid33(LOGICAL,56)@2
    assign i_masked_k5_zts23sidechannelreadiopipeid33_q = i_notcmp_k5_zts23sidechannelreadiopipeid26_q & i_first_cleanup_k5_zts23sidechannelreadiopipeid3_sel_x_b;

    // valid_fanout_reg7(REG,102)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid5_k5_zts23sidechannelreadiopipeid20(BLACKBOX,39)@2
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0009channelreadiopipeid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid5_k5_zts23sidechannelreadiopipeid20 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid5_k5_zts23sidechannelreadiopipeid20_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or3_k5_zts23sidechannelreadiopipeid21(LOGICAL,33)@2
    assign i_first_cleanup_xor_or3_k5_zts23sidechannelreadiopipeid21_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid5_k5_zts23sidechannelreadiopipeid20_out_dest_data_out_0_0 | i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4_q;

    // valid_fanout_reg6(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid4_k5_zts23sidechannelreadiopipeid18(BLACKBOX,38)@2
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f0008channelreadiopipeid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid4_k5_zts23sidechannelreadiopipeid18 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid4_k5_zts23sidechannelreadiopipeid18_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_k5_zts23sidechannelreadiopipeid19(LOGICAL,34)@2
    assign i_first_cleanup_xor_or_k5_zts23sidechannelreadiopipeid19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k5_zts23sidechannelreadiopipeid4_k5_zts23sidechannelreadiopipeid18_out_dest_data_out_0_0 | i_first_cleanup_xor_k5_zts23sidechannelreadiopipeid4_q;

    // valid_fanout_reg5(REG,100)@1 + 1
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

    // valid_fanout_reg8(REG,103)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // c_i64_155(CONSTANT,23)
    assign c_i64_155_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_unnamed_k5_zts23sidechannelreadiopipeid22(ADD,66)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid22_a = {1'b0, i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_data_out};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid22_b = {1'b0, c_i64_155_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid22_o = $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid22_a) + $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid22_b);
    assign i_unnamed_k5_zts23sidechannelreadiopipeid22_q = i_unnamed_k5_zts23sidechannelreadiopipeid22_o[64:0];

    // bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid22_sel_x(BITSELECT,75)@2
    assign bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid22_sel_x_b = i_unnamed_k5_zts23sidechannelreadiopipeid22_q[63:0];

    // i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23(BLACKBOX,50)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000kchannelreadiopipeid0 thei_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23 (
        .in_data_in(bgTrunc_i_unnamed_k5_zts23sidechannelreadiopipeid22_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_feedback_stall_out_4),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_054(CONSTANT,22)
    assign c_i64_054_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16(BLACKBOX,44)@2
    // out out_feedback_stall_out_4@20000000
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000echannelreadiopipeid0 thei_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16 (
        .in_data_in(c_i64_054_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k5_zts23sidechannelreadiopipeid23_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_k5_zts23sidechannelreadiopipeid0_narrow_x(BITSELECT,89)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_narrow_x_b = i_llvm_fpga_pop_i64_acl_0_i9_pop4_k5_zts23sidechannelreadiopipeid16_out_data_out[61:0];

    // i_unnamed_k5_zts23sidechannelreadiopipeid0_shift_join_x(BITJOIN,90)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_shift_join_x_q = {i_unnamed_k5_zts23sidechannelreadiopipeid0_narrow_x_b, i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_const_1_q};

    // valid_fanout_reg4(REG,99)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15(BLACKBOX,52)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    k5_ZTS23SideChannelReadIOPipeID_i_llvm_f000mchannelreadiopipeid0 thei_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15 (
        .in_buffer_in(in_arg0),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_select_63(BITSELECT,55)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_const_9(CONSTANT,53)
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_join(BITJOIN,54)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_const_9_q};

    // i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x(ADD,87)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k5_zts23sidechannelreadiopipeid15_vt_join_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_b = {1'b0, i_unnamed_k5_zts23sidechannelreadiopipeid0_shift_join_x_q};
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_o = $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_a) + $unsigned(i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_b);
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_q = i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_o[64:0];

    // i_unnamed_k5_zts23sidechannelreadiopipeid0_dupName_0_trunc_sel_x(BITSELECT,92)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid0_dupName_0_trunc_sel_x_b = i_unnamed_k5_zts23sidechannelreadiopipeid0_add_x_q[63:0];

    // i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_select_63(BITSELECT,65)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_select_63_b = i_unnamed_k5_zts23sidechannelreadiopipeid0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_const_1(CONSTANT,63)
    assign i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_join(BITJOIN,64)@2
    assign i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_join_q = {i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_select_63_b, i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_const_1_q};

    // sync_out_aunroll_x(GPOUT,93)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going_k5_zts23sidechannelreadiopipeid6_out_data_out_1_q;
    assign out_c0_exi5_2_tpl = i_unnamed_k5_zts23sidechannelreadiopipeid17_vt_join_q;
    assign out_c0_exi5_3_tpl = i_first_cleanup_xor_or_k5_zts23sidechannelreadiopipeid19_q;
    assign out_c0_exi5_4_tpl = i_first_cleanup_xor_or3_k5_zts23sidechannelreadiopipeid21_q;
    assign out_c0_exi5_5_tpl = i_masked_k5_zts23sidechannelreadiopipeid33_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k5_ZTS23SideChannelReadIOPipeID6 = GND_q;

endmodule

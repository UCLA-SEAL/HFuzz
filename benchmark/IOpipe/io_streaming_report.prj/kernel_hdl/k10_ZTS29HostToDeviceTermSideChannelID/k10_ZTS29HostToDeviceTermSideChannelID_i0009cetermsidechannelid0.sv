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

// SystemVerilog created from i_sfc_logic_s_c0_in_lr_ph_zts29hosttodevicetermsidechannelids_c0_enter1_k10_zts29hosttodevicetermsidechannelid0
// Created for function/kernel k10_ZTS29HostToDeviceTermSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:19 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k10_ZTS29HostToDeviceTermSideChannelID_i0009cetermsidechannelid0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_exiting_stall_out,
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
    output wire [0:0] out_unnamed_k10_ZTS29HostToDeviceTermSideChannelID6,
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
    wire [3:0] i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_join_q;
    wire [3:0] i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_in;
    wire [2:0] i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_b;
    wire [66:0] i_exitcond_k10_zts29hosttodevicetermsidechannelid24_a;
    wire [66:0] i_exitcond_k10_zts29hosttodevicetermsidechannelid24_b;
    logic [66:0] i_exitcond_k10_zts29hosttodevicetermsidechannelid24_o;
    wire [0:0] i_exitcond_k10_zts29hosttodevicetermsidechannelid24_n;
    wire [0:0] i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4_q;
    wire [0:0] i_first_cleanup_xor_or3_k10_zts29hosttodevicetermsidechannelid21_q;
    wire [0:0] i_first_cleanup_xor_or_k10_zts29hosttodevicetermsidechannelid19_q;
    wire [65:0] i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_a;
    wire [65:0] i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_b;
    logic [65:0] i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_o;
    wire [65:0] i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_s;
    reg [64:0] i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid4_k10_zts29hosttodevicetermsidechannelid18_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid5_k10_zts29hosttodevicetermsidechannelid20_out_dest_data_out_0_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_pipeline_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_feedback_stall_out_5;
    wire [63:0] i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_feedback_stall_out_4;
    wire [64:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_valid_out_5;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_valid_out_4;
    wire [127:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_valid_out_3;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_select_63_b;
    wire [0:0] i_masked_k10_zts29hosttodevicetermsidechannelid33_q;
    wire [0:0] i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_s;
    reg [3:0] i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_q;
    wire [3:0] i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_join_q;
    wire [3:0] i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_in;
    wire [2:0] i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_b;
    wire [0:0] i_notcmp_k10_zts29hosttodevicetermsidechannelid26_q;
    wire [0:0] i_or_k10_zts29hosttodevicetermsidechannelid28_q;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid22_a;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid22_b;
    logic [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid22_o;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid22_q;
    wire [64:0] bgTrunc_i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_k10_zts29hosttodevicetermsidechannelid22_sel_x_b;
    wire [0:0] i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x_b;
    wire [0:0] i_last_initeration_k10_zts29hosttodevicetermsidechannelid10_sel_x_b;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_a;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_b;
    logic [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_o;
    wire [64:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_q;
    wire [63:0] i_unnamed_k10_zts29hosttodevicetermsidechannelid0_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [4:0] i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q;
    wire [4:0] i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint;
    wire [2:0] i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q;
    wire [3:0] i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint;
    reg [0:0] redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together74_aunroll_x_in_i_valid_1(DELAY,109)
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

    // redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out);
        end
    end

    // i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs(BITSHIFT,106)@2
    assign i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint = { i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out, 1'b0 };
    assign i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q = i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint[4:0];

    // i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3(BITSELECT,29)@2
    assign i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_in = i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q[3:0];
    assign i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_b = i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_in[3:1];

    // i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_join(BITJOIN,28)@2
    assign i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_join_q = {i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4(LOGICAL,32)@2
    assign i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4_q = i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x_b ^ VCC_q;

    // i_notcmp_k10_zts29hosttodevicetermsidechannelid26(LOGICAL,61)@2
    assign i_notcmp_k10_zts29hosttodevicetermsidechannelid26_q = i_exitcond_k10_zts29hosttodevicetermsidechannelid24_n ^ VCC_q;

    // i_or_k10_zts29hosttodevicetermsidechannelid28(LOGICAL,62)@2
    assign i_or_k10_zts29hosttodevicetermsidechannelid28_q = i_notcmp_k10_zts29hosttodevicetermsidechannelid26_q | i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4_q;

    // i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29(MUX,57)@2
    assign i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_s = i_or_k10_zts29hosttodevicetermsidechannelid28_q;
    always @(i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_s or i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out or i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_join_q)
    begin
        unique case (i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_s)
            1'b0 : i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_q = i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out;
            1'b1 : i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_q = i_cleanups_shl_k10_zts29hosttodevicetermsidechannelid5_vt_join_q;
            default : i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30(BLACKBOX,48)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000kcetermsidechannelid0 thei_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30 (
        .in_data_in(i_next_cleanups_k10_zts29hosttodevicetermsidechannelid29_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_feedback_stall_out_6),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,108)
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

    // i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2(BLACKBOX,42)@2
    // out out_feedback_stall_out_6@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000ecetermsidechannelid0 thei_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i4_cleanups_push6_k10_zts29hosttodevicetermsidechannelid30_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x(BITSELECT,78)@2
    assign i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop6_k10_zts29hosttodevicetermsidechannelid2_out_data_out[0:0];

    // c_i65_undef53(CONSTANT,25)
    assign c_i65_undef53_q = $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12(BLACKBOX,40)@1
    k10_ZTS29HostToDeviceTermSideChannelID_i000ccetermsidechannelid0 thei_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_157(CONSTANT,24)
    assign c_i65_157_q = $unsigned(65'b11111111111111111111111111111111111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31(ADD,35)@1
    assign i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_a = {1'b0, i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q};
    assign i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_b = {1'b0, c_i65_157_q};
    assign i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_o = $unsigned(i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_a) + $unsigned(i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_b);
    assign i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_q = i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_o[65:0];

    // bgTrunc_i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_sel_x(BITSELECT,71)@1
    assign bgTrunc_i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_sel_x_b = i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_q[64:0];

    // i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32(BLACKBOX,51)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000ncetermsidechannelid0 thei_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_k10_zts29hosttodevicetermsidechannelid31_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_feedback_stall_out_3),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13(BLACKBOX,45)@1
    // out out_feedback_stall_out_3@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000hcetermsidechannelid0 thei_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13 (
        .in_data_in(c_i65_undef53_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i65_fpga_indvars_iv_push3_k10_zts29hosttodevicetermsidechannelid32_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14(MUX,36)@1
    assign i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_s or i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_data_out or i_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q = i_llvm_fpga_pop_i65_fpga_indvars_iv_pop3_k10_zts29hosttodevicetermsidechannelid13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q = i_llvm_fpga_ffwd_dest_i65_unnamed_k10_zts29hosttodevicetermsidechannelid2_k10_zts29hosttodevicetermsidechannelid12_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q = 65'b0;
        endcase
    end

    // i_exitcond_k10_zts29hosttodevicetermsidechannelid24(COMPARE,30)@1 + 1
    assign i_exitcond_k10_zts29hosttodevicetermsidechannelid24_a = $unsigned({{2{i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q[64]}}, i_fpga_indvars_iv_replace_phi_k10_zts29hosttodevicetermsidechannelid14_q});
    assign i_exitcond_k10_zts29hosttodevicetermsidechannelid24_b = $unsigned({{2{c_i65_undef53_q[64]}}, c_i65_undef53_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_exitcond_k10_zts29hosttodevicetermsidechannelid24_o <= 67'b0;
        end
        else
        begin
            i_exitcond_k10_zts29hosttodevicetermsidechannelid24_o <= $unsigned($signed(i_exitcond_k10_zts29hosttodevicetermsidechannelid24_a) - $signed(i_exitcond_k10_zts29hosttodevicetermsidechannelid24_b));
        end
    end
    assign i_exitcond_k10_zts29hosttodevicetermsidechannelid24_n[0] = ~ (i_exitcond_k10_zts29hosttodevicetermsidechannelid24_o[66]);

    // i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27(BLACKBOX,47)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000jcetermsidechannelid0 thei_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27 (
        .in_data_in(i_exitcond_k10_zts29hosttodevicetermsidechannelid24_n),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together74_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,92)@1 + 1
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

    // valid_fanout_reg1(REG,90)@1 + 1
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

    // valid_fanout_reg2(REG,91)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9(BLACKBOX,49)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000lcetermsidechannelid0 thei_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9 (
        .in_data_in(i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_join_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_feedback_stall_out_5),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7(BLACKBOX,43)@2
    // out out_feedback_stall_out_5@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000fcetermsidechannelid0 thei_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i4_initerations_push5_k10_zts29hosttodevicetermsidechannelid9_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs(BITSHIFT,107)@2
    assign i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint = i_llvm_fpga_pop_i4_initerations_pop5_k10_zts29hosttodevicetermsidechannelid7_out_data_out;
    assign i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q = i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_qint[3:1];

    // i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2(BITSELECT,60)@2
    assign i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_in = {1'b0, i_next_initerations_k10_zts29hosttodevicetermsidechannelid0_shift_x_fs_q};
    assign i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_b = i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_in[2:0];

    // i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_join(BITJOIN,59)@2
    assign i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_join_q = {GND_q, i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_select_2_b};

    // i_last_initeration_k10_zts29hosttodevicetermsidechannelid10_sel_x(BITSELECT,79)@2
    assign i_last_initeration_k10_zts29hosttodevicetermsidechannelid10_sel_x_b = i_next_initerations_k10_zts29hosttodevicetermsidechannelid8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11(BLACKBOX,46)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000icetermsidechannelid0 thei_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11 (
        .in_data_in(i_last_initeration_k10_zts29hosttodevicetermsidechannelid10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6(BLACKBOX,41)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000dcetermsidechannelid0 thei_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_k10_zts29hosttodevicetermsidechannelid11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k10_zts29hosttodevicetermsidechannelid27_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,89)@1 + 1
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

    // i_masked_k10_zts29hosttodevicetermsidechannelid33(LOGICAL,56)@2
    assign i_masked_k10_zts29hosttodevicetermsidechannelid33_q = i_notcmp_k10_zts29hosttodevicetermsidechannelid26_q & i_first_cleanup_k10_zts29hosttodevicetermsidechannelid3_sel_x_b;

    // valid_fanout_reg7(REG,96)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid5_k10_zts29hosttodevicetermsidechannelid20(BLACKBOX,39)@2
    k10_ZTS29HostToDeviceTermSideChannelID_i000bcetermsidechannelid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid5_k10_zts29hosttodevicetermsidechannelid20 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid5_k10_zts29hosttodevicetermsidechannelid20_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or3_k10_zts29hosttodevicetermsidechannelid21(LOGICAL,33)@2
    assign i_first_cleanup_xor_or3_k10_zts29hosttodevicetermsidechannelid21_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid5_k10_zts29hosttodevicetermsidechannelid20_out_dest_data_out_0_0 | i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4_q;

    // valid_fanout_reg6(REG,95)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid4_k10_zts29hosttodevicetermsidechannelid18(BLACKBOX,38)@2
    k10_ZTS29HostToDeviceTermSideChannelID_i000acetermsidechannelid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid4_k10_zts29hosttodevicetermsidechannelid18 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid4_k10_zts29hosttodevicetermsidechannelid18_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_k10_zts29hosttodevicetermsidechannelid19(LOGICAL,34)@2
    assign i_first_cleanup_xor_or_k10_zts29hosttodevicetermsidechannelid19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_k10_zts29hosttodevicetermsidechannelid4_k10_zts29hosttodevicetermsidechannelid18_out_dest_data_out_0_0 | i_first_cleanup_xor_k10_zts29hosttodevicetermsidechannelid4_q;

    // valid_fanout_reg5(REG,94)@1 + 1
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

    // valid_fanout_reg8(REG,97)@1 + 1
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

    // i_unnamed_k10_zts29hosttodevicetermsidechannelid22(ADD,63)@2
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid22_a = {1'b0, i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_data_out};
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid22_b = {1'b0, c_i64_155_q};
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid22_o = $unsigned(i_unnamed_k10_zts29hosttodevicetermsidechannelid22_a) + $unsigned(i_unnamed_k10_zts29hosttodevicetermsidechannelid22_b);
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid22_q = i_unnamed_k10_zts29hosttodevicetermsidechannelid22_o[64:0];

    // bgTrunc_i_unnamed_k10_zts29hosttodevicetermsidechannelid22_sel_x(BITSELECT,72)@2
    assign bgTrunc_i_unnamed_k10_zts29hosttodevicetermsidechannelid22_sel_x_b = i_unnamed_k10_zts29hosttodevicetermsidechannelid22_q[63:0];

    // i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23(BLACKBOX,50)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000mcetermsidechannelid0 thei_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23 (
        .in_data_in(bgTrunc_i_unnamed_k10_zts29hosttodevicetermsidechannelid22_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_feedback_stall_out_4),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_054(CONSTANT,22)
    assign c_i64_054_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16(BLACKBOX,44)@2
    // out out_feedback_stall_out_4@20000000
    k10_ZTS29HostToDeviceTermSideChannelID_i000gcetermsidechannelid0 thei_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16 (
        .in_data_in(c_i64_054_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i64_acl_0_i8_push4_k10_zts29hosttodevicetermsidechannelid23_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,93)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15(BLACKBOX,52)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    k10_ZTS29HostToDeviceTermSideChannelID_i000ocetermsidechannelid0 thei_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15 (
        .in_buffer_in(in_arg0),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_select_63(BITSELECT,55)@2
    assign i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_const_9(CONSTANT,53)
    assign i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_join(BITJOIN,54)@2
    assign i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_const_9_q};

    // i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x(ADD,84)@2
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i8_arg0_sync_buffer_k10_zts29hosttodevicetermsidechannelid15_vt_join_q};
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_b = {1'b0, i_llvm_fpga_pop_i64_acl_0_i8_pop4_k10_zts29hosttodevicetermsidechannelid16_out_data_out};
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_o = $unsigned(i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_a) + $unsigned(i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_b);
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_q = i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_o[64:0];

    // i_unnamed_k10_zts29hosttodevicetermsidechannelid0_trunc_sel_x(BITSELECT,86)@2
    assign i_unnamed_k10_zts29hosttodevicetermsidechannelid0_trunc_sel_x_b = i_unnamed_k10_zts29hosttodevicetermsidechannelid0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,87)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going_k10_zts29hosttodevicetermsidechannelid6_out_data_out_1_q;
    assign out_c0_exi5_2_tpl = i_unnamed_k10_zts29hosttodevicetermsidechannelid0_trunc_sel_x_b;
    assign out_c0_exi5_3_tpl = i_first_cleanup_xor_or_k10_zts29hosttodevicetermsidechannelid19_q;
    assign out_c0_exi5_4_tpl = i_first_cleanup_xor_or3_k10_zts29hosttodevicetermsidechannelid21_q;
    assign out_c0_exi5_5_tpl = i_masked_k10_zts29hosttodevicetermsidechannelid33_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k10_ZTS29HostToDeviceTermSideChannelID6 = GND_q;

endmodule

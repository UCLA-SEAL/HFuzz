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

// SystemVerilog created from i_sfc_logic_s_c1_in_lr_ph_zts26devicetohosttsidechannelids_c1_enter_k9_zts26devicetohosttsidechannelid0
// Created for function/kernel k9_ZTS26DeviceToHostTSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:22 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k9_ZTS26DeviceToHostTSideChannelID_i_sfc0001ohosttsidechannelid0 (
    input wire [63:0] in_arg0,
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [63:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k9_ZTS26DeviceToHostTSideChannelID5,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [0:0] in_c1_eni2_1_tpl,
    input wire [0:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_011_q;
    wire [63:0] c_i64_112_q;
    wire [63:0] i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_feedback_stall_out_4;
    wire [63:0] i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_valid_out_4;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_select_63_b;
    wire [1:0] i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_const_1_q;
    wire [63:0] i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_join_q;
    wire [61:0] i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_select_63_b;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid5_a;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid5_b;
    logic [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid5_o;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid5_q;
    wire [63:0] bgTrunc_i_unnamed_k9_zts26devicetohosttsidechannelid5_sel_x_b;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_a;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_b;
    logic [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_o;
    wire [64:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_q;
    wire [61:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_narrow_x_b;
    wire [63:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_shift_join_x_q;
    wire [63:0] i_unnamed_k9_zts26devicetohosttsidechannelid0_dupName_0_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [0:0] redist0_sync_together17_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together17_aunroll_x_in_c1_eni2_2_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,29)@5 + 1
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

    // valid_fanout_reg2(REG,31)@5 + 1
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

    // valid_fanout_reg3(REG,32)@5 + 1
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

    // c_i64_112(CONSTANT,7)
    assign c_i64_112_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_unnamed_k9_zts26devicetohosttsidechannelid5(ADD,17)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid5_a = {1'b0, i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_data_out};
    assign i_unnamed_k9_zts26devicetohosttsidechannelid5_b = {1'b0, c_i64_112_q};
    assign i_unnamed_k9_zts26devicetohosttsidechannelid5_o = $unsigned(i_unnamed_k9_zts26devicetohosttsidechannelid5_a) + $unsigned(i_unnamed_k9_zts26devicetohosttsidechannelid5_b);
    assign i_unnamed_k9_zts26devicetohosttsidechannelid5_q = i_unnamed_k9_zts26devicetohosttsidechannelid5_o[64:0];

    // bgTrunc_i_unnamed_k9_zts26devicetohosttsidechannelid5_sel_x(BITSELECT,20)@6
    assign bgTrunc_i_unnamed_k9_zts26devicetohosttsidechannelid5_sel_x_b = i_unnamed_k9_zts26devicetohosttsidechannelid5_q[63:0];

    // redist1_sync_together17_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c1_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together17_aunroll_x_in_c1_eni2_2_tpl_1_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6(BLACKBOX,9)@6
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    k9_ZTS26DeviceToHostTSideChannelID_i_llv000mohosttsidechannelid0 thei_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6 (
        .in_c1_ene2(redist1_sync_together17_aunroll_x_in_c1_eni2_2_tpl_1_q),
        .in_data_in(bgTrunc_i_unnamed_k9_zts26devicetohosttsidechannelid5_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_feedback_stall_out_4),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together17_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together17_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together17_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // c_i64_011(CONSTANT,6)
    assign c_i64_011_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3(BLACKBOX,8)@6
    // out out_feedback_stall_out_4@20000000
    k9_ZTS26DeviceToHostTSideChannelID_i_llv000lohosttsidechannelid0 thei_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3 (
        .in_data_in(c_i64_011_q),
        .in_dir(redist0_sync_together17_aunroll_x_in_c1_eni2_1_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i64_acl_0_i9_push4_k9_zts26devicetohosttsidechannelid6_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_k9_zts26devicetohosttsidechannelid0_narrow_x(BITSELECT,23)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_narrow_x_b = i_llvm_fpga_pop_i64_acl_0_i9_pop4_k9_zts26devicetohosttsidechannelid3_out_data_out[61:0];

    // i_unnamed_k9_zts26devicetohosttsidechannelid0_shift_join_x(BITJOIN,24)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_shift_join_x_q = {i_unnamed_k9_zts26devicetohosttsidechannelid0_narrow_x_b, i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_const_1_q};

    // valid_fanout_reg1(REG,30)@5 + 1
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

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2(BLACKBOX,10)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    k9_ZTS26DeviceToHostTSideChannelID_i_llv000nohosttsidechannelid0 thei_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2 (
        .in_buffer_in(in_arg0),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_select_63(BITSELECT,13)@6
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_const_9(CONSTANT,11)
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_join(BITJOIN,12)@6
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_const_9_q};

    // i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x(ADD,21)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k9_zts26devicetohosttsidechannelid2_vt_join_q};
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_b = {1'b0, i_unnamed_k9_zts26devicetohosttsidechannelid0_shift_join_x_q};
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_o = $unsigned(i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_a) + $unsigned(i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_b);
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_q = i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_o[64:0];

    // i_unnamed_k9_zts26devicetohosttsidechannelid0_dupName_0_trunc_sel_x(BITSELECT,26)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid0_dupName_0_trunc_sel_x_b = i_unnamed_k9_zts26devicetohosttsidechannelid0_add_x_q[63:0];

    // i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_select_63(BITSELECT,16)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_select_63_b = i_unnamed_k9_zts26devicetohosttsidechannelid0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_const_1(CONSTANT,14)
    assign i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_join(BITJOIN,15)@6
    assign i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_join_q = {i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_select_63_b, i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,27)@6
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_unnamed_k9_zts26devicetohosttsidechannelid4_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_k9_ZTS26DeviceToHostTSideChannelID5 = GND_q;

endmodule

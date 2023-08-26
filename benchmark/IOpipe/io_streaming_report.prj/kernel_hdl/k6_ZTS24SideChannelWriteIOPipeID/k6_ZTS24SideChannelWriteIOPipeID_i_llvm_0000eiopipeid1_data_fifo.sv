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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid1_data_fifo
// Created for function/kernel k6_ZTS24SideChannelWriteIOPipeID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k6_ZTS24SideChannelWriteIOPipeID_i_llvm_0000eiopipeid1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc25_in;
    wire [0:0] adapt_scalar_trunc25_q;
    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [6:0] c_i7_010_q;
    wire [47:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [47:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full_bitsignaltemp;
    wire [47:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect16_b;
    wire [0:0] ip_dsdk_adapt_bitselect18_b;
    wire [0:0] ip_dsdk_adapt_bitselect20_b;
    wire [0:0] ip_dsdk_adapt_bitselect22_b;
    wire [0:0] ip_dsdk_adapt_bitselect24_b;
    wire [0:0] ip_dsdk_adapt_bitselect26_b;


    // c_i7_010(CONSTANT,8)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension13(BITJOIN,16)
    assign element_extension13_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension11(BITJOIN,15)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,20)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,19)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,18)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,17)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin1_q = {element_extension13_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0(EXTIFACE,21)
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(48)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,29)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_stall;

    // ip_dsdk_adapt_bitselect26(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[40:40];

    // adapt_scalar_trunc27(ROUND,7)
    assign adapt_scalar_trunc27_in = ip_dsdk_adapt_bitselect26_b;
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // ip_dsdk_adapt_bitselect24(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[32:32];

    // adapt_scalar_trunc25(ROUND,6)
    assign adapt_scalar_trunc25_in = ip_dsdk_adapt_bitselect24_b;
    assign adapt_scalar_trunc25_q = adapt_scalar_trunc25_in[0:0];

    // ip_dsdk_adapt_bitselect22(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[24:24];

    // adapt_scalar_trunc23(ROUND,5)
    assign adapt_scalar_trunc23_in = ip_dsdk_adapt_bitselect22_b;
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // ip_dsdk_adapt_bitselect20(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect20_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[16:16];

    // adapt_scalar_trunc21(ROUND,4)
    assign adapt_scalar_trunc21_in = ip_dsdk_adapt_bitselect20_b;
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // ip_dsdk_adapt_bitselect18(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[8:8];

    // adapt_scalar_trunc19(ROUND,3)
    assign adapt_scalar_trunc19_in = ip_dsdk_adapt_bitselect18_b;
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // ip_dsdk_adapt_bitselect16(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_data[0:0];

    // adapt_scalar_trunc17(ROUND,2)
    assign adapt_scalar_trunc17_in = ip_dsdk_adapt_bitselect16_b;
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,31)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc17_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc19_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc21_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc23_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc25_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc27_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_lr_ph_zts24sidechannelwriteiopipeids_c0_exit_k6_zts24sidechannelwriteiopipeid0_o_valid;

endmodule

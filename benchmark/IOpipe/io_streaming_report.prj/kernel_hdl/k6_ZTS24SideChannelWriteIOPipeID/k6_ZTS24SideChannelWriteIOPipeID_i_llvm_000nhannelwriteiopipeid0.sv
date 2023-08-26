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

// SystemVerilog created from i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid0
// Created for function/kernel k6_ZTS24SideChannelWriteIOPipeID
// SystemVerilog created on Wed Feb 16 17:20:21 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k6_ZTS24SideChannelWriteIOPipeID_i_llvm_000nhannelwriteiopipeid0 (
    input wire [63:0] in_buffer_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_buffer_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_buffer_in;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_select_63_b;


    // sync_out(GPOUT,9)@0
    assign out_stall_out = in_stall_in;

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1(EXTIFACE,2)@6
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_buffer_in = in_buffer_in;
    acl_dspba_buffer #(
        .WIDTH(64)
    ) thei_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1 (
        .buffer_in(in_buffer_in),
        .buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_buffer_out)
    );

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_select_63(BITSELECT,5)@6
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_const_9(CONSTANT,3)
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_join(BITJOIN,4)@6
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_const_9_q};

    // dupName_0_sync_out_x(GPOUT,11)@6
    assign out_buffer_out = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k6_zts24sidechannelwriteiopipeid1_vt_join_q;
    assign out_valid_out = in_valid_in;

endmodule

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

// SystemVerilog created from k11_ZTS30HostToDeviceDTermSideChannelID_function_wrapper
// Created for function/kernel k11_ZTS30HostToDeviceDTermSideChannelID
// SystemVerilog created on Wed Feb 16 17:20:19 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k11_ZTS30HostToDeviceDTermSideChannelID_function_wrapper (
    input wire [511:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_readdata,
    input wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_readdatavalid,
    input wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_waitrequest,
    input wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_writeack,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_ready,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [127:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [32:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_address,
    output wire [4:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_burstcount,
    output wire [63:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_byteenable,
    output wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_enable,
    output wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_read,
    output wire [0:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_write,
    output wire [511:0] avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_writedata,
    output wire [7:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_data,
    output wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_valid,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [63:0] arg_arg0_select_b;
    wire [63:0] arg_arg1_select_b;
    wire [7:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [32:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;
    wire [4:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;
    wire [63:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;
    wire [511:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_stall_out;
    wire [0:0] k11_ZTS30HostToDeviceDTermSideChannelID_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_arg1_select(BITSELECT,4)
    assign arg_arg1_select_b = kernel_arguments[127:64];

    // arg_arg0_select(BITSELECT,3)
    assign arg_arg0_select_b = kernel_arguments[63:0];

    // k11_ZTS30HostToDeviceDTermSideChannelID_function(BLACKBOX,45)
    k11_ZTS30HostToDeviceDTermSideChannelID_function thek11_ZTS30HostToDeviceDTermSideChannelID_function (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_arg0(arg_arg0_select_b),
        .in_arg_arg1(arg_arg1_select_b),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_i_fifoready(avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_ready),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdata(avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_readdata),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_readdatavalid(avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_readdatavalid),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_waitrequest(avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_waitrequest),
        .in_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writeack(avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_valid_in(kernel_valid_in),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write),
        .out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata),
        .out_stall_out(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_stall_out),
        .out_valid_out(k11_ZTS30HostToDeviceDTermSideChannelID_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_address(GPOUT,46)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_address = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_address;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_burstcount(GPOUT,47)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_burstcount = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_burstcount;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_byteenable(GPOUT,48)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_byteenable = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_byteenable;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_enable(GPOUT,49)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_enable = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_enable;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_read(GPOUT,50)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_read = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_read;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_write(GPOUT,51)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_write = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_write;

    // avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_writedata(GPOUT,52)
    assign avm_lm_k11_ZTS30HostToDeviceDTermSideChannelID_writedata = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_lm_k11_ZTS30HostToDeviceDTermSideChannelID_avm_writedata;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_data(GPOUT,53)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_data = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifodata;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_valid(GPOUT,54)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_valid = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeIN6detail12ProducerImplI30HostToDeviceDTermSideChannelIDcLb0ELm1EE6PipeIDEcLi1EE9m_StorageE_pipe_channel_o_fifovalid;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // clock2x_output(GPOUT,55)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,56)
    assign has_a_lsu_active = GND_q;

    // has_a_write_pending(GPOUT,57)
    assign has_a_write_pending = GND_q;

    // kernel_stall_out(GPOUT,58)
    assign kernel_stall_out = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_stall_out;

    // kernel_valid_out(GPOUT,59)
    assign kernel_valid_out = k11_ZTS30HostToDeviceDTermSideChannelID_function_out_valid_out;

endmodule

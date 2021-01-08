// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Wed Jan  6 20:33:19 2021
// Host        : XINGYF14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_4_stub.v
// Design      : fifo_generator_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_0,Vivado 2017.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, srst, din, wr_en, rd_en, prog_full_thresh, dout, 
  full, empty, prog_full)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[23:0],wr_en,rd_en,prog_full_thresh[8:0],dout[23:0],full,empty,prog_full" */;
  input clk;
  input srst;
  input [23:0]din;
  input wr_en;
  input rd_en;
  input [8:0]prog_full_thresh;
  output [23:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
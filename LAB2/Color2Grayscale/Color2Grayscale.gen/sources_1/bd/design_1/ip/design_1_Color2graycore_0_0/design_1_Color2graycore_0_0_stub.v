// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 15:45:17 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/valer/Documents/desd-labs/LAB2/Color2Grayscale/Color2Grayscale.gen/sources_1/bd/design_1/ip/design_1_Color2graycore_0_0/design_1_Color2graycore_0_0_stub.v
// Design      : design_1_Color2graycore_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Color2graycore,Vivado 2020.2" *)
module design_1_Color2graycore_0_0(ch0, ch1, ch2, valid, M_AXIS_ACLK, M_AXIS_ARESETN, 
  M_AXIS_TVALID, M_AXIS_TDATA, M_AXIS_TREADY)
/* synthesis syn_black_box black_box_pad_pin="ch0[7:0],ch1[7:0],ch2[7:0],valid,M_AXIS_ACLK,M_AXIS_ARESETN,M_AXIS_TVALID,M_AXIS_TDATA[7:0],M_AXIS_TREADY" */;
  input [7:0]ch0;
  input [7:0]ch1;
  input [7:0]ch2;
  input valid;
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output M_AXIS_TVALID;
  output [7:0]M_AXIS_TDATA;
  input M_AXIS_TREADY;
endmodule

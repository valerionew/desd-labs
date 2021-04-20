// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 17:06:12 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/valer/Documents/desd-labs/LAB2/SerialManager/SerialManager.gen/sources_1/bd/design_1/ip/design_1_edge_detector_0_0/design_1_edge_detector_0_0_stub.v
// Design      : design_1_edge_detector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "edge_detector,Vivado 2020.2" *)
module design_1_edge_detector_0_0(clk, reset, in_port, pos_edge_trigger, 
  neg_edge_trigger)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,in_port,pos_edge_trigger,neg_edge_trigger" */;
  input clk;
  input reset;
  input in_port;
  output pos_edge_trigger;
  output neg_edge_trigger;
endmodule

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:06:58 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_led_latch_0_2_stub.v
// Design      : design_1_led_latch_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_latch,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_AXIS_ACLK, S_AXIS_ARESETN, S_AXIS_TREADY, 
  S_AXIS_TDATA, S_AXIS_TVALID, LEDS)
/* synthesis syn_black_box black_box_pad_pin="S_AXIS_ACLK,S_AXIS_ARESETN,S_AXIS_TREADY,S_AXIS_TDATA[7:0],S_AXIS_TVALID,LEDS[15:0]" */;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  output S_AXIS_TREADY;
  input [7:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output [15:0]LEDS;
endmodule

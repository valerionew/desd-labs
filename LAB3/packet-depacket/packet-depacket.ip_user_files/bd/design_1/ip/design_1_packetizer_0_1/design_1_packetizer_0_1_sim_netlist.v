// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:28:54 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/valer/Documents/desd-labs/LAB3/packet-depacket/packet-depacket.gen/sources_1/bd/design_1/ip/design_1_packetizer_0_1/design_1_packetizer_0_1_sim_netlist.v
// Design      : design_1_packetizer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_packetizer_0_1,packetizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "packetizer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_packetizer_0_1
   (CLK,
    RESETN,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ACLK, ASSOCIATED_RESET S_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_RESET M_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input M_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input M_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;

  wire \<const0> ;
  wire CLK;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire RESETN;
  wire [15:0]S_AXIS_TDATA;
  wire S_AXIS_TVALID;

  assign S_AXIS_TREADY = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_packetizer_0_1_packetizer U0
       (.CLK(CLK),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .RESETN(RESETN),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "packetizer" *) 
module design_1_packetizer_0_1_packetizer
   (M_AXIS_TVALID,
    M_AXIS_TDATA,
    RESETN,
    M_AXIS_TREADY,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    CLK);
  output M_AXIS_TVALID;
  output [7:0]M_AXIS_TDATA;
  input RESETN;
  input M_AXIS_TREADY;
  input S_AXIS_TVALID;
  input [15:0]S_AXIS_TDATA;
  input CLK;

  wire CLK;
  wire COMPLETE_PACKET;
  wire COMPLETE_PACKET_i_1_n_0;
  wire COMPLETE_PACKET_i_2_n_0;
  wire COMPLETE_PACKET_reg_rep__0_n_0;
  wire COMPLETE_PACKET_reg_rep__1_n_0;
  wire COMPLETE_PACKET_reg_rep__2_n_0;
  wire COMPLETE_PACKET_reg_rep__3_n_0;
  wire COMPLETE_PACKET_reg_rep_n_0;
  wire COMPLETE_PACKET_rep_i_1__0_n_0;
  wire COMPLETE_PACKET_rep_i_1__1_n_0;
  wire COMPLETE_PACKET_rep_i_1__2_n_0;
  wire COMPLETE_PACKET_rep_i_1__3_n_0;
  wire COMPLETE_PACKET_rep_i_1_n_0;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TDATA0;
  wire \M_AXIS_TDATA[0]_i_1_n_0 ;
  wire \M_AXIS_TDATA[4]_i_1_n_0 ;
  wire \M_AXIS_TDATA[6]_i_1_n_0 ;
  wire \M_AXIS_TDATA[7]_i_1_n_0 ;
  wire \M_AXIS_TDATA[7]_i_2_n_0 ;
  wire \M_AXIS_TDATA[7]_i_3_n_0 ;
  wire \M_AXIS_TDATA[7]_i_4_n_0 ;
  wire \M_AXIS_TDATA[7]_i_5_n_0 ;
  wire \M_AXIS_TDATA[7]_i_6_n_0 ;
  wire \M_AXIS_TDATA[7]_i_7_n_0 ;
  wire \M_AXIS_TDATA[7]_i_8_n_0 ;
  wire \M_AXIS_TDATA[7]_i_9_n_0 ;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_s_i_1_n_0;
  wire RESETN;
  wire \SR[0][7]_i_10_n_0 ;
  wire \SR[0][7]_i_3_n_0 ;
  wire \SR[0][7]_i_4_n_0 ;
  wire \SR[0][7]_i_5_n_0 ;
  wire \SR[0][7]_i_6_n_0 ;
  wire \SR[0][7]_i_7_n_0 ;
  wire \SR[0][7]_i_8_n_0 ;
  wire \SR[0][7]_i_9_n_0 ;
  wire \SR[0]_0 ;
  wire \SR[10][0]_i_1_n_0 ;
  wire \SR[10][1]_i_1_n_0 ;
  wire \SR[10][2]_i_1_n_0 ;
  wire \SR[10][3]_i_1_n_0 ;
  wire \SR[10][4]_i_1_n_0 ;
  wire \SR[10][5]_i_1_n_0 ;
  wire \SR[10][6]_i_1_n_0 ;
  wire \SR[10][7]_i_1_n_0 ;
  wire \SR[11][0]_i_1_n_0 ;
  wire \SR[11][1]_i_1_n_0 ;
  wire \SR[11][2]_i_1_n_0 ;
  wire \SR[11][3]_i_1_n_0 ;
  wire \SR[11][4]_i_1_n_0 ;
  wire \SR[11][5]_i_1_n_0 ;
  wire \SR[11][6]_i_1_n_0 ;
  wire \SR[11][7]_i_1_n_0 ;
  wire \SR[12][0]_i_1_n_0 ;
  wire \SR[12][1]_i_1_n_0 ;
  wire \SR[12][2]_i_1_n_0 ;
  wire \SR[12][3]_i_1_n_0 ;
  wire \SR[12][4]_i_1_n_0 ;
  wire \SR[12][5]_i_1_n_0 ;
  wire \SR[12][6]_i_1_n_0 ;
  wire \SR[12][7]_i_1_n_0 ;
  wire \SR[13][0]_i_1_n_0 ;
  wire \SR[13][1]_i_1_n_0 ;
  wire \SR[13][2]_i_1_n_0 ;
  wire \SR[13][3]_i_1_n_0 ;
  wire \SR[13][4]_i_1_n_0 ;
  wire \SR[13][5]_i_1_n_0 ;
  wire \SR[13][6]_i_1_n_0 ;
  wire \SR[13][7]_i_1_n_0 ;
  wire \SR[14][0]_i_1_n_0 ;
  wire \SR[14][1]_i_1_n_0 ;
  wire \SR[14][2]_i_1_n_0 ;
  wire \SR[14][3]_i_1_n_0 ;
  wire \SR[14][4]_i_1_n_0 ;
  wire \SR[14][5]_i_1_n_0 ;
  wire \SR[14][6]_i_1_n_0 ;
  wire \SR[14][7]_i_1_n_0 ;
  wire \SR[15][0]_i_1_n_0 ;
  wire \SR[15][1]_i_1_n_0 ;
  wire \SR[15][2]_i_1_n_0 ;
  wire \SR[15][3]_i_1_n_0 ;
  wire \SR[15][4]_i_1_n_0 ;
  wire \SR[15][5]_i_1_n_0 ;
  wire \SR[15][6]_i_1_n_0 ;
  wire \SR[15][7]_i_1_n_0 ;
  wire \SR[16][0]_i_1_n_0 ;
  wire \SR[16][1]_i_1_n_0 ;
  wire \SR[16][2]_i_1_n_0 ;
  wire \SR[16][3]_i_1_n_0 ;
  wire \SR[16][4]_i_1_n_0 ;
  wire \SR[16][5]_i_1_n_0 ;
  wire \SR[16][6]_i_1_n_0 ;
  wire \SR[16][7]_i_1_n_0 ;
  wire \SR[17][0]_i_1_n_0 ;
  wire \SR[17][1]_i_1_n_0 ;
  wire \SR[17][2]_i_1_n_0 ;
  wire \SR[17][3]_i_1_n_0 ;
  wire \SR[17][4]_i_1_n_0 ;
  wire \SR[17][5]_i_1_n_0 ;
  wire \SR[17][6]_i_1_n_0 ;
  wire \SR[17][7]_i_1_n_0 ;
  wire \SR[18][0]_i_1_n_0 ;
  wire \SR[18][1]_i_1_n_0 ;
  wire \SR[18][2]_i_1_n_0 ;
  wire \SR[18][3]_i_1_n_0 ;
  wire \SR[18][4]_i_1_n_0 ;
  wire \SR[18][5]_i_1_n_0 ;
  wire \SR[18][6]_i_1_n_0 ;
  wire \SR[18][7]_i_1_n_0 ;
  wire \SR[19][0]_i_1_n_0 ;
  wire \SR[19][1]_i_1_n_0 ;
  wire \SR[19][2]_i_1_n_0 ;
  wire \SR[19][3]_i_1_n_0 ;
  wire \SR[19][4]_i_1_n_0 ;
  wire \SR[19][5]_i_1_n_0 ;
  wire \SR[19][6]_i_1_n_0 ;
  wire \SR[19][7]_i_1_n_0 ;
  wire \SR[1]_1 ;
  wire \SR[20][0]_i_1_n_0 ;
  wire \SR[20][1]_i_1_n_0 ;
  wire \SR[20][2]_i_1_n_0 ;
  wire \SR[20][3]_i_1_n_0 ;
  wire \SR[20][4]_i_1_n_0 ;
  wire \SR[20][5]_i_1_n_0 ;
  wire \SR[20][6]_i_1_n_0 ;
  wire \SR[20][7]_i_1_n_0 ;
  wire \SR[21][0]_i_1_n_0 ;
  wire \SR[21][1]_i_1_n_0 ;
  wire \SR[21][2]_i_1_n_0 ;
  wire \SR[21][3]_i_1_n_0 ;
  wire \SR[21][4]_i_1_n_0 ;
  wire \SR[21][5]_i_1_n_0 ;
  wire \SR[21][6]_i_1_n_0 ;
  wire \SR[21][7]_i_1_n_0 ;
  wire \SR[22][0]_i_1_n_0 ;
  wire \SR[22][1]_i_1_n_0 ;
  wire \SR[22][2]_i_1_n_0 ;
  wire \SR[22][3]_i_1_n_0 ;
  wire \SR[22][4]_i_1_n_0 ;
  wire \SR[22][5]_i_1_n_0 ;
  wire \SR[22][6]_i_1_n_0 ;
  wire \SR[22][7]_i_1_n_0 ;
  wire \SR[23][0]_i_1_n_0 ;
  wire \SR[23][1]_i_1_n_0 ;
  wire \SR[23][2]_i_1_n_0 ;
  wire \SR[23][3]_i_1_n_0 ;
  wire \SR[23][4]_i_1_n_0 ;
  wire \SR[23][5]_i_1_n_0 ;
  wire \SR[23][6]_i_1_n_0 ;
  wire \SR[23][7]_i_1_n_0 ;
  wire \SR[24][0]_i_1_n_0 ;
  wire \SR[24][1]_i_1_n_0 ;
  wire \SR[24][2]_i_1_n_0 ;
  wire \SR[24][3]_i_1_n_0 ;
  wire \SR[24][4]_i_1_n_0 ;
  wire \SR[24][5]_i_1_n_0 ;
  wire \SR[24][6]_i_1_n_0 ;
  wire \SR[24][7]_i_1_n_0 ;
  wire \SR[25][0]_i_1_n_0 ;
  wire \SR[25][1]_i_1_n_0 ;
  wire \SR[25][2]_i_1_n_0 ;
  wire \SR[25][3]_i_1_n_0 ;
  wire \SR[25][4]_i_1_n_0 ;
  wire \SR[25][5]_i_1_n_0 ;
  wire \SR[25][6]_i_1_n_0 ;
  wire \SR[25][7]_i_1_n_0 ;
  wire \SR[26][0]_i_1_n_0 ;
  wire \SR[26][1]_i_1_n_0 ;
  wire \SR[26][2]_i_1_n_0 ;
  wire \SR[26][3]_i_1_n_0 ;
  wire \SR[26][4]_i_1_n_0 ;
  wire \SR[26][5]_i_1_n_0 ;
  wire \SR[26][6]_i_1_n_0 ;
  wire \SR[26][7]_i_1_n_0 ;
  wire \SR[27][0]_i_1_n_0 ;
  wire \SR[27][1]_i_1_n_0 ;
  wire \SR[27][2]_i_1_n_0 ;
  wire \SR[27][3]_i_1_n_0 ;
  wire \SR[27][4]_i_1_n_0 ;
  wire \SR[27][5]_i_1_n_0 ;
  wire \SR[27][6]_i_1_n_0 ;
  wire \SR[27][7]_i_1_n_0 ;
  wire \SR[28][0]_i_1_n_0 ;
  wire \SR[28][1]_i_1_n_0 ;
  wire \SR[28][2]_i_1_n_0 ;
  wire \SR[28][3]_i_1_n_0 ;
  wire \SR[28][4]_i_1_n_0 ;
  wire \SR[28][5]_i_1_n_0 ;
  wire \SR[28][6]_i_1_n_0 ;
  wire \SR[28][7]_i_1_n_0 ;
  wire \SR[29][0]_i_1_n_0 ;
  wire \SR[29][1]_i_1_n_0 ;
  wire \SR[29][2]_i_1_n_0 ;
  wire \SR[29][3]_i_1_n_0 ;
  wire \SR[29][4]_i_1_n_0 ;
  wire \SR[29][5]_i_1_n_0 ;
  wire \SR[29][6]_i_1_n_0 ;
  wire \SR[29][7]_i_1_n_0 ;
  wire \SR[2][0]_i_1_n_0 ;
  wire \SR[2][1]_i_1_n_0 ;
  wire \SR[2][2]_i_1_n_0 ;
  wire \SR[2][3]_i_1_n_0 ;
  wire \SR[2][4]_i_1_n_0 ;
  wire \SR[2][5]_i_1_n_0 ;
  wire \SR[2][6]_i_1_n_0 ;
  wire \SR[2][7]_i_1_n_0 ;
  wire \SR[30][0]_i_1_n_0 ;
  wire \SR[30][1]_i_1_n_0 ;
  wire \SR[30][2]_i_1_n_0 ;
  wire \SR[30][3]_i_1_n_0 ;
  wire \SR[30][4]_i_1_n_0 ;
  wire \SR[30][5]_i_1_n_0 ;
  wire \SR[30][6]_i_1_n_0 ;
  wire \SR[30][7]_i_1_n_0 ;
  wire \SR[31][0]_i_1_n_0 ;
  wire \SR[31][1]_i_1_n_0 ;
  wire \SR[31][2]_i_1_n_0 ;
  wire \SR[31][3]_i_1_n_0 ;
  wire \SR[31][4]_i_1_n_0 ;
  wire \SR[31][5]_i_1_n_0 ;
  wire \SR[31][6]_i_1_n_0 ;
  wire \SR[31][7]_i_1_n_0 ;
  wire \SR[32][0]_i_1_n_0 ;
  wire \SR[32][1]_i_1_n_0 ;
  wire \SR[32][2]_i_1_n_0 ;
  wire \SR[32][3]_i_1_n_0 ;
  wire \SR[32][4]_i_1_n_0 ;
  wire \SR[32][5]_i_1_n_0 ;
  wire \SR[32][6]_i_1_n_0 ;
  wire \SR[32][7]_i_1_n_0 ;
  wire \SR[33][0]_i_1_n_0 ;
  wire \SR[33][1]_i_1_n_0 ;
  wire \SR[33][2]_i_1_n_0 ;
  wire \SR[33][3]_i_1_n_0 ;
  wire \SR[33][4]_i_1_n_0 ;
  wire \SR[33][5]_i_1_n_0 ;
  wire \SR[33][6]_i_1_n_0 ;
  wire \SR[33][7]_i_1_n_0 ;
  wire \SR[34][0]_i_1_n_0 ;
  wire \SR[34][1]_i_1_n_0 ;
  wire \SR[34][2]_i_1_n_0 ;
  wire \SR[34][3]_i_1_n_0 ;
  wire \SR[34][4]_i_1_n_0 ;
  wire \SR[34][5]_i_1_n_0 ;
  wire \SR[34][6]_i_1_n_0 ;
  wire \SR[34][7]_i_1_n_0 ;
  wire \SR[35][0]_i_1_n_0 ;
  wire \SR[35][1]_i_1_n_0 ;
  wire \SR[35][2]_i_1_n_0 ;
  wire \SR[35][3]_i_1_n_0 ;
  wire \SR[35][4]_i_1_n_0 ;
  wire \SR[35][5]_i_1_n_0 ;
  wire \SR[35][6]_i_1_n_0 ;
  wire \SR[35][7]_i_1_n_0 ;
  wire \SR[36][0]_i_1_n_0 ;
  wire \SR[36][1]_i_1_n_0 ;
  wire \SR[36][2]_i_1_n_0 ;
  wire \SR[36][3]_i_1_n_0 ;
  wire \SR[36][4]_i_1_n_0 ;
  wire \SR[36][5]_i_1_n_0 ;
  wire \SR[36][6]_i_1_n_0 ;
  wire \SR[36][7]_i_1_n_0 ;
  wire \SR[37][0]_i_1_n_0 ;
  wire \SR[37][1]_i_1_n_0 ;
  wire \SR[37][2]_i_1_n_0 ;
  wire \SR[37][3]_i_1_n_0 ;
  wire \SR[37][4]_i_1_n_0 ;
  wire \SR[37][5]_i_1_n_0 ;
  wire \SR[37][6]_i_1_n_0 ;
  wire \SR[37][7]_i_1_n_0 ;
  wire \SR[38][0]_i_1_n_0 ;
  wire \SR[38][1]_i_1_n_0 ;
  wire \SR[38][2]_i_1_n_0 ;
  wire \SR[38][3]_i_1_n_0 ;
  wire \SR[38][4]_i_1_n_0 ;
  wire \SR[38][5]_i_1_n_0 ;
  wire \SR[38][6]_i_1_n_0 ;
  wire \SR[38][7]_i_1_n_0 ;
  wire \SR[39][0]_i_1_n_0 ;
  wire \SR[39][1]_i_1_n_0 ;
  wire \SR[39][2]_i_1_n_0 ;
  wire \SR[39][3]_i_1_n_0 ;
  wire \SR[39][4]_i_1_n_0 ;
  wire \SR[39][5]_i_1_n_0 ;
  wire \SR[39][6]_i_1_n_0 ;
  wire \SR[39][7]_i_1_n_0 ;
  wire \SR[3][0]_i_1_n_0 ;
  wire \SR[3][1]_i_1_n_0 ;
  wire \SR[3][2]_i_1_n_0 ;
  wire \SR[3][3]_i_1_n_0 ;
  wire \SR[3][4]_i_1_n_0 ;
  wire \SR[3][5]_i_1_n_0 ;
  wire \SR[3][6]_i_1_n_0 ;
  wire \SR[3][7]_i_1_n_0 ;
  wire \SR[40][0]_i_1_n_0 ;
  wire \SR[40][1]_i_1_n_0 ;
  wire \SR[40][2]_i_1_n_0 ;
  wire \SR[40][3]_i_1_n_0 ;
  wire \SR[40][4]_i_1_n_0 ;
  wire \SR[40][5]_i_1_n_0 ;
  wire \SR[40][6]_i_1_n_0 ;
  wire \SR[40][7]_i_1_n_0 ;
  wire \SR[41][0]_i_1_n_0 ;
  wire \SR[41][1]_i_1_n_0 ;
  wire \SR[41][2]_i_1_n_0 ;
  wire \SR[41][3]_i_1_n_0 ;
  wire \SR[41][4]_i_1_n_0 ;
  wire \SR[41][5]_i_1_n_0 ;
  wire \SR[41][6]_i_1_n_0 ;
  wire \SR[41][7]_i_1_n_0 ;
  wire \SR[42][0]_i_1_n_0 ;
  wire \SR[42][1]_i_1_n_0 ;
  wire \SR[42][2]_i_1_n_0 ;
  wire \SR[42][3]_i_1_n_0 ;
  wire \SR[42][4]_i_1_n_0 ;
  wire \SR[42][5]_i_1_n_0 ;
  wire \SR[42][6]_i_1_n_0 ;
  wire \SR[42][7]_i_1_n_0 ;
  wire \SR[43][0]_i_1_n_0 ;
  wire \SR[43][1]_i_1_n_0 ;
  wire \SR[43][2]_i_1_n_0 ;
  wire \SR[43][3]_i_1_n_0 ;
  wire \SR[43][4]_i_1_n_0 ;
  wire \SR[43][5]_i_1_n_0 ;
  wire \SR[43][6]_i_1_n_0 ;
  wire \SR[43][7]_i_1_n_0 ;
  wire \SR[44][0]_i_1_n_0 ;
  wire \SR[44][1]_i_1_n_0 ;
  wire \SR[44][2]_i_1_n_0 ;
  wire \SR[44][3]_i_1_n_0 ;
  wire \SR[44][4]_i_1_n_0 ;
  wire \SR[44][5]_i_1_n_0 ;
  wire \SR[44][6]_i_1_n_0 ;
  wire \SR[44][7]_i_1_n_0 ;
  wire \SR[45][0]_i_1_n_0 ;
  wire \SR[45][1]_i_1_n_0 ;
  wire \SR[45][2]_i_1_n_0 ;
  wire \SR[45][3]_i_1_n_0 ;
  wire \SR[45][4]_i_1_n_0 ;
  wire \SR[45][5]_i_1_n_0 ;
  wire \SR[45][6]_i_1_n_0 ;
  wire \SR[45][7]_i_1_n_0 ;
  wire \SR[46][0]_i_1_n_0 ;
  wire \SR[46][1]_i_1_n_0 ;
  wire \SR[46][2]_i_1_n_0 ;
  wire \SR[46][3]_i_1_n_0 ;
  wire \SR[46][4]_i_1_n_0 ;
  wire \SR[46][5]_i_1_n_0 ;
  wire \SR[46][6]_i_1_n_0 ;
  wire \SR[46][7]_i_1_n_0 ;
  wire \SR[47][0]_i_1_n_0 ;
  wire \SR[47][1]_i_1_n_0 ;
  wire \SR[47][2]_i_1_n_0 ;
  wire \SR[47][3]_i_1_n_0 ;
  wire \SR[47][4]_i_1_n_0 ;
  wire \SR[47][5]_i_1_n_0 ;
  wire \SR[47][6]_i_1_n_0 ;
  wire \SR[47][7]_i_1_n_0 ;
  wire \SR[48][0]_i_1_n_0 ;
  wire \SR[48][1]_i_1_n_0 ;
  wire \SR[48][2]_i_1_n_0 ;
  wire \SR[48][3]_i_1_n_0 ;
  wire \SR[48][4]_i_1_n_0 ;
  wire \SR[48][5]_i_1_n_0 ;
  wire \SR[48][6]_i_1_n_0 ;
  wire \SR[48][7]_i_1_n_0 ;
  wire \SR[49][0]_i_1_n_0 ;
  wire \SR[49][1]_i_1_n_0 ;
  wire \SR[49][2]_i_1_n_0 ;
  wire \SR[49][3]_i_1_n_0 ;
  wire \SR[49][4]_i_1_n_0 ;
  wire \SR[49][5]_i_1_n_0 ;
  wire \SR[49][6]_i_1_n_0 ;
  wire \SR[49][7]_i_1_n_0 ;
  wire \SR[4][0]_i_1_n_0 ;
  wire \SR[4][1]_i_1_n_0 ;
  wire \SR[4][2]_i_1_n_0 ;
  wire \SR[4][3]_i_1_n_0 ;
  wire \SR[4][4]_i_1_n_0 ;
  wire \SR[4][5]_i_1_n_0 ;
  wire \SR[4][6]_i_1_n_0 ;
  wire \SR[4][7]_i_1_n_0 ;
  wire \SR[50][0]_i_1_n_0 ;
  wire \SR[50][1]_i_1_n_0 ;
  wire \SR[50][2]_i_1_n_0 ;
  wire \SR[50][3]_i_1_n_0 ;
  wire \SR[50][4]_i_1_n_0 ;
  wire \SR[50][5]_i_1_n_0 ;
  wire \SR[50][6]_i_1_n_0 ;
  wire \SR[50][7]_i_1_n_0 ;
  wire \SR[51][0]_i_1_n_0 ;
  wire \SR[51][1]_i_1_n_0 ;
  wire \SR[51][2]_i_1_n_0 ;
  wire \SR[51][3]_i_1_n_0 ;
  wire \SR[51][4]_i_1_n_0 ;
  wire \SR[51][5]_i_1_n_0 ;
  wire \SR[51][6]_i_1_n_0 ;
  wire \SR[51][7]_i_1_n_0 ;
  wire \SR[52][0]_i_1_n_0 ;
  wire \SR[52][1]_i_1_n_0 ;
  wire \SR[52][2]_i_1_n_0 ;
  wire \SR[52][3]_i_1_n_0 ;
  wire \SR[52][4]_i_1_n_0 ;
  wire \SR[52][5]_i_1_n_0 ;
  wire \SR[52][6]_i_1_n_0 ;
  wire \SR[52][7]_i_1_n_0 ;
  wire \SR[53][0]_i_1_n_0 ;
  wire \SR[53][1]_i_1_n_0 ;
  wire \SR[53][2]_i_1_n_0 ;
  wire \SR[53][3]_i_1_n_0 ;
  wire \SR[53][4]_i_1_n_0 ;
  wire \SR[53][5]_i_1_n_0 ;
  wire \SR[53][6]_i_1_n_0 ;
  wire \SR[53][7]_i_1_n_0 ;
  wire \SR[54][0]_i_1_n_0 ;
  wire \SR[54][1]_i_1_n_0 ;
  wire \SR[54][2]_i_1_n_0 ;
  wire \SR[54][3]_i_1_n_0 ;
  wire \SR[54][4]_i_1_n_0 ;
  wire \SR[54][5]_i_1_n_0 ;
  wire \SR[54][6]_i_1_n_0 ;
  wire \SR[54][7]_i_1_n_0 ;
  wire \SR[55][0]_i_1_n_0 ;
  wire \SR[55][1]_i_1_n_0 ;
  wire \SR[55][2]_i_1_n_0 ;
  wire \SR[55][3]_i_1_n_0 ;
  wire \SR[55][4]_i_1_n_0 ;
  wire \SR[55][5]_i_1_n_0 ;
  wire \SR[55][6]_i_1_n_0 ;
  wire \SR[55][7]_i_1_n_0 ;
  wire \SR[56][0]_i_1_n_0 ;
  wire \SR[56][1]_i_1_n_0 ;
  wire \SR[56][2]_i_1_n_0 ;
  wire \SR[56][3]_i_1_n_0 ;
  wire \SR[56][4]_i_1_n_0 ;
  wire \SR[56][5]_i_1_n_0 ;
  wire \SR[56][6]_i_1_n_0 ;
  wire \SR[56][7]_i_1_n_0 ;
  wire \SR[57][0]_i_1_n_0 ;
  wire \SR[57][1]_i_1_n_0 ;
  wire \SR[57][2]_i_1_n_0 ;
  wire \SR[57][3]_i_1_n_0 ;
  wire \SR[57][4]_i_1_n_0 ;
  wire \SR[57][5]_i_1_n_0 ;
  wire \SR[57][6]_i_1_n_0 ;
  wire \SR[57][7]_i_1_n_0 ;
  wire \SR[58][0]_i_1_n_0 ;
  wire \SR[58][1]_i_1_n_0 ;
  wire \SR[58][2]_i_1_n_0 ;
  wire \SR[58][3]_i_1_n_0 ;
  wire \SR[58][4]_i_1_n_0 ;
  wire \SR[58][5]_i_1_n_0 ;
  wire \SR[58][6]_i_1_n_0 ;
  wire \SR[58][7]_i_1_n_0 ;
  wire \SR[59][0]_i_1_n_0 ;
  wire \SR[59][1]_i_1_n_0 ;
  wire \SR[59][2]_i_1_n_0 ;
  wire \SR[59][3]_i_1_n_0 ;
  wire \SR[59][4]_i_1_n_0 ;
  wire \SR[59][5]_i_1_n_0 ;
  wire \SR[59][6]_i_1_n_0 ;
  wire \SR[59][7]_i_1_n_0 ;
  wire \SR[5][0]_i_1_n_0 ;
  wire \SR[5][1]_i_1_n_0 ;
  wire \SR[5][2]_i_1_n_0 ;
  wire \SR[5][3]_i_1_n_0 ;
  wire \SR[5][4]_i_1_n_0 ;
  wire \SR[5][5]_i_1_n_0 ;
  wire \SR[5][6]_i_1_n_0 ;
  wire \SR[5][7]_i_1_n_0 ;
  wire \SR[60][0]_i_1_n_0 ;
  wire \SR[60][1]_i_1_n_0 ;
  wire \SR[60][2]_i_1_n_0 ;
  wire \SR[60][3]_i_1_n_0 ;
  wire \SR[60][4]_i_1_n_0 ;
  wire \SR[60][5]_i_1_n_0 ;
  wire \SR[60][6]_i_1_n_0 ;
  wire \SR[60][7]_i_1_n_0 ;
  wire \SR[61][0]_i_1_n_0 ;
  wire \SR[61][1]_i_1_n_0 ;
  wire \SR[61][2]_i_1_n_0 ;
  wire \SR[61][3]_i_1_n_0 ;
  wire \SR[61][4]_i_1_n_0 ;
  wire \SR[61][5]_i_1_n_0 ;
  wire \SR[61][6]_i_1_n_0 ;
  wire \SR[61][7]_i_1_n_0 ;
  wire \SR[62][0]_i_1_n_0 ;
  wire \SR[62][1]_i_1_n_0 ;
  wire \SR[62][2]_i_1_n_0 ;
  wire \SR[62][3]_i_1_n_0 ;
  wire \SR[62][4]_i_1_n_0 ;
  wire \SR[62][5]_i_1_n_0 ;
  wire \SR[62][6]_i_1_n_0 ;
  wire \SR[62][7]_i_1_n_0 ;
  wire \SR[63][0]_i_1_n_0 ;
  wire \SR[63][1]_i_1_n_0 ;
  wire \SR[63][2]_i_1_n_0 ;
  wire \SR[63][3]_i_1_n_0 ;
  wire \SR[63][4]_i_1_n_0 ;
  wire \SR[63][5]_i_1_n_0 ;
  wire \SR[63][6]_i_1_n_0 ;
  wire \SR[63][7]_i_1_n_0 ;
  wire \SR[6][0]_i_1_n_0 ;
  wire \SR[6][1]_i_1_n_0 ;
  wire \SR[6][2]_i_1_n_0 ;
  wire \SR[6][3]_i_1_n_0 ;
  wire \SR[6][4]_i_1_n_0 ;
  wire \SR[6][5]_i_1_n_0 ;
  wire \SR[6][6]_i_1_n_0 ;
  wire \SR[6][7]_i_1_n_0 ;
  wire \SR[7][0]_i_1_n_0 ;
  wire \SR[7][1]_i_1_n_0 ;
  wire \SR[7][2]_i_1_n_0 ;
  wire \SR[7][3]_i_1_n_0 ;
  wire \SR[7][4]_i_1_n_0 ;
  wire \SR[7][5]_i_1_n_0 ;
  wire \SR[7][6]_i_1_n_0 ;
  wire \SR[7][7]_i_1_n_0 ;
  wire \SR[8][0]_i_1_n_0 ;
  wire \SR[8][1]_i_1_n_0 ;
  wire \SR[8][2]_i_1_n_0 ;
  wire \SR[8][3]_i_1_n_0 ;
  wire \SR[8][4]_i_1_n_0 ;
  wire \SR[8][5]_i_1_n_0 ;
  wire \SR[8][6]_i_1_n_0 ;
  wire \SR[8][7]_i_1_n_0 ;
  wire \SR[9][0]_i_1_n_0 ;
  wire \SR[9][1]_i_1_n_0 ;
  wire \SR[9][2]_i_1_n_0 ;
  wire \SR[9][3]_i_1_n_0 ;
  wire \SR[9][4]_i_1_n_0 ;
  wire \SR[9][5]_i_1_n_0 ;
  wire \SR[9][6]_i_1_n_0 ;
  wire \SR[9][7]_i_1_n_0 ;
  wire [7:0]\SR_reg[0] ;
  wire [7:0]\SR_reg[10] ;
  wire [7:0]\SR_reg[11] ;
  wire [7:0]\SR_reg[12] ;
  wire [7:0]\SR_reg[13] ;
  wire [7:0]\SR_reg[14] ;
  wire [7:0]\SR_reg[15] ;
  wire [7:0]\SR_reg[16] ;
  wire [7:0]\SR_reg[17] ;
  wire [7:0]\SR_reg[18] ;
  wire [7:0]\SR_reg[19] ;
  wire [7:0]\SR_reg[1] ;
  wire [7:0]\SR_reg[20] ;
  wire [7:0]\SR_reg[21] ;
  wire [7:0]\SR_reg[22] ;
  wire [7:0]\SR_reg[23] ;
  wire [7:0]\SR_reg[24] ;
  wire [7:0]\SR_reg[25] ;
  wire [7:0]\SR_reg[26] ;
  wire [7:0]\SR_reg[27] ;
  wire [7:0]\SR_reg[28] ;
  wire [7:0]\SR_reg[29] ;
  wire [7:0]\SR_reg[2] ;
  wire [7:0]\SR_reg[30] ;
  wire [7:0]\SR_reg[31] ;
  wire [7:0]\SR_reg[32] ;
  wire [7:0]\SR_reg[33] ;
  wire [7:0]\SR_reg[34] ;
  wire [7:0]\SR_reg[35] ;
  wire [7:0]\SR_reg[36] ;
  wire [7:0]\SR_reg[37] ;
  wire [7:0]\SR_reg[38] ;
  wire [7:0]\SR_reg[39] ;
  wire [7:0]\SR_reg[3] ;
  wire [7:0]\SR_reg[40] ;
  wire [7:0]\SR_reg[41] ;
  wire [7:0]\SR_reg[42] ;
  wire [7:0]\SR_reg[43] ;
  wire [7:0]\SR_reg[44] ;
  wire [7:0]\SR_reg[45] ;
  wire [7:0]\SR_reg[46] ;
  wire [7:0]\SR_reg[47] ;
  wire [7:0]\SR_reg[48] ;
  wire [7:0]\SR_reg[49] ;
  wire [7:0]\SR_reg[4] ;
  wire [7:0]\SR_reg[50] ;
  wire [7:0]\SR_reg[51] ;
  wire [7:0]\SR_reg[52] ;
  wire [7:0]\SR_reg[53] ;
  wire [7:0]\SR_reg[54] ;
  wire [7:0]\SR_reg[55] ;
  wire [7:0]\SR_reg[56] ;
  wire [7:0]\SR_reg[57] ;
  wire [7:0]\SR_reg[58] ;
  wire [7:0]\SR_reg[59] ;
  wire [7:0]\SR_reg[5] ;
  wire [7:0]\SR_reg[60] ;
  wire [7:0]\SR_reg[61] ;
  wire [7:0]\SR_reg[62] ;
  wire [7:0]\SR_reg[63] ;
  wire [7:0]\SR_reg[6] ;
  wire [7:0]\SR_reg[7] ;
  wire [7:0]\SR_reg[8] ;
  wire [7:0]\SR_reg[9] ;
  wire [15:0]S_AXIS_TDATA;
  wire S_AXIS_TVALID;
  wire [31:1]data0;
  wire [31:0]index;
  wire index0;
  wire index0_carry__0_n_0;
  wire index0_carry__0_n_1;
  wire index0_carry__0_n_2;
  wire index0_carry__0_n_3;
  wire index0_carry__0_n_4;
  wire index0_carry__0_n_5;
  wire index0_carry__0_n_6;
  wire index0_carry__0_n_7;
  wire index0_carry__1_n_0;
  wire index0_carry__1_n_1;
  wire index0_carry__1_n_2;
  wire index0_carry__1_n_3;
  wire index0_carry__1_n_4;
  wire index0_carry__1_n_5;
  wire index0_carry__1_n_6;
  wire index0_carry__1_n_7;
  wire index0_carry__2_n_0;
  wire index0_carry__2_n_1;
  wire index0_carry__2_n_2;
  wire index0_carry__2_n_3;
  wire index0_carry__2_n_4;
  wire index0_carry__2_n_5;
  wire index0_carry__2_n_6;
  wire index0_carry__2_n_7;
  wire index0_carry__3_n_0;
  wire index0_carry__3_n_1;
  wire index0_carry__3_n_2;
  wire index0_carry__3_n_3;
  wire index0_carry__3_n_4;
  wire index0_carry__3_n_5;
  wire index0_carry__3_n_6;
  wire index0_carry__3_n_7;
  wire index0_carry__4_n_0;
  wire index0_carry__4_n_1;
  wire index0_carry__4_n_2;
  wire index0_carry__4_n_3;
  wire index0_carry__4_n_4;
  wire index0_carry__4_n_5;
  wire index0_carry__4_n_6;
  wire index0_carry__4_n_7;
  wire index0_carry__5_n_0;
  wire index0_carry__5_n_1;
  wire index0_carry__5_n_2;
  wire index0_carry__5_n_3;
  wire index0_carry__5_n_4;
  wire index0_carry__5_n_5;
  wire index0_carry__5_n_6;
  wire index0_carry__5_n_7;
  wire index0_carry__6_n_1;
  wire index0_carry__6_n_2;
  wire index0_carry__6_n_3;
  wire index0_carry__6_n_4;
  wire index0_carry__6_n_5;
  wire index0_carry__6_n_6;
  wire index0_carry__6_n_7;
  wire index0_carry_i_1_n_0;
  wire index0_carry_n_0;
  wire index0_carry_n_1;
  wire index0_carry_n_2;
  wire index0_carry_n_3;
  wire index0_carry_n_4;
  wire index0_carry_n_5;
  wire index0_carry_n_6;
  wire index0_carry_n_7;
  wire \index[31]_i_1_n_0 ;
  wire \index[31]_i_3_n_0 ;
  wire [7:0]p_1_in;
  wire [34:0]sel0;
  wire writeout_index0;
  wire \writeout_index[0]_i_1_n_0 ;
  wire \writeout_index[31]_i_1_n_0 ;
  wire \writeout_index_reg[12]_i_1_n_0 ;
  wire \writeout_index_reg[12]_i_1_n_1 ;
  wire \writeout_index_reg[12]_i_1_n_2 ;
  wire \writeout_index_reg[12]_i_1_n_3 ;
  wire \writeout_index_reg[16]_i_1_n_0 ;
  wire \writeout_index_reg[16]_i_1_n_1 ;
  wire \writeout_index_reg[16]_i_1_n_2 ;
  wire \writeout_index_reg[16]_i_1_n_3 ;
  wire \writeout_index_reg[20]_i_1_n_0 ;
  wire \writeout_index_reg[20]_i_1_n_1 ;
  wire \writeout_index_reg[20]_i_1_n_2 ;
  wire \writeout_index_reg[20]_i_1_n_3 ;
  wire \writeout_index_reg[24]_i_1_n_0 ;
  wire \writeout_index_reg[24]_i_1_n_1 ;
  wire \writeout_index_reg[24]_i_1_n_2 ;
  wire \writeout_index_reg[24]_i_1_n_3 ;
  wire \writeout_index_reg[28]_i_1_n_0 ;
  wire \writeout_index_reg[28]_i_1_n_1 ;
  wire \writeout_index_reg[28]_i_1_n_2 ;
  wire \writeout_index_reg[28]_i_1_n_3 ;
  wire \writeout_index_reg[31]_i_3_n_2 ;
  wire \writeout_index_reg[31]_i_3_n_3 ;
  wire \writeout_index_reg[4]_i_1_n_0 ;
  wire \writeout_index_reg[4]_i_1_n_1 ;
  wire \writeout_index_reg[4]_i_1_n_2 ;
  wire \writeout_index_reg[4]_i_1_n_3 ;
  wire \writeout_index_reg[8]_i_1_n_0 ;
  wire \writeout_index_reg[8]_i_1_n_1 ;
  wire \writeout_index_reg[8]_i_1_n_2 ;
  wire \writeout_index_reg[8]_i_1_n_3 ;
  wire [3:3]NLW_index0_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_writeout_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_writeout_index_reg[31]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_i_1
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    COMPLETE_PACKET_i_2
       (.I0(sel0[6]),
        .I1(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .I2(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .I3(\M_AXIS_TDATA[7]_i_5_n_0 ),
        .I4(sel0[0]),
        .O(COMPLETE_PACKET_i_2_n_0));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_i_1_n_0),
        .Q(COMPLETE_PACKET));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg_rep
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_rep_i_1_n_0),
        .Q(COMPLETE_PACKET_reg_rep_n_0));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg_rep__0
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_rep_i_1__0_n_0),
        .Q(COMPLETE_PACKET_reg_rep__0_n_0));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg_rep__1
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_rep_i_1__1_n_0),
        .Q(COMPLETE_PACKET_reg_rep__1_n_0));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg_rep__2
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_rep_i_1__2_n_0),
        .Q(COMPLETE_PACKET_reg_rep__2_n_0));
  (* ORIG_CELL_NAME = "COMPLETE_PACKET_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    COMPLETE_PACKET_reg_rep__3
       (.C(CLK),
        .CE(1'b1),
        .CLR(sel0[34]),
        .D(COMPLETE_PACKET_rep_i_1__3_n_0),
        .Q(COMPLETE_PACKET_reg_rep__3_n_0));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_rep_i_1
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_rep_i_1__0
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_rep_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_rep_i_1__1
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_rep_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_rep_i_1__2
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_rep_i_1__2_n_0));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    COMPLETE_PACKET_rep_i_1__3
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\index[31]_i_3_n_0 ),
        .I3(COMPLETE_PACKET_i_2_n_0),
        .I4(M_AXIS_TREADY),
        .O(COMPLETE_PACKET_rep_i_1__3_n_0));
  LUT6 #(
    .INIT(64'hCACCCFC0AAAAAAAA)) 
    \M_AXIS_TDATA[0]_i_1 
       (.I0(M_AXIS_TDATA[0]),
        .I1(\SR_reg[63] [0]),
        .I2(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[0]),
        .I5(writeout_index0),
        .O(\M_AXIS_TDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACCCFC0AAAAAAAA)) 
    \M_AXIS_TDATA[4]_i_1 
       (.I0(M_AXIS_TDATA[4]),
        .I1(\SR_reg[63] [4]),
        .I2(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[0]),
        .I5(writeout_index0),
        .O(\M_AXIS_TDATA[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \M_AXIS_TDATA[6]_i_1 
       (.I0(sel0[0]),
        .I1(M_AXIS_TREADY),
        .I2(COMPLETE_PACKET),
        .I3(RESETN),
        .I4(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .O(\M_AXIS_TDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080008080808080)) 
    \M_AXIS_TDATA[6]_i_2 
       (.I0(RESETN),
        .I1(COMPLETE_PACKET),
        .I2(M_AXIS_TREADY),
        .I3(sel0[0]),
        .I4(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I5(sel0[6]),
        .O(M_AXIS_TDATA0));
  LUT6 #(
    .INIT(64'hCACCC0CFAAAAAAAA)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(M_AXIS_TDATA[7]),
        .I1(\SR_reg[63] [7]),
        .I2(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[0]),
        .I5(writeout_index0),
        .O(\M_AXIS_TDATA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \M_AXIS_TDATA[7]_i_2 
       (.I0(\M_AXIS_TDATA[7]_i_3_n_0 ),
        .I1(\M_AXIS_TDATA[7]_i_4_n_0 ),
        .I2(\M_AXIS_TDATA[7]_i_5_n_0 ),
        .O(\M_AXIS_TDATA[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \M_AXIS_TDATA[7]_i_3 
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .I2(sel0[12]),
        .I3(sel0[13]),
        .I4(\M_AXIS_TDATA[7]_i_6_n_0 ),
        .O(\M_AXIS_TDATA[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \M_AXIS_TDATA[7]_i_4 
       (.I0(sel0[5]),
        .I1(sel0[7]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(\M_AXIS_TDATA[7]_i_7_n_0 ),
        .O(\M_AXIS_TDATA[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \M_AXIS_TDATA[7]_i_5 
       (.I0(\M_AXIS_TDATA[7]_i_8_n_0 ),
        .I1(sel0[21]),
        .I2(sel0[20]),
        .I3(sel0[23]),
        .I4(sel0[22]),
        .I5(\M_AXIS_TDATA[7]_i_9_n_0 ),
        .O(\M_AXIS_TDATA[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \M_AXIS_TDATA[7]_i_6 
       (.I0(sel0[17]),
        .I1(sel0[16]),
        .I2(sel0[19]),
        .I3(sel0[18]),
        .O(\M_AXIS_TDATA[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \M_AXIS_TDATA[7]_i_7 
       (.I0(sel0[9]),
        .I1(sel0[8]),
        .I2(sel0[11]),
        .I3(sel0[10]),
        .O(\M_AXIS_TDATA[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \M_AXIS_TDATA[7]_i_8 
       (.I0(sel0[25]),
        .I1(sel0[24]),
        .I2(sel0[27]),
        .I3(sel0[26]),
        .O(\M_AXIS_TDATA[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \M_AXIS_TDATA[7]_i_9 
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .I2(sel0[28]),
        .I3(sel0[29]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\M_AXIS_TDATA[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[0]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[1] 
       (.C(CLK),
        .CE(M_AXIS_TDATA0),
        .D(\SR_reg[63] [1]),
        .Q(M_AXIS_TDATA[1]),
        .R(\M_AXIS_TDATA[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[2] 
       (.C(CLK),
        .CE(M_AXIS_TDATA0),
        .D(\SR_reg[63] [2]),
        .Q(M_AXIS_TDATA[2]),
        .R(\M_AXIS_TDATA[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[3] 
       (.C(CLK),
        .CE(M_AXIS_TDATA0),
        .D(\SR_reg[63] [3]),
        .Q(M_AXIS_TDATA[3]),
        .R(\M_AXIS_TDATA[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[4]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[5] 
       (.C(CLK),
        .CE(M_AXIS_TDATA0),
        .D(\SR_reg[63] [5]),
        .Q(M_AXIS_TDATA[5]),
        .R(\M_AXIS_TDATA[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[6] 
       (.C(CLK),
        .CE(M_AXIS_TDATA0),
        .D(\SR_reg[63] [6]),
        .Q(M_AXIS_TDATA[6]),
        .S(\M_AXIS_TDATA[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAF0F0F0)) 
    M_AXIS_TVALID_s_i_1
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(M_AXIS_TVALID),
        .I3(RESETN),
        .I4(M_AXIS_TREADY),
        .O(M_AXIS_TVALID_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXIS_TVALID_s_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \SR[0][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR[0][7]_i_3_n_0 ),
        .I3(\SR[0][7]_i_4_n_0 ),
        .I4(\SR[0][7]_i_5_n_0 ),
        .I5(\SR[0][7]_i_6_n_0 ),
        .O(\SR[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SR[0][7]_i_10 
       (.I0(index[13]),
        .I1(index[12]),
        .I2(index[15]),
        .I3(index[14]),
        .O(\SR[0][7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SR[0][7]_i_2 
       (.I0(RESETN),
        .O(sel0[34]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SR[0][7]_i_3 
       (.I0(index[18]),
        .I1(index[19]),
        .I2(index[16]),
        .I3(index[17]),
        .I4(\SR[0][7]_i_7_n_0 ),
        .O(\SR[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SR[0][7]_i_4 
       (.I0(index[26]),
        .I1(index[27]),
        .I2(index[24]),
        .I3(index[25]),
        .I4(\SR[0][7]_i_8_n_0 ),
        .O(\SR[0][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SR[0][7]_i_5 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(index[0]),
        .I3(index[1]),
        .I4(\SR[0][7]_i_9_n_0 ),
        .O(\SR[0][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SR[0][7]_i_6 
       (.I0(index[10]),
        .I1(index[11]),
        .I2(index[8]),
        .I3(index[9]),
        .I4(\SR[0][7]_i_10_n_0 ),
        .O(\SR[0][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SR[0][7]_i_7 
       (.I0(index[21]),
        .I1(index[20]),
        .I2(index[23]),
        .I3(index[22]),
        .O(\SR[0][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SR[0][7]_i_8 
       (.I0(index[29]),
        .I1(index[28]),
        .I2(index[31]),
        .I3(index[30]),
        .O(\SR[0][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \SR[0][7]_i_9 
       (.I0(index[5]),
        .I1(index[4]),
        .I2(index[6]),
        .I3(index[7]),
        .O(\SR[0][7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [0]),
        .I3(\SR_reg[8] [0]),
        .O(\SR[10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [1]),
        .I3(\SR_reg[8] [1]),
        .O(\SR[10][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [2]),
        .I3(\SR_reg[8] [2]),
        .O(\SR[10][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [3]),
        .I3(\SR_reg[8] [3]),
        .O(\SR[10][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [4]),
        .I3(\SR_reg[8] [4]),
        .O(\SR[10][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [5]),
        .I3(\SR_reg[8] [5]),
        .O(\SR[10][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [6]),
        .I3(\SR_reg[8] [6]),
        .O(\SR[10][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[10][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[9] [7]),
        .I3(\SR_reg[8] [7]),
        .O(\SR[10][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [0]),
        .I3(\SR_reg[9] [0]),
        .O(\SR[11][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [1]),
        .I3(\SR_reg[9] [1]),
        .O(\SR[11][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [2]),
        .I3(\SR_reg[9] [2]),
        .O(\SR[11][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [3]),
        .I3(\SR_reg[9] [3]),
        .O(\SR[11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [4]),
        .I3(\SR_reg[9] [4]),
        .O(\SR[11][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [5]),
        .I3(\SR_reg[9] [5]),
        .O(\SR[11][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [6]),
        .I3(\SR_reg[9] [6]),
        .O(\SR[11][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[11][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[10] [7]),
        .I3(\SR_reg[9] [7]),
        .O(\SR[11][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [0]),
        .I3(\SR_reg[10] [0]),
        .O(\SR[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [1]),
        .I3(\SR_reg[10] [1]),
        .O(\SR[12][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [2]),
        .I3(\SR_reg[10] [2]),
        .O(\SR[12][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [3]),
        .I3(\SR_reg[10] [3]),
        .O(\SR[12][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [4]),
        .I3(\SR_reg[10] [4]),
        .O(\SR[12][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [5]),
        .I3(\SR_reg[10] [5]),
        .O(\SR[12][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [6]),
        .I3(\SR_reg[10] [6]),
        .O(\SR[12][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[12][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[11] [7]),
        .I3(\SR_reg[10] [7]),
        .O(\SR[12][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [0]),
        .I3(\SR_reg[11] [0]),
        .O(\SR[13][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [1]),
        .I3(\SR_reg[11] [1]),
        .O(\SR[13][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [2]),
        .I3(\SR_reg[11] [2]),
        .O(\SR[13][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [3]),
        .I3(\SR_reg[11] [3]),
        .O(\SR[13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [4]),
        .I3(\SR_reg[11] [4]),
        .O(\SR[13][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [5]),
        .I3(\SR_reg[11] [5]),
        .O(\SR[13][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [6]),
        .I3(\SR_reg[11] [6]),
        .O(\SR[13][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[13][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[12] [7]),
        .I3(\SR_reg[11] [7]),
        .O(\SR[13][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [0]),
        .I3(\SR_reg[12] [0]),
        .O(\SR[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [1]),
        .I3(\SR_reg[12] [1]),
        .O(\SR[14][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [2]),
        .I3(\SR_reg[12] [2]),
        .O(\SR[14][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [3]),
        .I3(\SR_reg[12] [3]),
        .O(\SR[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [4]),
        .I3(\SR_reg[12] [4]),
        .O(\SR[14][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [5]),
        .I3(\SR_reg[12] [5]),
        .O(\SR[14][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [6]),
        .I3(\SR_reg[12] [6]),
        .O(\SR[14][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[14][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[13] [7]),
        .I3(\SR_reg[12] [7]),
        .O(\SR[14][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [0]),
        .I3(\SR_reg[13] [0]),
        .O(\SR[15][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [1]),
        .I3(\SR_reg[13] [1]),
        .O(\SR[15][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [2]),
        .I3(\SR_reg[13] [2]),
        .O(\SR[15][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [3]),
        .I3(\SR_reg[13] [3]),
        .O(\SR[15][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [4]),
        .I3(\SR_reg[13] [4]),
        .O(\SR[15][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [5]),
        .I3(\SR_reg[13] [5]),
        .O(\SR[15][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [6]),
        .I3(\SR_reg[13] [6]),
        .O(\SR[15][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[15][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[14] [7]),
        .I3(\SR_reg[13] [7]),
        .O(\SR[15][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [0]),
        .I3(\SR_reg[14] [0]),
        .O(\SR[16][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [1]),
        .I3(\SR_reg[14] [1]),
        .O(\SR[16][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [2]),
        .I3(\SR_reg[14] [2]),
        .O(\SR[16][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [3]),
        .I3(\SR_reg[14] [3]),
        .O(\SR[16][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [4]),
        .I3(\SR_reg[14] [4]),
        .O(\SR[16][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [5]),
        .I3(\SR_reg[14] [5]),
        .O(\SR[16][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [6]),
        .I3(\SR_reg[14] [6]),
        .O(\SR[16][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[16][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[15] [7]),
        .I3(\SR_reg[14] [7]),
        .O(\SR[16][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [0]),
        .I3(\SR_reg[15] [0]),
        .O(\SR[17][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [1]),
        .I3(\SR_reg[15] [1]),
        .O(\SR[17][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [2]),
        .I3(\SR_reg[15] [2]),
        .O(\SR[17][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [3]),
        .I3(\SR_reg[15] [3]),
        .O(\SR[17][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [4]),
        .I3(\SR_reg[15] [4]),
        .O(\SR[17][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [5]),
        .I3(\SR_reg[15] [5]),
        .O(\SR[17][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [6]),
        .I3(\SR_reg[15] [6]),
        .O(\SR[17][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[17][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[16] [7]),
        .I3(\SR_reg[15] [7]),
        .O(\SR[17][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [0]),
        .I3(\SR_reg[16] [0]),
        .O(\SR[18][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [1]),
        .I3(\SR_reg[16] [1]),
        .O(\SR[18][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [2]),
        .I3(\SR_reg[16] [2]),
        .O(\SR[18][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [3]),
        .I3(\SR_reg[16] [3]),
        .O(\SR[18][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [4]),
        .I3(\SR_reg[16] [4]),
        .O(\SR[18][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [5]),
        .I3(\SR_reg[16] [5]),
        .O(\SR[18][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [6]),
        .I3(\SR_reg[16] [6]),
        .O(\SR[18][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[18][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[17] [7]),
        .I3(\SR_reg[16] [7]),
        .O(\SR[18][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [0]),
        .I3(\SR_reg[17] [0]),
        .O(\SR[19][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [1]),
        .I3(\SR_reg[17] [1]),
        .O(\SR[19][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [2]),
        .I3(\SR_reg[17] [2]),
        .O(\SR[19][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [3]),
        .I3(\SR_reg[17] [3]),
        .O(\SR[19][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [4]),
        .I3(\SR_reg[17] [4]),
        .O(\SR[19][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [5]),
        .I3(\SR_reg[17] [5]),
        .O(\SR[19][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [6]),
        .I3(\SR_reg[17] [6]),
        .O(\SR[19][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[19][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[18] [7]),
        .I3(\SR_reg[17] [7]),
        .O(\SR[19][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [0]),
        .I3(S_AXIS_TDATA[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [1]),
        .I3(S_AXIS_TDATA[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [2]),
        .I3(S_AXIS_TDATA[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [3]),
        .I3(S_AXIS_TDATA[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [4]),
        .I3(S_AXIS_TDATA[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [5]),
        .I3(S_AXIS_TDATA[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [6]),
        .I3(S_AXIS_TDATA[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0004000)) 
    \SR[1][7]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[0]),
        .I2(M_AXIS_TREADY),
        .I3(COMPLETE_PACKET_reg_rep_n_0),
        .I4(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I5(\SR[0]_0 ),
        .O(\SR[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[1][7]_i_2 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[0] [7]),
        .I3(S_AXIS_TDATA[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [0]),
        .I3(\SR_reg[18] [0]),
        .O(\SR[20][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [1]),
        .I3(\SR_reg[18] [1]),
        .O(\SR[20][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [2]),
        .I3(\SR_reg[18] [2]),
        .O(\SR[20][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [3]),
        .I3(\SR_reg[18] [3]),
        .O(\SR[20][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [4]),
        .I3(\SR_reg[18] [4]),
        .O(\SR[20][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [5]),
        .I3(\SR_reg[18] [5]),
        .O(\SR[20][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [6]),
        .I3(\SR_reg[18] [6]),
        .O(\SR[20][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[20][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[19] [7]),
        .I3(\SR_reg[18] [7]),
        .O(\SR[20][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [0]),
        .I3(\SR_reg[19] [0]),
        .O(\SR[21][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [1]),
        .I3(\SR_reg[19] [1]),
        .O(\SR[21][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [2]),
        .I3(\SR_reg[19] [2]),
        .O(\SR[21][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [3]),
        .I3(\SR_reg[19] [3]),
        .O(\SR[21][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [4]),
        .I3(\SR_reg[19] [4]),
        .O(\SR[21][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [5]),
        .I3(\SR_reg[19] [5]),
        .O(\SR[21][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [6]),
        .I3(\SR_reg[19] [6]),
        .O(\SR[21][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[21][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[20] [7]),
        .I3(\SR_reg[19] [7]),
        .O(\SR[21][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [0]),
        .I3(\SR_reg[20] [0]),
        .O(\SR[22][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [1]),
        .I3(\SR_reg[20] [1]),
        .O(\SR[22][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [2]),
        .I3(\SR_reg[20] [2]),
        .O(\SR[22][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [3]),
        .I3(\SR_reg[20] [3]),
        .O(\SR[22][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [4]),
        .I3(\SR_reg[20] [4]),
        .O(\SR[22][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [5]),
        .I3(\SR_reg[20] [5]),
        .O(\SR[22][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [6]),
        .I3(\SR_reg[20] [6]),
        .O(\SR[22][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[22][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[21] [7]),
        .I3(\SR_reg[20] [7]),
        .O(\SR[22][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [0]),
        .I3(\SR_reg[21] [0]),
        .O(\SR[23][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [1]),
        .I3(\SR_reg[21] [1]),
        .O(\SR[23][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [2]),
        .I3(\SR_reg[21] [2]),
        .O(\SR[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [3]),
        .I3(\SR_reg[21] [3]),
        .O(\SR[23][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [4]),
        .I3(\SR_reg[21] [4]),
        .O(\SR[23][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [5]),
        .I3(\SR_reg[21] [5]),
        .O(\SR[23][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [6]),
        .I3(\SR_reg[21] [6]),
        .O(\SR[23][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[23][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[22] [7]),
        .I3(\SR_reg[21] [7]),
        .O(\SR[23][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [0]),
        .I3(\SR_reg[22] [0]),
        .O(\SR[24][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [1]),
        .I3(\SR_reg[22] [1]),
        .O(\SR[24][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [2]),
        .I3(\SR_reg[22] [2]),
        .O(\SR[24][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [3]),
        .I3(\SR_reg[22] [3]),
        .O(\SR[24][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [4]),
        .I3(\SR_reg[22] [4]),
        .O(\SR[24][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [5]),
        .I3(\SR_reg[22] [5]),
        .O(\SR[24][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [6]),
        .I3(\SR_reg[22] [6]),
        .O(\SR[24][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[24][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[23] [7]),
        .I3(\SR_reg[22] [7]),
        .O(\SR[24][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [0]),
        .I3(\SR_reg[23] [0]),
        .O(\SR[25][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [1]),
        .I3(\SR_reg[23] [1]),
        .O(\SR[25][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [2]),
        .I3(\SR_reg[23] [2]),
        .O(\SR[25][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [3]),
        .I3(\SR_reg[23] [3]),
        .O(\SR[25][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [4]),
        .I3(\SR_reg[23] [4]),
        .O(\SR[25][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [5]),
        .I3(\SR_reg[23] [5]),
        .O(\SR[25][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [6]),
        .I3(\SR_reg[23] [6]),
        .O(\SR[25][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[25][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[24] [7]),
        .I3(\SR_reg[23] [7]),
        .O(\SR[25][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [0]),
        .I3(\SR_reg[24] [0]),
        .O(\SR[26][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [1]),
        .I3(\SR_reg[24] [1]),
        .O(\SR[26][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [2]),
        .I3(\SR_reg[24] [2]),
        .O(\SR[26][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [3]),
        .I3(\SR_reg[24] [3]),
        .O(\SR[26][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [4]),
        .I3(\SR_reg[24] [4]),
        .O(\SR[26][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [5]),
        .I3(\SR_reg[24] [5]),
        .O(\SR[26][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [6]),
        .I3(\SR_reg[24] [6]),
        .O(\SR[26][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[26][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[25] [7]),
        .I3(\SR_reg[24] [7]),
        .O(\SR[26][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [0]),
        .I3(\SR_reg[25] [0]),
        .O(\SR[27][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [1]),
        .I3(\SR_reg[25] [1]),
        .O(\SR[27][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [2]),
        .I3(\SR_reg[25] [2]),
        .O(\SR[27][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [3]),
        .I3(\SR_reg[25] [3]),
        .O(\SR[27][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [4]),
        .I3(\SR_reg[25] [4]),
        .O(\SR[27][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [5]),
        .I3(\SR_reg[25] [5]),
        .O(\SR[27][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [6]),
        .I3(\SR_reg[25] [6]),
        .O(\SR[27][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[27][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[26] [7]),
        .I3(\SR_reg[25] [7]),
        .O(\SR[27][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [0]),
        .I3(\SR_reg[26] [0]),
        .O(\SR[28][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [1]),
        .I3(\SR_reg[26] [1]),
        .O(\SR[28][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [2]),
        .I3(\SR_reg[26] [2]),
        .O(\SR[28][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [3]),
        .I3(\SR_reg[26] [3]),
        .O(\SR[28][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [4]),
        .I3(\SR_reg[26] [4]),
        .O(\SR[28][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [5]),
        .I3(\SR_reg[26] [5]),
        .O(\SR[28][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [6]),
        .I3(\SR_reg[26] [6]),
        .O(\SR[28][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[28][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[27] [7]),
        .I3(\SR_reg[26] [7]),
        .O(\SR[28][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [0]),
        .I3(\SR_reg[27] [0]),
        .O(\SR[29][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [1]),
        .I3(\SR_reg[27] [1]),
        .O(\SR[29][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [2]),
        .I3(\SR_reg[27] [2]),
        .O(\SR[29][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [3]),
        .I3(\SR_reg[27] [3]),
        .O(\SR[29][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [4]),
        .I3(\SR_reg[27] [4]),
        .O(\SR[29][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [5]),
        .I3(\SR_reg[27] [5]),
        .O(\SR[29][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [6]),
        .I3(\SR_reg[27] [6]),
        .O(\SR[29][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[29][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[28] [7]),
        .I3(\SR_reg[27] [7]),
        .O(\SR[29][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [0]),
        .I3(\SR_reg[0] [0]),
        .O(\SR[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [1]),
        .I3(\SR_reg[0] [1]),
        .O(\SR[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [2]),
        .I3(\SR_reg[0] [2]),
        .O(\SR[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [3]),
        .I3(\SR_reg[0] [3]),
        .O(\SR[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [4]),
        .I3(\SR_reg[0] [4]),
        .O(\SR[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [5]),
        .I3(\SR_reg[0] [5]),
        .O(\SR[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [6]),
        .I3(\SR_reg[0] [6]),
        .O(\SR[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[2][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[1] [7]),
        .I3(\SR_reg[0] [7]),
        .O(\SR[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [0]),
        .I3(\SR_reg[28] [0]),
        .O(\SR[30][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [1]),
        .I3(\SR_reg[28] [1]),
        .O(\SR[30][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [2]),
        .I3(\SR_reg[28] [2]),
        .O(\SR[30][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [3]),
        .I3(\SR_reg[28] [3]),
        .O(\SR[30][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [4]),
        .I3(\SR_reg[28] [4]),
        .O(\SR[30][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [5]),
        .I3(\SR_reg[28] [5]),
        .O(\SR[30][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [6]),
        .I3(\SR_reg[28] [6]),
        .O(\SR[30][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[30][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[29] [7]),
        .I3(\SR_reg[28] [7]),
        .O(\SR[30][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [0]),
        .I3(\SR_reg[29] [0]),
        .O(\SR[31][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [1]),
        .I3(\SR_reg[29] [1]),
        .O(\SR[31][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [2]),
        .I3(\SR_reg[29] [2]),
        .O(\SR[31][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [3]),
        .I3(\SR_reg[29] [3]),
        .O(\SR[31][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [4]),
        .I3(\SR_reg[29] [4]),
        .O(\SR[31][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [5]),
        .I3(\SR_reg[29] [5]),
        .O(\SR[31][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [6]),
        .I3(\SR_reg[29] [6]),
        .O(\SR[31][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[31][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[30] [7]),
        .I3(\SR_reg[29] [7]),
        .O(\SR[31][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [0]),
        .I3(\SR_reg[30] [0]),
        .O(\SR[32][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [1]),
        .I3(\SR_reg[30] [1]),
        .O(\SR[32][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [2]),
        .I3(\SR_reg[30] [2]),
        .O(\SR[32][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [3]),
        .I3(\SR_reg[30] [3]),
        .O(\SR[32][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [4]),
        .I3(\SR_reg[30] [4]),
        .O(\SR[32][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [5]),
        .I3(\SR_reg[30] [5]),
        .O(\SR[32][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [6]),
        .I3(\SR_reg[30] [6]),
        .O(\SR[32][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[32][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[31] [7]),
        .I3(\SR_reg[30] [7]),
        .O(\SR[32][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [0]),
        .I3(\SR_reg[31] [0]),
        .O(\SR[33][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [1]),
        .I3(\SR_reg[31] [1]),
        .O(\SR[33][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [2]),
        .I3(\SR_reg[31] [2]),
        .O(\SR[33][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [3]),
        .I3(\SR_reg[31] [3]),
        .O(\SR[33][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [4]),
        .I3(\SR_reg[31] [4]),
        .O(\SR[33][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [5]),
        .I3(\SR_reg[31] [5]),
        .O(\SR[33][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [6]),
        .I3(\SR_reg[31] [6]),
        .O(\SR[33][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[33][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[32] [7]),
        .I3(\SR_reg[31] [7]),
        .O(\SR[33][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [0]),
        .I3(\SR_reg[32] [0]),
        .O(\SR[34][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [1]),
        .I3(\SR_reg[32] [1]),
        .O(\SR[34][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [2]),
        .I3(\SR_reg[32] [2]),
        .O(\SR[34][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [3]),
        .I3(\SR_reg[32] [3]),
        .O(\SR[34][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [4]),
        .I3(\SR_reg[32] [4]),
        .O(\SR[34][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [5]),
        .I3(\SR_reg[32] [5]),
        .O(\SR[34][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [6]),
        .I3(\SR_reg[32] [6]),
        .O(\SR[34][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[34][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[33] [7]),
        .I3(\SR_reg[32] [7]),
        .O(\SR[34][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [0]),
        .I3(\SR_reg[33] [0]),
        .O(\SR[35][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [1]),
        .I3(\SR_reg[33] [1]),
        .O(\SR[35][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [2]),
        .I3(\SR_reg[33] [2]),
        .O(\SR[35][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [3]),
        .I3(\SR_reg[33] [3]),
        .O(\SR[35][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [4]),
        .I3(\SR_reg[33] [4]),
        .O(\SR[35][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [5]),
        .I3(\SR_reg[33] [5]),
        .O(\SR[35][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [6]),
        .I3(\SR_reg[33] [6]),
        .O(\SR[35][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[35][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[34] [7]),
        .I3(\SR_reg[33] [7]),
        .O(\SR[35][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [0]),
        .I3(\SR_reg[34] [0]),
        .O(\SR[36][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [1]),
        .I3(\SR_reg[34] [1]),
        .O(\SR[36][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [2]),
        .I3(\SR_reg[34] [2]),
        .O(\SR[36][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [3]),
        .I3(\SR_reg[34] [3]),
        .O(\SR[36][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [4]),
        .I3(\SR_reg[34] [4]),
        .O(\SR[36][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [5]),
        .I3(\SR_reg[34] [5]),
        .O(\SR[36][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [6]),
        .I3(\SR_reg[34] [6]),
        .O(\SR[36][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[36][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[35] [7]),
        .I3(\SR_reg[34] [7]),
        .O(\SR[36][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [0]),
        .I3(\SR_reg[35] [0]),
        .O(\SR[37][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [1]),
        .I3(\SR_reg[35] [1]),
        .O(\SR[37][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [2]),
        .I3(\SR_reg[35] [2]),
        .O(\SR[37][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [3]),
        .I3(\SR_reg[35] [3]),
        .O(\SR[37][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [4]),
        .I3(\SR_reg[35] [4]),
        .O(\SR[37][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [5]),
        .I3(\SR_reg[35] [5]),
        .O(\SR[37][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [6]),
        .I3(\SR_reg[35] [6]),
        .O(\SR[37][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[37][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[36] [7]),
        .I3(\SR_reg[35] [7]),
        .O(\SR[37][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [0]),
        .I3(\SR_reg[36] [0]),
        .O(\SR[38][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [1]),
        .I3(\SR_reg[36] [1]),
        .O(\SR[38][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [2]),
        .I3(\SR_reg[36] [2]),
        .O(\SR[38][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [3]),
        .I3(\SR_reg[36] [3]),
        .O(\SR[38][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [4]),
        .I3(\SR_reg[36] [4]),
        .O(\SR[38][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [5]),
        .I3(\SR_reg[36] [5]),
        .O(\SR[38][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [6]),
        .I3(\SR_reg[36] [6]),
        .O(\SR[38][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[38][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[37] [7]),
        .I3(\SR_reg[36] [7]),
        .O(\SR[38][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [0]),
        .I3(\SR_reg[37] [0]),
        .O(\SR[39][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [1]),
        .I3(\SR_reg[37] [1]),
        .O(\SR[39][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [2]),
        .I3(\SR_reg[37] [2]),
        .O(\SR[39][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [3]),
        .I3(\SR_reg[37] [3]),
        .O(\SR[39][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [4]),
        .I3(\SR_reg[37] [4]),
        .O(\SR[39][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [5]),
        .I3(\SR_reg[37] [5]),
        .O(\SR[39][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [6]),
        .I3(\SR_reg[37] [6]),
        .O(\SR[39][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[39][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[38] [7]),
        .I3(\SR_reg[37] [7]),
        .O(\SR[39][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [0]),
        .I3(\SR_reg[1] [0]),
        .O(\SR[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [1]),
        .I3(\SR_reg[1] [1]),
        .O(\SR[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [2]),
        .I3(\SR_reg[1] [2]),
        .O(\SR[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [3]),
        .I3(\SR_reg[1] [3]),
        .O(\SR[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [4]),
        .I3(\SR_reg[1] [4]),
        .O(\SR[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [5]),
        .I3(\SR_reg[1] [5]),
        .O(\SR[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [6]),
        .I3(\SR_reg[1] [6]),
        .O(\SR[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[3][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[2] [7]),
        .I3(\SR_reg[1] [7]),
        .O(\SR[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [0]),
        .I3(\SR_reg[38] [0]),
        .O(\SR[40][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [1]),
        .I3(\SR_reg[38] [1]),
        .O(\SR[40][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [2]),
        .I3(\SR_reg[38] [2]),
        .O(\SR[40][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [3]),
        .I3(\SR_reg[38] [3]),
        .O(\SR[40][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [4]),
        .I3(\SR_reg[38] [4]),
        .O(\SR[40][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [5]),
        .I3(\SR_reg[38] [5]),
        .O(\SR[40][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [6]),
        .I3(\SR_reg[38] [6]),
        .O(\SR[40][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[40][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[39] [7]),
        .I3(\SR_reg[38] [7]),
        .O(\SR[40][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [0]),
        .I3(\SR_reg[39] [0]),
        .O(\SR[41][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [1]),
        .I3(\SR_reg[39] [1]),
        .O(\SR[41][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [2]),
        .I3(\SR_reg[39] [2]),
        .O(\SR[41][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [3]),
        .I3(\SR_reg[39] [3]),
        .O(\SR[41][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [4]),
        .I3(\SR_reg[39] [4]),
        .O(\SR[41][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [5]),
        .I3(\SR_reg[39] [5]),
        .O(\SR[41][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [6]),
        .I3(\SR_reg[39] [6]),
        .O(\SR[41][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[41][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[40] [7]),
        .I3(\SR_reg[39] [7]),
        .O(\SR[41][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [0]),
        .I3(\SR_reg[40] [0]),
        .O(\SR[42][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [1]),
        .I3(\SR_reg[40] [1]),
        .O(\SR[42][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [2]),
        .I3(\SR_reg[40] [2]),
        .O(\SR[42][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [3]),
        .I3(\SR_reg[40] [3]),
        .O(\SR[42][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [4]),
        .I3(\SR_reg[40] [4]),
        .O(\SR[42][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [5]),
        .I3(\SR_reg[40] [5]),
        .O(\SR[42][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [6]),
        .I3(\SR_reg[40] [6]),
        .O(\SR[42][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[42][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[41] [7]),
        .I3(\SR_reg[40] [7]),
        .O(\SR[42][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [0]),
        .I3(\SR_reg[41] [0]),
        .O(\SR[43][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [1]),
        .I3(\SR_reg[41] [1]),
        .O(\SR[43][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [2]),
        .I3(\SR_reg[41] [2]),
        .O(\SR[43][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [3]),
        .I3(\SR_reg[41] [3]),
        .O(\SR[43][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [4]),
        .I3(\SR_reg[41] [4]),
        .O(\SR[43][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [5]),
        .I3(\SR_reg[41] [5]),
        .O(\SR[43][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__2_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [6]),
        .I3(\SR_reg[41] [6]),
        .O(\SR[43][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[43][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[42] [7]),
        .I3(\SR_reg[41] [7]),
        .O(\SR[43][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [0]),
        .I3(\SR_reg[42] [0]),
        .O(\SR[44][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [1]),
        .I3(\SR_reg[42] [1]),
        .O(\SR[44][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [2]),
        .I3(\SR_reg[42] [2]),
        .O(\SR[44][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [3]),
        .I3(\SR_reg[42] [3]),
        .O(\SR[44][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [4]),
        .I3(\SR_reg[42] [4]),
        .O(\SR[44][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [5]),
        .I3(\SR_reg[42] [5]),
        .O(\SR[44][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [6]),
        .I3(\SR_reg[42] [6]),
        .O(\SR[44][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[44][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[43] [7]),
        .I3(\SR_reg[42] [7]),
        .O(\SR[44][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [0]),
        .I3(\SR_reg[43] [0]),
        .O(\SR[45][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [1]),
        .I3(\SR_reg[43] [1]),
        .O(\SR[45][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [2]),
        .I3(\SR_reg[43] [2]),
        .O(\SR[45][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [3]),
        .I3(\SR_reg[43] [3]),
        .O(\SR[45][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [4]),
        .I3(\SR_reg[43] [4]),
        .O(\SR[45][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [5]),
        .I3(\SR_reg[43] [5]),
        .O(\SR[45][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [6]),
        .I3(\SR_reg[43] [6]),
        .O(\SR[45][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[45][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[44] [7]),
        .I3(\SR_reg[43] [7]),
        .O(\SR[45][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [0]),
        .I3(\SR_reg[44] [0]),
        .O(\SR[46][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [1]),
        .I3(\SR_reg[44] [1]),
        .O(\SR[46][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [2]),
        .I3(\SR_reg[44] [2]),
        .O(\SR[46][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [3]),
        .I3(\SR_reg[44] [3]),
        .O(\SR[46][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [4]),
        .I3(\SR_reg[44] [4]),
        .O(\SR[46][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [5]),
        .I3(\SR_reg[44] [5]),
        .O(\SR[46][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [6]),
        .I3(\SR_reg[44] [6]),
        .O(\SR[46][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[46][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[45] [7]),
        .I3(\SR_reg[44] [7]),
        .O(\SR[46][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [0]),
        .I3(\SR_reg[45] [0]),
        .O(\SR[47][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [1]),
        .I3(\SR_reg[45] [1]),
        .O(\SR[47][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [2]),
        .I3(\SR_reg[45] [2]),
        .O(\SR[47][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [3]),
        .I3(\SR_reg[45] [3]),
        .O(\SR[47][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [4]),
        .I3(\SR_reg[45] [4]),
        .O(\SR[47][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [5]),
        .I3(\SR_reg[45] [5]),
        .O(\SR[47][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [6]),
        .I3(\SR_reg[45] [6]),
        .O(\SR[47][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[47][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[46] [7]),
        .I3(\SR_reg[45] [7]),
        .O(\SR[47][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [0]),
        .I3(\SR_reg[46] [0]),
        .O(\SR[48][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [1]),
        .I3(\SR_reg[46] [1]),
        .O(\SR[48][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [2]),
        .I3(\SR_reg[46] [2]),
        .O(\SR[48][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [3]),
        .I3(\SR_reg[46] [3]),
        .O(\SR[48][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [4]),
        .I3(\SR_reg[46] [4]),
        .O(\SR[48][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [5]),
        .I3(\SR_reg[46] [5]),
        .O(\SR[48][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [6]),
        .I3(\SR_reg[46] [6]),
        .O(\SR[48][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[48][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[47] [7]),
        .I3(\SR_reg[46] [7]),
        .O(\SR[48][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [0]),
        .I3(\SR_reg[47] [0]),
        .O(\SR[49][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [1]),
        .I3(\SR_reg[47] [1]),
        .O(\SR[49][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [2]),
        .I3(\SR_reg[47] [2]),
        .O(\SR[49][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [3]),
        .I3(\SR_reg[47] [3]),
        .O(\SR[49][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [4]),
        .I3(\SR_reg[47] [4]),
        .O(\SR[49][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [5]),
        .I3(\SR_reg[47] [5]),
        .O(\SR[49][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [6]),
        .I3(\SR_reg[47] [6]),
        .O(\SR[49][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[49][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[48] [7]),
        .I3(\SR_reg[47] [7]),
        .O(\SR[49][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [0]),
        .I3(\SR_reg[2] [0]),
        .O(\SR[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [1]),
        .I3(\SR_reg[2] [1]),
        .O(\SR[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [2]),
        .I3(\SR_reg[2] [2]),
        .O(\SR[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [3]),
        .I3(\SR_reg[2] [3]),
        .O(\SR[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [4]),
        .I3(\SR_reg[2] [4]),
        .O(\SR[4][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [5]),
        .I3(\SR_reg[2] [5]),
        .O(\SR[4][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [6]),
        .I3(\SR_reg[2] [6]),
        .O(\SR[4][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[4][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[3] [7]),
        .I3(\SR_reg[2] [7]),
        .O(\SR[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [0]),
        .I3(\SR_reg[48] [0]),
        .O(\SR[50][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [1]),
        .I3(\SR_reg[48] [1]),
        .O(\SR[50][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [2]),
        .I3(\SR_reg[48] [2]),
        .O(\SR[50][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [3]),
        .I3(\SR_reg[48] [3]),
        .O(\SR[50][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [4]),
        .I3(\SR_reg[48] [4]),
        .O(\SR[50][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [5]),
        .I3(\SR_reg[48] [5]),
        .O(\SR[50][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [6]),
        .I3(\SR_reg[48] [6]),
        .O(\SR[50][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[50][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[49] [7]),
        .I3(\SR_reg[48] [7]),
        .O(\SR[50][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [0]),
        .I3(\SR_reg[49] [0]),
        .O(\SR[51][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [1]),
        .I3(\SR_reg[49] [1]),
        .O(\SR[51][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [2]),
        .I3(\SR_reg[49] [2]),
        .O(\SR[51][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [3]),
        .I3(\SR_reg[49] [3]),
        .O(\SR[51][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [4]),
        .I3(\SR_reg[49] [4]),
        .O(\SR[51][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [5]),
        .I3(\SR_reg[49] [5]),
        .O(\SR[51][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [6]),
        .I3(\SR_reg[49] [6]),
        .O(\SR[51][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[51][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[50] [7]),
        .I3(\SR_reg[49] [7]),
        .O(\SR[51][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [0]),
        .I3(\SR_reg[50] [0]),
        .O(\SR[52][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [1]),
        .I3(\SR_reg[50] [1]),
        .O(\SR[52][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [2]),
        .I3(\SR_reg[50] [2]),
        .O(\SR[52][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [3]),
        .I3(\SR_reg[50] [3]),
        .O(\SR[52][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [4]),
        .I3(\SR_reg[50] [4]),
        .O(\SR[52][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [5]),
        .I3(\SR_reg[50] [5]),
        .O(\SR[52][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [6]),
        .I3(\SR_reg[50] [6]),
        .O(\SR[52][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[52][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[51] [7]),
        .I3(\SR_reg[50] [7]),
        .O(\SR[52][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [0]),
        .I3(\SR_reg[51] [0]),
        .O(\SR[53][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [1]),
        .I3(\SR_reg[51] [1]),
        .O(\SR[53][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [2]),
        .I3(\SR_reg[51] [2]),
        .O(\SR[53][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [3]),
        .I3(\SR_reg[51] [3]),
        .O(\SR[53][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [4]),
        .I3(\SR_reg[51] [4]),
        .O(\SR[53][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [5]),
        .I3(\SR_reg[51] [5]),
        .O(\SR[53][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [6]),
        .I3(\SR_reg[51] [6]),
        .O(\SR[53][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[53][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[52] [7]),
        .I3(\SR_reg[51] [7]),
        .O(\SR[53][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [0]),
        .I3(\SR_reg[52] [0]),
        .O(\SR[54][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [1]),
        .I3(\SR_reg[52] [1]),
        .O(\SR[54][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [2]),
        .I3(\SR_reg[52] [2]),
        .O(\SR[54][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [3]),
        .I3(\SR_reg[52] [3]),
        .O(\SR[54][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [4]),
        .I3(\SR_reg[52] [4]),
        .O(\SR[54][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [5]),
        .I3(\SR_reg[52] [5]),
        .O(\SR[54][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [6]),
        .I3(\SR_reg[52] [6]),
        .O(\SR[54][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[54][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[53] [7]),
        .I3(\SR_reg[52] [7]),
        .O(\SR[54][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [0]),
        .I3(\SR_reg[53] [0]),
        .O(\SR[55][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [1]),
        .I3(\SR_reg[53] [1]),
        .O(\SR[55][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [2]),
        .I3(\SR_reg[53] [2]),
        .O(\SR[55][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [3]),
        .I3(\SR_reg[53] [3]),
        .O(\SR[55][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [4]),
        .I3(\SR_reg[53] [4]),
        .O(\SR[55][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [5]),
        .I3(\SR_reg[53] [5]),
        .O(\SR[55][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [6]),
        .I3(\SR_reg[53] [6]),
        .O(\SR[55][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[55][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[54] [7]),
        .I3(\SR_reg[53] [7]),
        .O(\SR[55][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [0]),
        .I3(\SR_reg[54] [0]),
        .O(\SR[56][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [1]),
        .I3(\SR_reg[54] [1]),
        .O(\SR[56][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [2]),
        .I3(\SR_reg[54] [2]),
        .O(\SR[56][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [3]),
        .I3(\SR_reg[54] [3]),
        .O(\SR[56][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [4]),
        .I3(\SR_reg[54] [4]),
        .O(\SR[56][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [5]),
        .I3(\SR_reg[54] [5]),
        .O(\SR[56][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [6]),
        .I3(\SR_reg[54] [6]),
        .O(\SR[56][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[56][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[55] [7]),
        .I3(\SR_reg[54] [7]),
        .O(\SR[56][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [0]),
        .I3(\SR_reg[55] [0]),
        .O(\SR[57][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [1]),
        .I3(\SR_reg[55] [1]),
        .O(\SR[57][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [2]),
        .I3(\SR_reg[55] [2]),
        .O(\SR[57][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [3]),
        .I3(\SR_reg[55] [3]),
        .O(\SR[57][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [4]),
        .I3(\SR_reg[55] [4]),
        .O(\SR[57][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [5]),
        .I3(\SR_reg[55] [5]),
        .O(\SR[57][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [6]),
        .I3(\SR_reg[55] [6]),
        .O(\SR[57][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[57][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[56] [7]),
        .I3(\SR_reg[55] [7]),
        .O(\SR[57][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [0]),
        .I3(\SR_reg[56] [0]),
        .O(\SR[58][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [1]),
        .I3(\SR_reg[56] [1]),
        .O(\SR[58][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [2]),
        .I3(\SR_reg[56] [2]),
        .O(\SR[58][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [3]),
        .I3(\SR_reg[56] [3]),
        .O(\SR[58][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [4]),
        .I3(\SR_reg[56] [4]),
        .O(\SR[58][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [5]),
        .I3(\SR_reg[56] [5]),
        .O(\SR[58][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [6]),
        .I3(\SR_reg[56] [6]),
        .O(\SR[58][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[58][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[57] [7]),
        .I3(\SR_reg[56] [7]),
        .O(\SR[58][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [0]),
        .I3(\SR_reg[57] [0]),
        .O(\SR[59][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [1]),
        .I3(\SR_reg[57] [1]),
        .O(\SR[59][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [2]),
        .I3(\SR_reg[57] [2]),
        .O(\SR[59][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [3]),
        .I3(\SR_reg[57] [3]),
        .O(\SR[59][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [4]),
        .I3(\SR_reg[57] [4]),
        .O(\SR[59][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [5]),
        .I3(\SR_reg[57] [5]),
        .O(\SR[59][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [6]),
        .I3(\SR_reg[57] [6]),
        .O(\SR[59][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[59][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[58] [7]),
        .I3(\SR_reg[57] [7]),
        .O(\SR[59][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [0]),
        .I3(\SR_reg[3] [0]),
        .O(\SR[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [1]),
        .I3(\SR_reg[3] [1]),
        .O(\SR[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [2]),
        .I3(\SR_reg[3] [2]),
        .O(\SR[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [3]),
        .I3(\SR_reg[3] [3]),
        .O(\SR[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [4]),
        .I3(\SR_reg[3] [4]),
        .O(\SR[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [5]),
        .I3(\SR_reg[3] [5]),
        .O(\SR[5][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [6]),
        .I3(\SR_reg[3] [6]),
        .O(\SR[5][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[5][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[4] [7]),
        .I3(\SR_reg[3] [7]),
        .O(\SR[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [0]),
        .I3(\SR_reg[58] [0]),
        .O(\SR[60][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [1]),
        .I3(\SR_reg[58] [1]),
        .O(\SR[60][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [2]),
        .I3(\SR_reg[58] [2]),
        .O(\SR[60][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [3]),
        .I3(\SR_reg[58] [3]),
        .O(\SR[60][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [4]),
        .I3(\SR_reg[58] [4]),
        .O(\SR[60][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [5]),
        .I3(\SR_reg[58] [5]),
        .O(\SR[60][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [6]),
        .I3(\SR_reg[58] [6]),
        .O(\SR[60][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[60][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[59] [7]),
        .I3(\SR_reg[58] [7]),
        .O(\SR[60][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [0]),
        .I3(\SR_reg[59] [0]),
        .O(\SR[61][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [1]),
        .I3(\SR_reg[59] [1]),
        .O(\SR[61][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [2]),
        .I3(\SR_reg[59] [2]),
        .O(\SR[61][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [3]),
        .I3(\SR_reg[59] [3]),
        .O(\SR[61][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [4]),
        .I3(\SR_reg[59] [4]),
        .O(\SR[61][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [5]),
        .I3(\SR_reg[59] [5]),
        .O(\SR[61][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [6]),
        .I3(\SR_reg[59] [6]),
        .O(\SR[61][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[61][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[60] [7]),
        .I3(\SR_reg[59] [7]),
        .O(\SR[61][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [0]),
        .I3(\SR_reg[60] [0]),
        .O(\SR[62][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [1]),
        .I3(\SR_reg[60] [1]),
        .O(\SR[62][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [2]),
        .I3(\SR_reg[60] [2]),
        .O(\SR[62][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [3]),
        .I3(\SR_reg[60] [3]),
        .O(\SR[62][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [4]),
        .I3(\SR_reg[60] [4]),
        .O(\SR[62][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [5]),
        .I3(\SR_reg[60] [5]),
        .O(\SR[62][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [6]),
        .I3(\SR_reg[60] [6]),
        .O(\SR[62][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[62][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[61] [7]),
        .I3(\SR_reg[60] [7]),
        .O(\SR[62][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [0]),
        .I3(\SR_reg[61] [0]),
        .O(\SR[63][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][1]_i_1 
       (.I0(COMPLETE_PACKET),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [1]),
        .I3(\SR_reg[61] [1]),
        .O(\SR[63][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [2]),
        .I3(\SR_reg[61] [2]),
        .O(\SR[63][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [3]),
        .I3(\SR_reg[61] [3]),
        .O(\SR[63][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [4]),
        .I3(\SR_reg[61] [4]),
        .O(\SR[63][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [5]),
        .I3(\SR_reg[61] [5]),
        .O(\SR[63][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__3_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [6]),
        .I3(\SR_reg[61] [6]),
        .O(\SR[63][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[63][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__0_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[62] [7]),
        .I3(\SR_reg[61] [7]),
        .O(\SR[63][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [0]),
        .I3(\SR_reg[4] [0]),
        .O(\SR[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [1]),
        .I3(\SR_reg[4] [1]),
        .O(\SR[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [2]),
        .I3(\SR_reg[4] [2]),
        .O(\SR[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [3]),
        .I3(\SR_reg[4] [3]),
        .O(\SR[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [4]),
        .I3(\SR_reg[4] [4]),
        .O(\SR[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [5]),
        .I3(\SR_reg[4] [5]),
        .O(\SR[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [6]),
        .I3(\SR_reg[4] [6]),
        .O(\SR[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[6][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[5] [7]),
        .I3(\SR_reg[4] [7]),
        .O(\SR[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [0]),
        .I3(\SR_reg[5] [0]),
        .O(\SR[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [1]),
        .I3(\SR_reg[5] [1]),
        .O(\SR[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [2]),
        .I3(\SR_reg[5] [2]),
        .O(\SR[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [3]),
        .I3(\SR_reg[5] [3]),
        .O(\SR[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [4]),
        .I3(\SR_reg[5] [4]),
        .O(\SR[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [5]),
        .I3(\SR_reg[5] [5]),
        .O(\SR[7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [6]),
        .I3(\SR_reg[5] [6]),
        .O(\SR[7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[7][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[6] [7]),
        .I3(\SR_reg[5] [7]),
        .O(\SR[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [0]),
        .I3(\SR_reg[6] [0]),
        .O(\SR[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [1]),
        .I3(\SR_reg[6] [1]),
        .O(\SR[8][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [2]),
        .I3(\SR_reg[6] [2]),
        .O(\SR[8][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [3]),
        .I3(\SR_reg[6] [3]),
        .O(\SR[8][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [4]),
        .I3(\SR_reg[6] [4]),
        .O(\SR[8][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [5]),
        .I3(\SR_reg[6] [5]),
        .O(\SR[8][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [6]),
        .I3(\SR_reg[6] [6]),
        .O(\SR[8][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[8][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[7] [7]),
        .I3(\SR_reg[6] [7]),
        .O(\SR[8][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][0]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [0]),
        .I3(\SR_reg[7] [0]),
        .O(\SR[9][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][1]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [1]),
        .I3(\SR_reg[7] [1]),
        .O(\SR[9][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][2]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [2]),
        .I3(\SR_reg[7] [2]),
        .O(\SR[9][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][3]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [3]),
        .I3(\SR_reg[7] [3]),
        .O(\SR[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][4]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [4]),
        .I3(\SR_reg[7] [4]),
        .O(\SR[9][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][5]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [5]),
        .I3(\SR_reg[7] [5]),
        .O(\SR[9][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][6]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep__1_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [6]),
        .I3(\SR_reg[7] [6]),
        .O(\SR[9][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \SR[9][7]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(\SR_reg[8] [7]),
        .I3(\SR_reg[7] [7]),
        .O(\SR[9][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][0] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[8]),
        .Q(\SR_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][1] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[9]),
        .Q(\SR_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][2] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[10]),
        .Q(\SR_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][3] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[11]),
        .Q(\SR_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][4] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[12]),
        .Q(\SR_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][5] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[13]),
        .Q(\SR_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][6] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[14]),
        .Q(\SR_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[0][7] 
       (.C(CLK),
        .CE(\SR[0]_0 ),
        .CLR(sel0[34]),
        .D(S_AXIS_TDATA[15]),
        .Q(\SR_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][0]_i_1_n_0 ),
        .Q(\SR_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][1]_i_1_n_0 ),
        .Q(\SR_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][2]_i_1_n_0 ),
        .Q(\SR_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][3]_i_1_n_0 ),
        .Q(\SR_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][4]_i_1_n_0 ),
        .Q(\SR_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][5]_i_1_n_0 ),
        .Q(\SR_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][6]_i_1_n_0 ),
        .Q(\SR_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[10][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[10][7]_i_1_n_0 ),
        .Q(\SR_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][0]_i_1_n_0 ),
        .Q(\SR_reg[11] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][1]_i_1_n_0 ),
        .Q(\SR_reg[11] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][2]_i_1_n_0 ),
        .Q(\SR_reg[11] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][3]_i_1_n_0 ),
        .Q(\SR_reg[11] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][4]_i_1_n_0 ),
        .Q(\SR_reg[11] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][5]_i_1_n_0 ),
        .Q(\SR_reg[11] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][6]_i_1_n_0 ),
        .Q(\SR_reg[11] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[11][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[11][7]_i_1_n_0 ),
        .Q(\SR_reg[11] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][0]_i_1_n_0 ),
        .Q(\SR_reg[12] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][1]_i_1_n_0 ),
        .Q(\SR_reg[12] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][2]_i_1_n_0 ),
        .Q(\SR_reg[12] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][3]_i_1_n_0 ),
        .Q(\SR_reg[12] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][4]_i_1_n_0 ),
        .Q(\SR_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][5]_i_1_n_0 ),
        .Q(\SR_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][6]_i_1_n_0 ),
        .Q(\SR_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[12][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[12][7]_i_1_n_0 ),
        .Q(\SR_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][0]_i_1_n_0 ),
        .Q(\SR_reg[13] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][1]_i_1_n_0 ),
        .Q(\SR_reg[13] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][2]_i_1_n_0 ),
        .Q(\SR_reg[13] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][3]_i_1_n_0 ),
        .Q(\SR_reg[13] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][4]_i_1_n_0 ),
        .Q(\SR_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][5]_i_1_n_0 ),
        .Q(\SR_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][6]_i_1_n_0 ),
        .Q(\SR_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[13][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[13][7]_i_1_n_0 ),
        .Q(\SR_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][0]_i_1_n_0 ),
        .Q(\SR_reg[14] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][1]_i_1_n_0 ),
        .Q(\SR_reg[14] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][2]_i_1_n_0 ),
        .Q(\SR_reg[14] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][3]_i_1_n_0 ),
        .Q(\SR_reg[14] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][4]_i_1_n_0 ),
        .Q(\SR_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][5]_i_1_n_0 ),
        .Q(\SR_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][6]_i_1_n_0 ),
        .Q(\SR_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[14][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[14][7]_i_1_n_0 ),
        .Q(\SR_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][0]_i_1_n_0 ),
        .Q(\SR_reg[15] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][1]_i_1_n_0 ),
        .Q(\SR_reg[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][2]_i_1_n_0 ),
        .Q(\SR_reg[15] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][3]_i_1_n_0 ),
        .Q(\SR_reg[15] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][4]_i_1_n_0 ),
        .Q(\SR_reg[15] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][5]_i_1_n_0 ),
        .Q(\SR_reg[15] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][6]_i_1_n_0 ),
        .Q(\SR_reg[15] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[15][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[15][7]_i_1_n_0 ),
        .Q(\SR_reg[15] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][0]_i_1_n_0 ),
        .Q(\SR_reg[16] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][1]_i_1_n_0 ),
        .Q(\SR_reg[16] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][2]_i_1_n_0 ),
        .Q(\SR_reg[16] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][3]_i_1_n_0 ),
        .Q(\SR_reg[16] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][4]_i_1_n_0 ),
        .Q(\SR_reg[16] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][5]_i_1_n_0 ),
        .Q(\SR_reg[16] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][6]_i_1_n_0 ),
        .Q(\SR_reg[16] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[16][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[16][7]_i_1_n_0 ),
        .Q(\SR_reg[16] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][0]_i_1_n_0 ),
        .Q(\SR_reg[17] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][1]_i_1_n_0 ),
        .Q(\SR_reg[17] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][2]_i_1_n_0 ),
        .Q(\SR_reg[17] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][3]_i_1_n_0 ),
        .Q(\SR_reg[17] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][4]_i_1_n_0 ),
        .Q(\SR_reg[17] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][5]_i_1_n_0 ),
        .Q(\SR_reg[17] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][6]_i_1_n_0 ),
        .Q(\SR_reg[17] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[17][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[17][7]_i_1_n_0 ),
        .Q(\SR_reg[17] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][0]_i_1_n_0 ),
        .Q(\SR_reg[18] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][1]_i_1_n_0 ),
        .Q(\SR_reg[18] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][2]_i_1_n_0 ),
        .Q(\SR_reg[18] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][3]_i_1_n_0 ),
        .Q(\SR_reg[18] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][4]_i_1_n_0 ),
        .Q(\SR_reg[18] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][5]_i_1_n_0 ),
        .Q(\SR_reg[18] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][6]_i_1_n_0 ),
        .Q(\SR_reg[18] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[18][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[18][7]_i_1_n_0 ),
        .Q(\SR_reg[18] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][0]_i_1_n_0 ),
        .Q(\SR_reg[19] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][1]_i_1_n_0 ),
        .Q(\SR_reg[19] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][2]_i_1_n_0 ),
        .Q(\SR_reg[19] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][3]_i_1_n_0 ),
        .Q(\SR_reg[19] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][4]_i_1_n_0 ),
        .Q(\SR_reg[19] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][5]_i_1_n_0 ),
        .Q(\SR_reg[19] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][6]_i_1_n_0 ),
        .Q(\SR_reg[19] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[19][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[19][7]_i_1_n_0 ),
        .Q(\SR_reg[19] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[0]),
        .Q(\SR_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[1]),
        .Q(\SR_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[2]),
        .Q(\SR_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[3]),
        .Q(\SR_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[4]),
        .Q(\SR_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[5]),
        .Q(\SR_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[6]),
        .Q(\SR_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[1][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(p_1_in[7]),
        .Q(\SR_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][0]_i_1_n_0 ),
        .Q(\SR_reg[20] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][1]_i_1_n_0 ),
        .Q(\SR_reg[20] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][2]_i_1_n_0 ),
        .Q(\SR_reg[20] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][3]_i_1_n_0 ),
        .Q(\SR_reg[20] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][4]_i_1_n_0 ),
        .Q(\SR_reg[20] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][5]_i_1_n_0 ),
        .Q(\SR_reg[20] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][6]_i_1_n_0 ),
        .Q(\SR_reg[20] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[20][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[20][7]_i_1_n_0 ),
        .Q(\SR_reg[20] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][0]_i_1_n_0 ),
        .Q(\SR_reg[21] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][1]_i_1_n_0 ),
        .Q(\SR_reg[21] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][2]_i_1_n_0 ),
        .Q(\SR_reg[21] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][3]_i_1_n_0 ),
        .Q(\SR_reg[21] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][4]_i_1_n_0 ),
        .Q(\SR_reg[21] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][5]_i_1_n_0 ),
        .Q(\SR_reg[21] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][6]_i_1_n_0 ),
        .Q(\SR_reg[21] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[21][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[21][7]_i_1_n_0 ),
        .Q(\SR_reg[21] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][0]_i_1_n_0 ),
        .Q(\SR_reg[22] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][1]_i_1_n_0 ),
        .Q(\SR_reg[22] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][2]_i_1_n_0 ),
        .Q(\SR_reg[22] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][3]_i_1_n_0 ),
        .Q(\SR_reg[22] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][4]_i_1_n_0 ),
        .Q(\SR_reg[22] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][5]_i_1_n_0 ),
        .Q(\SR_reg[22] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][6]_i_1_n_0 ),
        .Q(\SR_reg[22] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[22][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[22][7]_i_1_n_0 ),
        .Q(\SR_reg[22] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][0]_i_1_n_0 ),
        .Q(\SR_reg[23] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][1]_i_1_n_0 ),
        .Q(\SR_reg[23] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][2]_i_1_n_0 ),
        .Q(\SR_reg[23] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][3]_i_1_n_0 ),
        .Q(\SR_reg[23] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][4]_i_1_n_0 ),
        .Q(\SR_reg[23] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][5]_i_1_n_0 ),
        .Q(\SR_reg[23] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][6]_i_1_n_0 ),
        .Q(\SR_reg[23] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[23][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[23][7]_i_1_n_0 ),
        .Q(\SR_reg[23] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][0]_i_1_n_0 ),
        .Q(\SR_reg[24] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][1]_i_1_n_0 ),
        .Q(\SR_reg[24] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][2]_i_1_n_0 ),
        .Q(\SR_reg[24] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][3]_i_1_n_0 ),
        .Q(\SR_reg[24] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][4]_i_1_n_0 ),
        .Q(\SR_reg[24] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][5]_i_1_n_0 ),
        .Q(\SR_reg[24] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][6]_i_1_n_0 ),
        .Q(\SR_reg[24] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[24][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[24][7]_i_1_n_0 ),
        .Q(\SR_reg[24] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][0]_i_1_n_0 ),
        .Q(\SR_reg[25] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][1]_i_1_n_0 ),
        .Q(\SR_reg[25] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][2]_i_1_n_0 ),
        .Q(\SR_reg[25] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][3]_i_1_n_0 ),
        .Q(\SR_reg[25] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][4]_i_1_n_0 ),
        .Q(\SR_reg[25] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][5]_i_1_n_0 ),
        .Q(\SR_reg[25] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][6]_i_1_n_0 ),
        .Q(\SR_reg[25] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[25][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[25][7]_i_1_n_0 ),
        .Q(\SR_reg[25] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][0]_i_1_n_0 ),
        .Q(\SR_reg[26] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][1]_i_1_n_0 ),
        .Q(\SR_reg[26] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][2]_i_1_n_0 ),
        .Q(\SR_reg[26] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][3]_i_1_n_0 ),
        .Q(\SR_reg[26] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][4]_i_1_n_0 ),
        .Q(\SR_reg[26] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][5]_i_1_n_0 ),
        .Q(\SR_reg[26] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][6]_i_1_n_0 ),
        .Q(\SR_reg[26] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[26][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[26][7]_i_1_n_0 ),
        .Q(\SR_reg[26] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][0]_i_1_n_0 ),
        .Q(\SR_reg[27] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][1]_i_1_n_0 ),
        .Q(\SR_reg[27] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][2]_i_1_n_0 ),
        .Q(\SR_reg[27] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][3]_i_1_n_0 ),
        .Q(\SR_reg[27] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][4]_i_1_n_0 ),
        .Q(\SR_reg[27] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][5]_i_1_n_0 ),
        .Q(\SR_reg[27] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][6]_i_1_n_0 ),
        .Q(\SR_reg[27] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[27][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[27][7]_i_1_n_0 ),
        .Q(\SR_reg[27] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][0]_i_1_n_0 ),
        .Q(\SR_reg[28] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][1]_i_1_n_0 ),
        .Q(\SR_reg[28] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][2]_i_1_n_0 ),
        .Q(\SR_reg[28] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][3]_i_1_n_0 ),
        .Q(\SR_reg[28] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][4]_i_1_n_0 ),
        .Q(\SR_reg[28] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][5]_i_1_n_0 ),
        .Q(\SR_reg[28] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][6]_i_1_n_0 ),
        .Q(\SR_reg[28] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[28][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[28][7]_i_1_n_0 ),
        .Q(\SR_reg[28] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][0]_i_1_n_0 ),
        .Q(\SR_reg[29] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][1]_i_1_n_0 ),
        .Q(\SR_reg[29] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][2]_i_1_n_0 ),
        .Q(\SR_reg[29] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][3]_i_1_n_0 ),
        .Q(\SR_reg[29] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][4]_i_1_n_0 ),
        .Q(\SR_reg[29] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][5]_i_1_n_0 ),
        .Q(\SR_reg[29] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][6]_i_1_n_0 ),
        .Q(\SR_reg[29] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[29][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[29][7]_i_1_n_0 ),
        .Q(\SR_reg[29] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][0]_i_1_n_0 ),
        .Q(\SR_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][1]_i_1_n_0 ),
        .Q(\SR_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][2]_i_1_n_0 ),
        .Q(\SR_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][3]_i_1_n_0 ),
        .Q(\SR_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][4]_i_1_n_0 ),
        .Q(\SR_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][5]_i_1_n_0 ),
        .Q(\SR_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][6]_i_1_n_0 ),
        .Q(\SR_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[2][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[2][7]_i_1_n_0 ),
        .Q(\SR_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][0]_i_1_n_0 ),
        .Q(\SR_reg[30] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][1]_i_1_n_0 ),
        .Q(\SR_reg[30] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][2]_i_1_n_0 ),
        .Q(\SR_reg[30] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][3]_i_1_n_0 ),
        .Q(\SR_reg[30] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][4]_i_1_n_0 ),
        .Q(\SR_reg[30] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][5]_i_1_n_0 ),
        .Q(\SR_reg[30] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][6]_i_1_n_0 ),
        .Q(\SR_reg[30] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[30][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[30][7]_i_1_n_0 ),
        .Q(\SR_reg[30] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][0]_i_1_n_0 ),
        .Q(\SR_reg[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][1]_i_1_n_0 ),
        .Q(\SR_reg[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][2]_i_1_n_0 ),
        .Q(\SR_reg[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][3]_i_1_n_0 ),
        .Q(\SR_reg[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][4]_i_1_n_0 ),
        .Q(\SR_reg[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][5]_i_1_n_0 ),
        .Q(\SR_reg[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][6]_i_1_n_0 ),
        .Q(\SR_reg[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[31][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[31][7]_i_1_n_0 ),
        .Q(\SR_reg[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][0]_i_1_n_0 ),
        .Q(\SR_reg[32] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][1]_i_1_n_0 ),
        .Q(\SR_reg[32] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][2]_i_1_n_0 ),
        .Q(\SR_reg[32] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][3]_i_1_n_0 ),
        .Q(\SR_reg[32] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][4]_i_1_n_0 ),
        .Q(\SR_reg[32] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][5]_i_1_n_0 ),
        .Q(\SR_reg[32] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][6]_i_1_n_0 ),
        .Q(\SR_reg[32] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[32][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[32][7]_i_1_n_0 ),
        .Q(\SR_reg[32] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][0]_i_1_n_0 ),
        .Q(\SR_reg[33] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][1]_i_1_n_0 ),
        .Q(\SR_reg[33] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][2]_i_1_n_0 ),
        .Q(\SR_reg[33] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][3]_i_1_n_0 ),
        .Q(\SR_reg[33] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][4]_i_1_n_0 ),
        .Q(\SR_reg[33] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][5]_i_1_n_0 ),
        .Q(\SR_reg[33] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][6]_i_1_n_0 ),
        .Q(\SR_reg[33] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[33][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[33][7]_i_1_n_0 ),
        .Q(\SR_reg[33] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][0]_i_1_n_0 ),
        .Q(\SR_reg[34] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][1]_i_1_n_0 ),
        .Q(\SR_reg[34] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][2]_i_1_n_0 ),
        .Q(\SR_reg[34] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][3]_i_1_n_0 ),
        .Q(\SR_reg[34] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][4]_i_1_n_0 ),
        .Q(\SR_reg[34] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][5]_i_1_n_0 ),
        .Q(\SR_reg[34] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][6]_i_1_n_0 ),
        .Q(\SR_reg[34] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[34][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[34][7]_i_1_n_0 ),
        .Q(\SR_reg[34] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][0]_i_1_n_0 ),
        .Q(\SR_reg[35] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][1]_i_1_n_0 ),
        .Q(\SR_reg[35] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][2]_i_1_n_0 ),
        .Q(\SR_reg[35] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][3]_i_1_n_0 ),
        .Q(\SR_reg[35] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][4]_i_1_n_0 ),
        .Q(\SR_reg[35] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][5]_i_1_n_0 ),
        .Q(\SR_reg[35] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][6]_i_1_n_0 ),
        .Q(\SR_reg[35] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[35][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[35][7]_i_1_n_0 ),
        .Q(\SR_reg[35] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][0]_i_1_n_0 ),
        .Q(\SR_reg[36] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][1]_i_1_n_0 ),
        .Q(\SR_reg[36] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][2]_i_1_n_0 ),
        .Q(\SR_reg[36] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][3]_i_1_n_0 ),
        .Q(\SR_reg[36] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][4]_i_1_n_0 ),
        .Q(\SR_reg[36] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][5]_i_1_n_0 ),
        .Q(\SR_reg[36] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][6]_i_1_n_0 ),
        .Q(\SR_reg[36] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[36][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[36][7]_i_1_n_0 ),
        .Q(\SR_reg[36] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][0]_i_1_n_0 ),
        .Q(\SR_reg[37] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][1]_i_1_n_0 ),
        .Q(\SR_reg[37] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][2]_i_1_n_0 ),
        .Q(\SR_reg[37] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][3]_i_1_n_0 ),
        .Q(\SR_reg[37] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][4]_i_1_n_0 ),
        .Q(\SR_reg[37] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][5]_i_1_n_0 ),
        .Q(\SR_reg[37] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][6]_i_1_n_0 ),
        .Q(\SR_reg[37] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[37][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[37][7]_i_1_n_0 ),
        .Q(\SR_reg[37] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][0]_i_1_n_0 ),
        .Q(\SR_reg[38] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][1]_i_1_n_0 ),
        .Q(\SR_reg[38] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][2]_i_1_n_0 ),
        .Q(\SR_reg[38] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][3]_i_1_n_0 ),
        .Q(\SR_reg[38] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][4]_i_1_n_0 ),
        .Q(\SR_reg[38] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][5]_i_1_n_0 ),
        .Q(\SR_reg[38] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][6]_i_1_n_0 ),
        .Q(\SR_reg[38] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[38][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[38][7]_i_1_n_0 ),
        .Q(\SR_reg[38] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][0]_i_1_n_0 ),
        .Q(\SR_reg[39] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][1]_i_1_n_0 ),
        .Q(\SR_reg[39] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][2]_i_1_n_0 ),
        .Q(\SR_reg[39] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][3]_i_1_n_0 ),
        .Q(\SR_reg[39] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][4]_i_1_n_0 ),
        .Q(\SR_reg[39] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][5]_i_1_n_0 ),
        .Q(\SR_reg[39] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][6]_i_1_n_0 ),
        .Q(\SR_reg[39] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[39][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[39][7]_i_1_n_0 ),
        .Q(\SR_reg[39] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][0]_i_1_n_0 ),
        .Q(\SR_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][1]_i_1_n_0 ),
        .Q(\SR_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][2]_i_1_n_0 ),
        .Q(\SR_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][3]_i_1_n_0 ),
        .Q(\SR_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][4]_i_1_n_0 ),
        .Q(\SR_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][5]_i_1_n_0 ),
        .Q(\SR_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][6]_i_1_n_0 ),
        .Q(\SR_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[3][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[3][7]_i_1_n_0 ),
        .Q(\SR_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][0]_i_1_n_0 ),
        .Q(\SR_reg[40] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][1]_i_1_n_0 ),
        .Q(\SR_reg[40] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][2]_i_1_n_0 ),
        .Q(\SR_reg[40] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][3]_i_1_n_0 ),
        .Q(\SR_reg[40] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][4]_i_1_n_0 ),
        .Q(\SR_reg[40] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][5]_i_1_n_0 ),
        .Q(\SR_reg[40] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][6]_i_1_n_0 ),
        .Q(\SR_reg[40] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[40][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[40][7]_i_1_n_0 ),
        .Q(\SR_reg[40] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][0]_i_1_n_0 ),
        .Q(\SR_reg[41] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][1]_i_1_n_0 ),
        .Q(\SR_reg[41] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][2]_i_1_n_0 ),
        .Q(\SR_reg[41] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][3]_i_1_n_0 ),
        .Q(\SR_reg[41] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][4]_i_1_n_0 ),
        .Q(\SR_reg[41] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][5]_i_1_n_0 ),
        .Q(\SR_reg[41] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][6]_i_1_n_0 ),
        .Q(\SR_reg[41] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[41][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[41][7]_i_1_n_0 ),
        .Q(\SR_reg[41] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][0]_i_1_n_0 ),
        .Q(\SR_reg[42] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][1]_i_1_n_0 ),
        .Q(\SR_reg[42] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][2]_i_1_n_0 ),
        .Q(\SR_reg[42] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][3]_i_1_n_0 ),
        .Q(\SR_reg[42] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][4]_i_1_n_0 ),
        .Q(\SR_reg[42] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][5]_i_1_n_0 ),
        .Q(\SR_reg[42] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][6]_i_1_n_0 ),
        .Q(\SR_reg[42] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[42][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[42][7]_i_1_n_0 ),
        .Q(\SR_reg[42] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][0]_i_1_n_0 ),
        .Q(\SR_reg[43] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][1]_i_1_n_0 ),
        .Q(\SR_reg[43] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][2]_i_1_n_0 ),
        .Q(\SR_reg[43] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][3]_i_1_n_0 ),
        .Q(\SR_reg[43] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][4]_i_1_n_0 ),
        .Q(\SR_reg[43] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][5]_i_1_n_0 ),
        .Q(\SR_reg[43] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][6]_i_1_n_0 ),
        .Q(\SR_reg[43] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[43][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[43][7]_i_1_n_0 ),
        .Q(\SR_reg[43] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][0]_i_1_n_0 ),
        .Q(\SR_reg[44] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][1]_i_1_n_0 ),
        .Q(\SR_reg[44] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][2]_i_1_n_0 ),
        .Q(\SR_reg[44] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][3]_i_1_n_0 ),
        .Q(\SR_reg[44] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][4]_i_1_n_0 ),
        .Q(\SR_reg[44] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][5]_i_1_n_0 ),
        .Q(\SR_reg[44] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][6]_i_1_n_0 ),
        .Q(\SR_reg[44] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[44][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[44][7]_i_1_n_0 ),
        .Q(\SR_reg[44] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][0]_i_1_n_0 ),
        .Q(\SR_reg[45] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][1]_i_1_n_0 ),
        .Q(\SR_reg[45] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][2]_i_1_n_0 ),
        .Q(\SR_reg[45] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][3]_i_1_n_0 ),
        .Q(\SR_reg[45] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][4]_i_1_n_0 ),
        .Q(\SR_reg[45] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][5]_i_1_n_0 ),
        .Q(\SR_reg[45] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][6]_i_1_n_0 ),
        .Q(\SR_reg[45] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[45][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[45][7]_i_1_n_0 ),
        .Q(\SR_reg[45] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][0]_i_1_n_0 ),
        .Q(\SR_reg[46] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][1]_i_1_n_0 ),
        .Q(\SR_reg[46] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][2]_i_1_n_0 ),
        .Q(\SR_reg[46] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][3]_i_1_n_0 ),
        .Q(\SR_reg[46] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][4]_i_1_n_0 ),
        .Q(\SR_reg[46] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][5]_i_1_n_0 ),
        .Q(\SR_reg[46] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][6]_i_1_n_0 ),
        .Q(\SR_reg[46] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[46][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[46][7]_i_1_n_0 ),
        .Q(\SR_reg[46] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][0]_i_1_n_0 ),
        .Q(\SR_reg[47] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][1]_i_1_n_0 ),
        .Q(\SR_reg[47] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][2]_i_1_n_0 ),
        .Q(\SR_reg[47] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][3]_i_1_n_0 ),
        .Q(\SR_reg[47] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][4]_i_1_n_0 ),
        .Q(\SR_reg[47] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][5]_i_1_n_0 ),
        .Q(\SR_reg[47] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][6]_i_1_n_0 ),
        .Q(\SR_reg[47] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[47][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[47][7]_i_1_n_0 ),
        .Q(\SR_reg[47] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][0]_i_1_n_0 ),
        .Q(\SR_reg[48] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][1]_i_1_n_0 ),
        .Q(\SR_reg[48] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][2]_i_1_n_0 ),
        .Q(\SR_reg[48] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][3]_i_1_n_0 ),
        .Q(\SR_reg[48] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][4]_i_1_n_0 ),
        .Q(\SR_reg[48] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][5]_i_1_n_0 ),
        .Q(\SR_reg[48] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][6]_i_1_n_0 ),
        .Q(\SR_reg[48] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[48][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[48][7]_i_1_n_0 ),
        .Q(\SR_reg[48] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][0]_i_1_n_0 ),
        .Q(\SR_reg[49] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][1]_i_1_n_0 ),
        .Q(\SR_reg[49] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][2]_i_1_n_0 ),
        .Q(\SR_reg[49] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][3]_i_1_n_0 ),
        .Q(\SR_reg[49] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][4]_i_1_n_0 ),
        .Q(\SR_reg[49] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][5]_i_1_n_0 ),
        .Q(\SR_reg[49] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][6]_i_1_n_0 ),
        .Q(\SR_reg[49] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[49][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[49][7]_i_1_n_0 ),
        .Q(\SR_reg[49] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][0]_i_1_n_0 ),
        .Q(\SR_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][1]_i_1_n_0 ),
        .Q(\SR_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][2]_i_1_n_0 ),
        .Q(\SR_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][3]_i_1_n_0 ),
        .Q(\SR_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][4]_i_1_n_0 ),
        .Q(\SR_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][5]_i_1_n_0 ),
        .Q(\SR_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][6]_i_1_n_0 ),
        .Q(\SR_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[4][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[4][7]_i_1_n_0 ),
        .Q(\SR_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][0]_i_1_n_0 ),
        .Q(\SR_reg[50] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][1]_i_1_n_0 ),
        .Q(\SR_reg[50] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][2]_i_1_n_0 ),
        .Q(\SR_reg[50] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][3]_i_1_n_0 ),
        .Q(\SR_reg[50] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][4]_i_1_n_0 ),
        .Q(\SR_reg[50] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][5]_i_1_n_0 ),
        .Q(\SR_reg[50] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][6]_i_1_n_0 ),
        .Q(\SR_reg[50] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[50][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[50][7]_i_1_n_0 ),
        .Q(\SR_reg[50] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][0]_i_1_n_0 ),
        .Q(\SR_reg[51] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][1]_i_1_n_0 ),
        .Q(\SR_reg[51] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][2]_i_1_n_0 ),
        .Q(\SR_reg[51] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][3]_i_1_n_0 ),
        .Q(\SR_reg[51] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][4]_i_1_n_0 ),
        .Q(\SR_reg[51] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][5]_i_1_n_0 ),
        .Q(\SR_reg[51] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][6]_i_1_n_0 ),
        .Q(\SR_reg[51] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[51][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[51][7]_i_1_n_0 ),
        .Q(\SR_reg[51] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][0]_i_1_n_0 ),
        .Q(\SR_reg[52] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][1]_i_1_n_0 ),
        .Q(\SR_reg[52] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][2]_i_1_n_0 ),
        .Q(\SR_reg[52] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][3]_i_1_n_0 ),
        .Q(\SR_reg[52] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][4]_i_1_n_0 ),
        .Q(\SR_reg[52] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][5]_i_1_n_0 ),
        .Q(\SR_reg[52] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][6]_i_1_n_0 ),
        .Q(\SR_reg[52] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[52][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[52][7]_i_1_n_0 ),
        .Q(\SR_reg[52] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][0]_i_1_n_0 ),
        .Q(\SR_reg[53] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][1]_i_1_n_0 ),
        .Q(\SR_reg[53] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][2]_i_1_n_0 ),
        .Q(\SR_reg[53] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][3]_i_1_n_0 ),
        .Q(\SR_reg[53] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][4]_i_1_n_0 ),
        .Q(\SR_reg[53] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][5]_i_1_n_0 ),
        .Q(\SR_reg[53] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][6]_i_1_n_0 ),
        .Q(\SR_reg[53] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[53][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[53][7]_i_1_n_0 ),
        .Q(\SR_reg[53] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][0]_i_1_n_0 ),
        .Q(\SR_reg[54] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][1]_i_1_n_0 ),
        .Q(\SR_reg[54] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][2]_i_1_n_0 ),
        .Q(\SR_reg[54] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][3]_i_1_n_0 ),
        .Q(\SR_reg[54] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][4]_i_1_n_0 ),
        .Q(\SR_reg[54] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][5]_i_1_n_0 ),
        .Q(\SR_reg[54] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][6]_i_1_n_0 ),
        .Q(\SR_reg[54] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[54][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[54][7]_i_1_n_0 ),
        .Q(\SR_reg[54] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][0]_i_1_n_0 ),
        .Q(\SR_reg[55] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][1]_i_1_n_0 ),
        .Q(\SR_reg[55] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][2]_i_1_n_0 ),
        .Q(\SR_reg[55] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][3]_i_1_n_0 ),
        .Q(\SR_reg[55] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][4]_i_1_n_0 ),
        .Q(\SR_reg[55] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][5]_i_1_n_0 ),
        .Q(\SR_reg[55] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][6]_i_1_n_0 ),
        .Q(\SR_reg[55] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[55][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[55][7]_i_1_n_0 ),
        .Q(\SR_reg[55] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][0]_i_1_n_0 ),
        .Q(\SR_reg[56] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][1]_i_1_n_0 ),
        .Q(\SR_reg[56] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][2]_i_1_n_0 ),
        .Q(\SR_reg[56] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][3]_i_1_n_0 ),
        .Q(\SR_reg[56] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][4]_i_1_n_0 ),
        .Q(\SR_reg[56] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][5]_i_1_n_0 ),
        .Q(\SR_reg[56] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][6]_i_1_n_0 ),
        .Q(\SR_reg[56] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[56][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[56][7]_i_1_n_0 ),
        .Q(\SR_reg[56] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][0]_i_1_n_0 ),
        .Q(\SR_reg[57] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][1]_i_1_n_0 ),
        .Q(\SR_reg[57] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][2]_i_1_n_0 ),
        .Q(\SR_reg[57] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][3]_i_1_n_0 ),
        .Q(\SR_reg[57] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][4]_i_1_n_0 ),
        .Q(\SR_reg[57] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][5]_i_1_n_0 ),
        .Q(\SR_reg[57] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][6]_i_1_n_0 ),
        .Q(\SR_reg[57] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[57][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[57][7]_i_1_n_0 ),
        .Q(\SR_reg[57] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][0]_i_1_n_0 ),
        .Q(\SR_reg[58] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][1]_i_1_n_0 ),
        .Q(\SR_reg[58] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][2]_i_1_n_0 ),
        .Q(\SR_reg[58] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][3]_i_1_n_0 ),
        .Q(\SR_reg[58] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][4]_i_1_n_0 ),
        .Q(\SR_reg[58] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][5]_i_1_n_0 ),
        .Q(\SR_reg[58] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][6]_i_1_n_0 ),
        .Q(\SR_reg[58] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[58][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[58][7]_i_1_n_0 ),
        .Q(\SR_reg[58] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][0]_i_1_n_0 ),
        .Q(\SR_reg[59] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][1]_i_1_n_0 ),
        .Q(\SR_reg[59] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][2]_i_1_n_0 ),
        .Q(\SR_reg[59] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][3]_i_1_n_0 ),
        .Q(\SR_reg[59] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][4]_i_1_n_0 ),
        .Q(\SR_reg[59] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][5]_i_1_n_0 ),
        .Q(\SR_reg[59] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][6]_i_1_n_0 ),
        .Q(\SR_reg[59] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[59][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[59][7]_i_1_n_0 ),
        .Q(\SR_reg[59] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][0]_i_1_n_0 ),
        .Q(\SR_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][1]_i_1_n_0 ),
        .Q(\SR_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][2]_i_1_n_0 ),
        .Q(\SR_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][3]_i_1_n_0 ),
        .Q(\SR_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][4]_i_1_n_0 ),
        .Q(\SR_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][5]_i_1_n_0 ),
        .Q(\SR_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][6]_i_1_n_0 ),
        .Q(\SR_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[5][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[5][7]_i_1_n_0 ),
        .Q(\SR_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][0]_i_1_n_0 ),
        .Q(\SR_reg[60] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][1]_i_1_n_0 ),
        .Q(\SR_reg[60] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][2]_i_1_n_0 ),
        .Q(\SR_reg[60] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][3]_i_1_n_0 ),
        .Q(\SR_reg[60] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][4]_i_1_n_0 ),
        .Q(\SR_reg[60] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][5]_i_1_n_0 ),
        .Q(\SR_reg[60] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][6]_i_1_n_0 ),
        .Q(\SR_reg[60] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[60][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[60][7]_i_1_n_0 ),
        .Q(\SR_reg[60] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][0]_i_1_n_0 ),
        .Q(\SR_reg[61] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][1]_i_1_n_0 ),
        .Q(\SR_reg[61] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][2]_i_1_n_0 ),
        .Q(\SR_reg[61] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][3]_i_1_n_0 ),
        .Q(\SR_reg[61] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][4]_i_1_n_0 ),
        .Q(\SR_reg[61] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][5]_i_1_n_0 ),
        .Q(\SR_reg[61] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][6]_i_1_n_0 ),
        .Q(\SR_reg[61] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[61][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[61][7]_i_1_n_0 ),
        .Q(\SR_reg[61] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][0]_i_1_n_0 ),
        .Q(\SR_reg[62] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][1]_i_1_n_0 ),
        .Q(\SR_reg[62] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][2]_i_1_n_0 ),
        .Q(\SR_reg[62] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][3]_i_1_n_0 ),
        .Q(\SR_reg[62] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][4]_i_1_n_0 ),
        .Q(\SR_reg[62] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][5]_i_1_n_0 ),
        .Q(\SR_reg[62] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][6]_i_1_n_0 ),
        .Q(\SR_reg[62] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[62][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[62][7]_i_1_n_0 ),
        .Q(\SR_reg[62] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][0]_i_1_n_0 ),
        .Q(\SR_reg[63] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][1]_i_1_n_0 ),
        .Q(\SR_reg[63] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][2]_i_1_n_0 ),
        .Q(\SR_reg[63] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][3]_i_1_n_0 ),
        .Q(\SR_reg[63] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][4]_i_1_n_0 ),
        .Q(\SR_reg[63] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][5]_i_1_n_0 ),
        .Q(\SR_reg[63] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][6]_i_1_n_0 ),
        .Q(\SR_reg[63] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[63][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[63][7]_i_1_n_0 ),
        .Q(\SR_reg[63] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][0]_i_1_n_0 ),
        .Q(\SR_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][1]_i_1_n_0 ),
        .Q(\SR_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][2]_i_1_n_0 ),
        .Q(\SR_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][3]_i_1_n_0 ),
        .Q(\SR_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][4]_i_1_n_0 ),
        .Q(\SR_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][5]_i_1_n_0 ),
        .Q(\SR_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][6]_i_1_n_0 ),
        .Q(\SR_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[6][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[6][7]_i_1_n_0 ),
        .Q(\SR_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][0]_i_1_n_0 ),
        .Q(\SR_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][1]_i_1_n_0 ),
        .Q(\SR_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][2]_i_1_n_0 ),
        .Q(\SR_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][3]_i_1_n_0 ),
        .Q(\SR_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][4]_i_1_n_0 ),
        .Q(\SR_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][5]_i_1_n_0 ),
        .Q(\SR_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][6]_i_1_n_0 ),
        .Q(\SR_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[7][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[7][7]_i_1_n_0 ),
        .Q(\SR_reg[7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][0]_i_1_n_0 ),
        .Q(\SR_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][1]_i_1_n_0 ),
        .Q(\SR_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][2]_i_1_n_0 ),
        .Q(\SR_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][3]_i_1_n_0 ),
        .Q(\SR_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][4]_i_1_n_0 ),
        .Q(\SR_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][5]_i_1_n_0 ),
        .Q(\SR_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][6]_i_1_n_0 ),
        .Q(\SR_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[8][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[8][7]_i_1_n_0 ),
        .Q(\SR_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][0] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][0]_i_1_n_0 ),
        .Q(\SR_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][1] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][1]_i_1_n_0 ),
        .Q(\SR_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][2] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][2]_i_1_n_0 ),
        .Q(\SR_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][3] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][3]_i_1_n_0 ),
        .Q(\SR_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][4] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][4]_i_1_n_0 ),
        .Q(\SR_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][5] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][5]_i_1_n_0 ),
        .Q(\SR_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][6] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][6]_i_1_n_0 ),
        .Q(\SR_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SR_reg[9][7] 
       (.C(CLK),
        .CE(\SR[1]_1 ),
        .CLR(sel0[34]),
        .D(\SR[9][7]_i_1_n_0 ),
        .Q(\SR_reg[9] [7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry
       (.CI(1'b0),
        .CO({index0_carry_n_0,index0_carry_n_1,index0_carry_n_2,index0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,index[1],1'b0}),
        .O({index0_carry_n_4,index0_carry_n_5,index0_carry_n_6,index0_carry_n_7}),
        .S({index[3:2],index0_carry_i_1_n_0,index[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__0
       (.CI(index0_carry_n_0),
        .CO({index0_carry__0_n_0,index0_carry__0_n_1,index0_carry__0_n_2,index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__0_n_4,index0_carry__0_n_5,index0_carry__0_n_6,index0_carry__0_n_7}),
        .S(index[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__1
       (.CI(index0_carry__0_n_0),
        .CO({index0_carry__1_n_0,index0_carry__1_n_1,index0_carry__1_n_2,index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__1_n_4,index0_carry__1_n_5,index0_carry__1_n_6,index0_carry__1_n_7}),
        .S(index[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__2
       (.CI(index0_carry__1_n_0),
        .CO({index0_carry__2_n_0,index0_carry__2_n_1,index0_carry__2_n_2,index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__2_n_4,index0_carry__2_n_5,index0_carry__2_n_6,index0_carry__2_n_7}),
        .S(index[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__3
       (.CI(index0_carry__2_n_0),
        .CO({index0_carry__3_n_0,index0_carry__3_n_1,index0_carry__3_n_2,index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__3_n_4,index0_carry__3_n_5,index0_carry__3_n_6,index0_carry__3_n_7}),
        .S(index[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__4
       (.CI(index0_carry__3_n_0),
        .CO({index0_carry__4_n_0,index0_carry__4_n_1,index0_carry__4_n_2,index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__4_n_4,index0_carry__4_n_5,index0_carry__4_n_6,index0_carry__4_n_7}),
        .S(index[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__5
       (.CI(index0_carry__4_n_0),
        .CO({index0_carry__5_n_0,index0_carry__5_n_1,index0_carry__5_n_2,index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__5_n_4,index0_carry__5_n_5,index0_carry__5_n_6,index0_carry__5_n_7}),
        .S(index[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__6
       (.CI(index0_carry__5_n_0),
        .CO({NLW_index0_carry__6_CO_UNCONNECTED[3],index0_carry__6_n_1,index0_carry__6_n_2,index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__6_n_4,index0_carry__6_n_5,index0_carry__6_n_6,index0_carry__6_n_7}),
        .S(index[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry_i_1
       (.I0(index[1]),
        .O(index0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \index[31]_i_1 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(RESETN),
        .I3(\index[31]_i_3_n_0 ),
        .O(\index[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \index[31]_i_2 
       (.I0(COMPLETE_PACKET_reg_rep_n_0),
        .I1(S_AXIS_TVALID),
        .I2(RESETN),
        .O(index0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index[31]_i_3 
       (.I0(\SR[0][7]_i_6_n_0 ),
        .I1(\SR[0][7]_i_5_n_0 ),
        .I2(\SR[0][7]_i_4_n_0 ),
        .I3(\SR[0][7]_i_3_n_0 ),
        .O(\index[31]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry_n_7),
        .Q(index[0]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[10] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__1_n_5),
        .Q(index[10]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[11] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__1_n_4),
        .Q(index[11]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[12] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__2_n_7),
        .Q(index[12]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[13] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__2_n_6),
        .Q(index[13]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[14] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__2_n_5),
        .Q(index[14]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[15] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__2_n_4),
        .Q(index[15]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[16] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__3_n_7),
        .Q(index[16]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[17] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__3_n_6),
        .Q(index[17]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[18] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__3_n_5),
        .Q(index[18]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[19] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__3_n_4),
        .Q(index[19]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry_n_6),
        .Q(index[1]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[20] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__4_n_7),
        .Q(index[20]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[21] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__4_n_6),
        .Q(index[21]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[22] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__4_n_5),
        .Q(index[22]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[23] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__4_n_4),
        .Q(index[23]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[24] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__5_n_7),
        .Q(index[24]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[25] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__5_n_6),
        .Q(index[25]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[26] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__5_n_5),
        .Q(index[26]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[27] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__5_n_4),
        .Q(index[27]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[28] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__6_n_7),
        .Q(index[28]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[29] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__6_n_6),
        .Q(index[29]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry_n_5),
        .Q(index[2]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[30] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__6_n_5),
        .Q(index[30]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[31] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__6_n_4),
        .Q(index[31]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry_n_4),
        .Q(index[3]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__0_n_7),
        .Q(index[4]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__0_n_6),
        .Q(index[5]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__0_n_5),
        .Q(index[6]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__0_n_4),
        .Q(index[7]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__1_n_7),
        .Q(index[8]),
        .R(\index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(CLK),
        .CE(index0),
        .D(index0_carry__1_n_6),
        .Q(index[9]),
        .R(\index[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \writeout_index[0]_i_1 
       (.I0(RESETN),
        .I1(COMPLETE_PACKET_reg_rep_n_0),
        .I2(M_AXIS_TREADY),
        .I3(sel0[0]),
        .O(\writeout_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \writeout_index[31]_i_1 
       (.I0(RESETN),
        .I1(COMPLETE_PACKET_reg_rep__0_n_0),
        .I2(M_AXIS_TREADY),
        .I3(sel0[0]),
        .I4(\M_AXIS_TDATA[7]_i_2_n_0 ),
        .I5(sel0[6]),
        .O(\writeout_index[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \writeout_index[31]_i_2 
       (.I0(M_AXIS_TREADY),
        .I1(COMPLETE_PACKET_reg_rep__0_n_0),
        .I2(RESETN),
        .O(writeout_index0));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\writeout_index[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[10] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[10]),
        .Q(sel0[10]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[11] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[11]),
        .Q(sel0[11]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[12] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[12]),
        .Q(sel0[12]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[12]_i_1 
       (.CI(\writeout_index_reg[8]_i_1_n_0 ),
        .CO({\writeout_index_reg[12]_i_1_n_0 ,\writeout_index_reg[12]_i_1_n_1 ,\writeout_index_reg[12]_i_1_n_2 ,\writeout_index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[13] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[13]),
        .Q(sel0[13]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[14] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[14]),
        .Q(sel0[14]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[15] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[15]),
        .Q(sel0[15]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[16] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[16]),
        .Q(sel0[16]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[16]_i_1 
       (.CI(\writeout_index_reg[12]_i_1_n_0 ),
        .CO({\writeout_index_reg[16]_i_1_n_0 ,\writeout_index_reg[16]_i_1_n_1 ,\writeout_index_reg[16]_i_1_n_2 ,\writeout_index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[17] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[17]),
        .Q(sel0[17]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[18] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[18]),
        .Q(sel0[18]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[19] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[19]),
        .Q(sel0[19]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[1] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[20] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[20]),
        .Q(sel0[20]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[20]_i_1 
       (.CI(\writeout_index_reg[16]_i_1_n_0 ),
        .CO({\writeout_index_reg[20]_i_1_n_0 ,\writeout_index_reg[20]_i_1_n_1 ,\writeout_index_reg[20]_i_1_n_2 ,\writeout_index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[21] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[21]),
        .Q(sel0[21]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[22] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[22]),
        .Q(sel0[22]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[23] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[23]),
        .Q(sel0[23]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[24] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[24]),
        .Q(sel0[24]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[24]_i_1 
       (.CI(\writeout_index_reg[20]_i_1_n_0 ),
        .CO({\writeout_index_reg[24]_i_1_n_0 ,\writeout_index_reg[24]_i_1_n_1 ,\writeout_index_reg[24]_i_1_n_2 ,\writeout_index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[25] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[25]),
        .Q(sel0[25]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[26] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[26]),
        .Q(sel0[26]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[27] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[27]),
        .Q(sel0[27]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[28] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[28]),
        .Q(sel0[28]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[28]_i_1 
       (.CI(\writeout_index_reg[24]_i_1_n_0 ),
        .CO({\writeout_index_reg[28]_i_1_n_0 ,\writeout_index_reg[28]_i_1_n_1 ,\writeout_index_reg[28]_i_1_n_2 ,\writeout_index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[29] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[29]),
        .Q(sel0[29]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[2] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[30] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[30]),
        .Q(sel0[30]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[31] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[31]),
        .Q(sel0[31]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[31]_i_3 
       (.CI(\writeout_index_reg[28]_i_1_n_0 ),
        .CO({\NLW_writeout_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\writeout_index_reg[31]_i_3_n_2 ,\writeout_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_writeout_index_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[3] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[4] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\writeout_index_reg[4]_i_1_n_0 ,\writeout_index_reg[4]_i_1_n_1 ,\writeout_index_reg[4]_i_1_n_2 ,\writeout_index_reg[4]_i_1_n_3 }),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[5] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[6] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[7] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\writeout_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[8] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\writeout_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \writeout_index_reg[8]_i_1 
       (.CI(\writeout_index_reg[4]_i_1_n_0 ),
        .CO({\writeout_index_reg[8]_i_1_n_0 ,\writeout_index_reg[8]_i_1_n_1 ,\writeout_index_reg[8]_i_1_n_2 ,\writeout_index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \writeout_index_reg[9] 
       (.C(CLK),
        .CE(writeout_index0),
        .D(data0[9]),
        .Q(sel0[9]),
        .R(\writeout_index[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

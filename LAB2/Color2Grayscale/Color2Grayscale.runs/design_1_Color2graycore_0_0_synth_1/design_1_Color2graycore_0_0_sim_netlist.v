// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  2 17:44:10 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Color2graycore_0_0_sim_netlist.v
// Design      : design_1_Color2graycore_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Color2graycore
   (M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_ARESETN,
    M_AXIS_TREADY,
    valid,
    M_AXIS_ACLK,
    ch1,
    ch0,
    ch2);
  output [7:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_ARESETN;
  input M_AXIS_TREADY;
  input valid;
  input M_AXIS_ACLK;
  input [7:0]ch1;
  input [7:0]ch0;
  input [7:0]ch2;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TDATA00;
  wire [7:0]M_AXIS_TDATA00_in;
  wire M_AXIS_TDATA0__0_carry__0_i_1_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_2_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_3_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_4_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_5_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_6_n_0;
  wire M_AXIS_TDATA0__0_carry__0_i_7_n_0;
  wire M_AXIS_TDATA0__0_carry__0_n_1;
  wire M_AXIS_TDATA0__0_carry__0_n_2;
  wire M_AXIS_TDATA0__0_carry__0_n_3;
  wire M_AXIS_TDATA0__0_carry__0_n_4;
  wire M_AXIS_TDATA0__0_carry__0_n_5;
  wire M_AXIS_TDATA0__0_carry__0_n_6;
  wire M_AXIS_TDATA0__0_carry__0_n_7;
  wire M_AXIS_TDATA0__0_carry_i_1_n_0;
  wire M_AXIS_TDATA0__0_carry_i_2_n_0;
  wire M_AXIS_TDATA0__0_carry_i_3_n_0;
  wire M_AXIS_TDATA0__0_carry_i_4_n_0;
  wire M_AXIS_TDATA0__0_carry_i_5_n_0;
  wire M_AXIS_TDATA0__0_carry_i_6_n_0;
  wire M_AXIS_TDATA0__0_carry_i_7_n_0;
  wire M_AXIS_TDATA0__0_carry_n_0;
  wire M_AXIS_TDATA0__0_carry_n_1;
  wire M_AXIS_TDATA0__0_carry_n_2;
  wire M_AXIS_TDATA0__0_carry_n_3;
  wire M_AXIS_TDATA0__0_carry_n_4;
  wire M_AXIS_TDATA0__0_carry_n_5;
  wire M_AXIS_TDATA0__0_carry_n_6;
  wire M_AXIS_TDATA0__0_carry_n_7;
  wire M_AXIS_TDATA0__23_carry__0_i_10_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_11_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_12_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_13_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_14_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_15_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_1_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_2_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_3_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_4_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_5_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_6_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_7_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_8_n_0;
  wire M_AXIS_TDATA0__23_carry__0_i_9_n_0;
  wire M_AXIS_TDATA0__23_carry__0_n_1;
  wire M_AXIS_TDATA0__23_carry__0_n_2;
  wire M_AXIS_TDATA0__23_carry__0_n_3;
  wire M_AXIS_TDATA0__23_carry_i_10_n_0;
  wire M_AXIS_TDATA0__23_carry_i_11_n_0;
  wire M_AXIS_TDATA0__23_carry_i_12_n_0;
  wire M_AXIS_TDATA0__23_carry_i_13_n_0;
  wire M_AXIS_TDATA0__23_carry_i_14_n_0;
  wire M_AXIS_TDATA0__23_carry_i_1_n_0;
  wire M_AXIS_TDATA0__23_carry_i_2_n_0;
  wire M_AXIS_TDATA0__23_carry_i_3_n_0;
  wire M_AXIS_TDATA0__23_carry_i_4_n_0;
  wire M_AXIS_TDATA0__23_carry_i_5_n_0;
  wire M_AXIS_TDATA0__23_carry_i_6_n_0;
  wire M_AXIS_TDATA0__23_carry_i_7_n_0;
  wire M_AXIS_TDATA0__23_carry_i_8_n_0;
  wire M_AXIS_TDATA0__23_carry_i_9_n_0;
  wire M_AXIS_TDATA0__23_carry_n_0;
  wire M_AXIS_TDATA0__23_carry_n_1;
  wire M_AXIS_TDATA0__23_carry_n_2;
  wire M_AXIS_TDATA0__23_carry_n_3;
  wire [7:0]M_AXIS_TDATA8;
  wire M_AXIS_TDATA9__0_carry__0_i_1_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_2_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_3_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_4_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_5_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_6_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_7_n_0;
  wire M_AXIS_TDATA9__0_carry__0_i_8_n_0;
  wire M_AXIS_TDATA9__0_carry__0_n_0;
  wire M_AXIS_TDATA9__0_carry__0_n_1;
  wire M_AXIS_TDATA9__0_carry__0_n_2;
  wire M_AXIS_TDATA9__0_carry__0_n_3;
  wire M_AXIS_TDATA9__0_carry__1_i_1_n_0;
  wire M_AXIS_TDATA9__0_carry_i_1_n_0;
  wire M_AXIS_TDATA9__0_carry_i_2_n_0;
  wire M_AXIS_TDATA9__0_carry_i_3_n_0;
  wire M_AXIS_TDATA9__0_carry_i_4_n_0;
  wire M_AXIS_TDATA9__0_carry_i_5_n_0;
  wire M_AXIS_TDATA9__0_carry_i_6_n_0;
  wire M_AXIS_TDATA9__0_carry_i_7_n_0;
  wire M_AXIS_TDATA9__0_carry_n_0;
  wire M_AXIS_TDATA9__0_carry_n_1;
  wire M_AXIS_TDATA9__0_carry_n_2;
  wire M_AXIS_TDATA9__0_carry_n_3;
  wire \M_AXIS_TDATA[7]_i_1_n_0 ;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire M_AXIS_TVALID_sig_i_1_n_0;
  wire M_AXIS_TVALID_sig_i_2_n_0;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire valid;
  wire [3:3]NLW_M_AXIS_TDATA0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXIS_TDATA0__23_carry__0_CO_UNCONNECTED;
  wire [0:0]NLW_M_AXIS_TDATA9__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_M_AXIS_TDATA9__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_M_AXIS_TDATA9__0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXIS_TDATA0__0_carry
       (.CI(1'b0),
        .CO({M_AXIS_TDATA0__0_carry_n_0,M_AXIS_TDATA0__0_carry_n_1,M_AXIS_TDATA0__0_carry_n_2,M_AXIS_TDATA0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({M_AXIS_TDATA0__0_carry_i_1_n_0,M_AXIS_TDATA0__0_carry_i_2_n_0,M_AXIS_TDATA0__0_carry_i_3_n_0,1'b0}),
        .O({M_AXIS_TDATA0__0_carry_n_4,M_AXIS_TDATA0__0_carry_n_5,M_AXIS_TDATA0__0_carry_n_6,M_AXIS_TDATA0__0_carry_n_7}),
        .S({M_AXIS_TDATA0__0_carry_i_4_n_0,M_AXIS_TDATA0__0_carry_i_5_n_0,M_AXIS_TDATA0__0_carry_i_6_n_0,M_AXIS_TDATA0__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXIS_TDATA0__0_carry__0
       (.CI(M_AXIS_TDATA0__0_carry_n_0),
        .CO({NLW_M_AXIS_TDATA0__0_carry__0_CO_UNCONNECTED[3],M_AXIS_TDATA0__0_carry__0_n_1,M_AXIS_TDATA0__0_carry__0_n_2,M_AXIS_TDATA0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,M_AXIS_TDATA0__0_carry__0_i_1_n_0,M_AXIS_TDATA0__0_carry__0_i_2_n_0,M_AXIS_TDATA0__0_carry__0_i_3_n_0}),
        .O({M_AXIS_TDATA0__0_carry__0_n_4,M_AXIS_TDATA0__0_carry__0_n_5,M_AXIS_TDATA0__0_carry__0_n_6,M_AXIS_TDATA0__0_carry__0_n_7}),
        .S({M_AXIS_TDATA0__0_carry__0_i_4_n_0,M_AXIS_TDATA0__0_carry__0_i_5_n_0,M_AXIS_TDATA0__0_carry__0_i_6_n_0,M_AXIS_TDATA0__0_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXIS_TDATA0__0_carry__0_i_1
       (.I0(M_AXIS_TDATA00),
        .I1(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    M_AXIS_TDATA0__0_carry__0_i_2
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[6]),
        .I2(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    M_AXIS_TDATA0__0_carry__0_i_3
       (.I0(M_AXIS_TDATA8[6]),
        .I1(M_AXIS_TDATA8[5]),
        .I2(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    M_AXIS_TDATA0__0_carry__0_i_4
       (.I0(M_AXIS_TDATA00),
        .I1(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h71)) 
    M_AXIS_TDATA0__0_carry__0_i_5
       (.I0(M_AXIS_TDATA8[6]),
        .I1(M_AXIS_TDATA8[7]),
        .I2(M_AXIS_TDATA00),
        .O(M_AXIS_TDATA0__0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9C39)) 
    M_AXIS_TDATA0__0_carry__0_i_6
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA00),
        .I2(M_AXIS_TDATA8[7]),
        .I3(M_AXIS_TDATA8[6]),
        .O(M_AXIS_TDATA0__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    M_AXIS_TDATA0__0_carry__0_i_7
       (.I0(M_AXIS_TDATA8[4]),
        .I1(M_AXIS_TDATA8[5]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    M_AXIS_TDATA0__0_carry_i_1
       (.I0(M_AXIS_TDATA8[4]),
        .I1(M_AXIS_TDATA8[6]),
        .I2(M_AXIS_TDATA8[5]),
        .O(M_AXIS_TDATA0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    M_AXIS_TDATA0__0_carry_i_2
       (.I0(M_AXIS_TDATA8[2]),
        .I1(M_AXIS_TDATA8[3]),
        .I2(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    M_AXIS_TDATA0__0_carry_i_3
       (.I0(M_AXIS_TDATA8[1]),
        .I1(M_AXIS_TDATA8[2]),
        .I2(M_AXIS_TDATA8[3]),
        .O(M_AXIS_TDATA0__0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB42D)) 
    M_AXIS_TDATA0__0_carry_i_4
       (.I0(M_AXIS_TDATA8[3]),
        .I1(M_AXIS_TDATA8[5]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA0__0_carry_i_5
       (.I0(M_AXIS_TDATA0__0_carry_i_2_n_0),
        .I1(M_AXIS_TDATA8[3]),
        .I2(M_AXIS_TDATA8[4]),
        .I3(M_AXIS_TDATA8[5]),
        .O(M_AXIS_TDATA0__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA0__0_carry_i_6
       (.I0(M_AXIS_TDATA8[2]),
        .I1(M_AXIS_TDATA8[3]),
        .I2(M_AXIS_TDATA8[4]),
        .I3(M_AXIS_TDATA0__0_carry_i_3_n_0),
        .O(M_AXIS_TDATA0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    M_AXIS_TDATA0__0_carry_i_7
       (.I0(M_AXIS_TDATA8[1]),
        .I1(M_AXIS_TDATA8[2]),
        .I2(M_AXIS_TDATA8[3]),
        .O(M_AXIS_TDATA0__0_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXIS_TDATA0__23_carry
       (.CI(1'b0),
        .CO({M_AXIS_TDATA0__23_carry_n_0,M_AXIS_TDATA0__23_carry_n_1,M_AXIS_TDATA0__23_carry_n_2,M_AXIS_TDATA0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({M_AXIS_TDATA0__23_carry_i_1_n_0,M_AXIS_TDATA0__23_carry_i_2_n_0,M_AXIS_TDATA0__23_carry_i_3_n_0,1'b0}),
        .O(M_AXIS_TDATA00_in[3:0]),
        .S({M_AXIS_TDATA0__23_carry_i_4_n_0,M_AXIS_TDATA0__23_carry_i_5_n_0,M_AXIS_TDATA0__23_carry_i_6_n_0,M_AXIS_TDATA0__23_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXIS_TDATA0__23_carry__0
       (.CI(M_AXIS_TDATA0__23_carry_n_0),
        .CO({NLW_M_AXIS_TDATA0__23_carry__0_CO_UNCONNECTED[3],M_AXIS_TDATA0__23_carry__0_n_1,M_AXIS_TDATA0__23_carry__0_n_2,M_AXIS_TDATA0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,M_AXIS_TDATA0__23_carry__0_i_1_n_0,M_AXIS_TDATA0__23_carry__0_i_2_n_0,M_AXIS_TDATA0__23_carry__0_i_3_n_0}),
        .O(M_AXIS_TDATA00_in[7:4]),
        .S({M_AXIS_TDATA0__23_carry__0_i_4_n_0,M_AXIS_TDATA0__23_carry__0_i_5_n_0,M_AXIS_TDATA0__23_carry__0_i_6_n_0,M_AXIS_TDATA0__23_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h4114)) 
    M_AXIS_TDATA0__23_carry__0_i_1
       (.I0(M_AXIS_TDATA0__23_carry__0_i_8_n_0),
        .I1(M_AXIS_TDATA0__0_carry__0_n_6),
        .I2(M_AXIS_TDATA0__23_carry__0_i_9_n_0),
        .I3(M_AXIS_TDATA0__23_carry__0_i_10_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    M_AXIS_TDATA0__23_carry__0_i_10
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[3]),
        .I2(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I3(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__23_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99966669)) 
    M_AXIS_TDATA0__23_carry__0_i_11
       (.I0(M_AXIS_TDATA0__23_carry__0_i_14_n_0),
        .I1(M_AXIS_TDATA0__0_carry__0_n_7),
        .I2(M_AXIS_TDATA8[3]),
        .I3(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I4(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__23_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    M_AXIS_TDATA0__23_carry__0_i_12
       (.I0(M_AXIS_TDATA8[3]),
        .I1(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I2(M_AXIS_TDATA8[4]),
        .I3(M_AXIS_TDATA8[5]),
        .I4(M_AXIS_TDATA8[6]),
        .I5(M_AXIS_TDATA0__23_carry__0_i_15_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    M_AXIS_TDATA0__23_carry__0_i_13
       (.I0(M_AXIS_TDATA8[6]),
        .I1(M_AXIS_TDATA8[5]),
        .I2(M_AXIS_TDATA8[4]),
        .I3(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I4(M_AXIS_TDATA8[3]),
        .O(M_AXIS_TDATA0__23_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h13FF33FE)) 
    M_AXIS_TDATA0__23_carry__0_i_14
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[7]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA00),
        .I4(M_AXIS_TDATA8[4]),
        .O(M_AXIS_TDATA0__23_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0001)) 
    M_AXIS_TDATA0__23_carry__0_i_15
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[6]),
        .I2(M_AXIS_TDATA00),
        .I3(M_AXIS_TDATA8[4]),
        .I4(M_AXIS_TDATA0__0_carry__0_n_4),
        .I5(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__23_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'h0000E88E)) 
    M_AXIS_TDATA0__23_carry__0_i_2
       (.I0(M_AXIS_TDATA0__23_carry_i_10_n_0),
        .I1(M_AXIS_TDATA0__0_carry_n_4),
        .I2(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I3(M_AXIS_TDATA8[3]),
        .I4(M_AXIS_TDATA0__23_carry__0_i_11_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h41141441)) 
    M_AXIS_TDATA0__23_carry__0_i_3
       (.I0(M_AXIS_TDATA0__23_carry_i_12_n_0),
        .I1(M_AXIS_TDATA8[3]),
        .I2(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I3(M_AXIS_TDATA0__0_carry_n_4),
        .I4(M_AXIS_TDATA0__23_carry_i_10_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h36CCCC93C3933933)) 
    M_AXIS_TDATA0__23_carry__0_i_4
       (.I0(M_AXIS_TDATA0__0_carry__0_n_6),
        .I1(M_AXIS_TDATA0__23_carry__0_i_12_n_0),
        .I2(M_AXIS_TDATA0__23_carry__0_i_10_n_0),
        .I3(M_AXIS_TDATA0__23_carry__0_i_9_n_0),
        .I4(M_AXIS_TDATA0__23_carry__0_i_13_n_0),
        .I5(M_AXIS_TDATA0__0_carry__0_n_5),
        .O(M_AXIS_TDATA0__23_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hA96A56955695A96A)) 
    M_AXIS_TDATA0__23_carry__0_i_5
       (.I0(M_AXIS_TDATA0__23_carry__0_i_1_n_0),
        .I1(M_AXIS_TDATA0__0_carry__0_n_6),
        .I2(M_AXIS_TDATA0__23_carry__0_i_10_n_0),
        .I3(M_AXIS_TDATA0__23_carry__0_i_9_n_0),
        .I4(M_AXIS_TDATA0__23_carry__0_i_13_n_0),
        .I5(M_AXIS_TDATA0__0_carry__0_n_5),
        .O(M_AXIS_TDATA0__23_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    M_AXIS_TDATA0__23_carry__0_i_6
       (.I0(M_AXIS_TDATA0__23_carry__0_i_8_n_0),
        .I1(M_AXIS_TDATA0__0_carry__0_n_6),
        .I2(M_AXIS_TDATA0__23_carry__0_i_9_n_0),
        .I3(M_AXIS_TDATA0__23_carry__0_i_10_n_0),
        .I4(M_AXIS_TDATA0__23_carry__0_i_2_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6666699669969999)) 
    M_AXIS_TDATA0__23_carry__0_i_7
       (.I0(M_AXIS_TDATA0__23_carry__0_i_3_n_0),
        .I1(M_AXIS_TDATA0__23_carry__0_i_11_n_0),
        .I2(M_AXIS_TDATA8[3]),
        .I3(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I4(M_AXIS_TDATA0__0_carry_n_4),
        .I5(M_AXIS_TDATA0__23_carry_i_10_n_0),
        .O(M_AXIS_TDATA0__23_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5600FF56)) 
    M_AXIS_TDATA0__23_carry__0_i_8
       (.I0(M_AXIS_TDATA8[4]),
        .I1(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I2(M_AXIS_TDATA8[3]),
        .I3(M_AXIS_TDATA0__23_carry__0_i_14_n_0),
        .I4(M_AXIS_TDATA0__0_carry__0_n_7),
        .O(M_AXIS_TDATA0__23_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    M_AXIS_TDATA0__23_carry__0_i_9
       (.I0(M_AXIS_TDATA8[4]),
        .I1(M_AXIS_TDATA00),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[7]),
        .I4(M_AXIS_TDATA8[5]),
        .O(M_AXIS_TDATA0__23_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000959999A9)) 
    M_AXIS_TDATA0__23_carry_i_1
       (.I0(M_AXIS_TDATA8[2]),
        .I1(M_AXIS_TDATA8[1]),
        .I2(M_AXIS_TDATA8[0]),
        .I3(M_AXIS_TDATA8[7]),
        .I4(M_AXIS_TDATA00),
        .I5(M_AXIS_TDATA0__23_carry_i_8_n_0),
        .O(M_AXIS_TDATA0__23_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F7000F1)) 
    M_AXIS_TDATA0__23_carry_i_10
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[4]),
        .I2(M_AXIS_TDATA00),
        .I3(M_AXIS_TDATA8[7]),
        .I4(M_AXIS_TDATA8[6]),
        .O(M_AXIS_TDATA0__23_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEAEEEEFE)) 
    M_AXIS_TDATA0__23_carry_i_11
       (.I0(M_AXIS_TDATA8[2]),
        .I1(M_AXIS_TDATA8[1]),
        .I2(M_AXIS_TDATA8[0]),
        .I3(M_AXIS_TDATA8[7]),
        .I4(M_AXIS_TDATA00),
        .O(M_AXIS_TDATA0__23_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h1404040541515150)) 
    M_AXIS_TDATA0__23_carry_i_12
       (.I0(M_AXIS_TDATA0__0_carry_n_5),
        .I1(M_AXIS_TDATA8[7]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[5]),
        .I4(M_AXIS_TDATA8[4]),
        .I5(M_AXIS_TDATA00),
        .O(M_AXIS_TDATA0__23_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8E71)) 
    M_AXIS_TDATA0__23_carry_i_13
       (.I0(M_AXIS_TDATA8[4]),
        .I1(M_AXIS_TDATA8[5]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__23_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h42BD)) 
    M_AXIS_TDATA0__23_carry_i_14
       (.I0(M_AXIS_TDATA8[0]),
        .I1(M_AXIS_TDATA8[7]),
        .I2(M_AXIS_TDATA00),
        .I3(M_AXIS_TDATA8[1]),
        .O(M_AXIS_TDATA0__23_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h9666969696969996)) 
    M_AXIS_TDATA0__23_carry_i_2
       (.I0(M_AXIS_TDATA0__23_carry_i_8_n_0),
        .I1(M_AXIS_TDATA8[2]),
        .I2(M_AXIS_TDATA8[1]),
        .I3(M_AXIS_TDATA8[0]),
        .I4(M_AXIS_TDATA8[7]),
        .I5(M_AXIS_TDATA00),
        .O(M_AXIS_TDATA0__23_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF6969006900FF69)) 
    M_AXIS_TDATA0__23_carry_i_3
       (.I0(M_AXIS_TDATA8[5]),
        .I1(M_AXIS_TDATA8[6]),
        .I2(M_AXIS_TDATA8[4]),
        .I3(M_AXIS_TDATA0__0_carry_n_7),
        .I4(M_AXIS_TDATA8[0]),
        .I5(M_AXIS_TDATA0__23_carry_i_9_n_0),
        .O(M_AXIS_TDATA0__23_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    M_AXIS_TDATA0__23_carry_i_4
       (.I0(M_AXIS_TDATA0__23_carry_i_1_n_0),
        .I1(M_AXIS_TDATA0__23_carry_i_10_n_0),
        .I2(M_AXIS_TDATA0__0_carry_n_4),
        .I3(M_AXIS_TDATA0__23_carry_i_11_n_0),
        .I4(M_AXIS_TDATA8[3]),
        .I5(M_AXIS_TDATA0__23_carry_i_12_n_0),
        .O(M_AXIS_TDATA0__23_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    M_AXIS_TDATA0__23_carry_i_5
       (.I0(M_AXIS_TDATA0__23_carry_i_2_n_0),
        .I1(M_AXIS_TDATA0__23_carry_i_13_n_0),
        .I2(M_AXIS_TDATA0__0_carry_n_6),
        .I3(M_AXIS_TDATA0__23_carry_i_14_n_0),
        .O(M_AXIS_TDATA0__23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA0__23_carry_i_6
       (.I0(M_AXIS_TDATA0__23_carry_i_3_n_0),
        .I1(M_AXIS_TDATA0__0_carry_n_6),
        .I2(M_AXIS_TDATA0__23_carry_i_13_n_0),
        .I3(M_AXIS_TDATA0__23_carry_i_14_n_0),
        .O(M_AXIS_TDATA0__23_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    M_AXIS_TDATA0__23_carry_i_7
       (.I0(M_AXIS_TDATA0__23_carry_i_9_n_0),
        .I1(M_AXIS_TDATA8[0]),
        .I2(M_AXIS_TDATA8[5]),
        .I3(M_AXIS_TDATA8[6]),
        .I4(M_AXIS_TDATA8[4]),
        .I5(M_AXIS_TDATA0__0_carry_n_7),
        .O(M_AXIS_TDATA0__23_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6959595A96A6A6A5)) 
    M_AXIS_TDATA0__23_carry_i_8
       (.I0(M_AXIS_TDATA0__0_carry_n_5),
        .I1(M_AXIS_TDATA8[7]),
        .I2(M_AXIS_TDATA8[6]),
        .I3(M_AXIS_TDATA8[5]),
        .I4(M_AXIS_TDATA8[4]),
        .I5(M_AXIS_TDATA00),
        .O(M_AXIS_TDATA0__23_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXIS_TDATA0__23_carry_i_9
       (.I0(M_AXIS_TDATA00),
        .I1(M_AXIS_TDATA8[7]),
        .O(M_AXIS_TDATA0__23_carry_i_9_n_0));
  CARRY4 M_AXIS_TDATA9__0_carry
       (.CI(1'b0),
        .CO({M_AXIS_TDATA9__0_carry_n_0,M_AXIS_TDATA9__0_carry_n_1,M_AXIS_TDATA9__0_carry_n_2,M_AXIS_TDATA9__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({M_AXIS_TDATA9__0_carry_i_1_n_0,M_AXIS_TDATA9__0_carry_i_2_n_0,M_AXIS_TDATA9__0_carry_i_3_n_0,1'b0}),
        .O({M_AXIS_TDATA8[2:0],NLW_M_AXIS_TDATA9__0_carry_O_UNCONNECTED[0]}),
        .S({M_AXIS_TDATA9__0_carry_i_4_n_0,M_AXIS_TDATA9__0_carry_i_5_n_0,M_AXIS_TDATA9__0_carry_i_6_n_0,M_AXIS_TDATA9__0_carry_i_7_n_0}));
  CARRY4 M_AXIS_TDATA9__0_carry__0
       (.CI(M_AXIS_TDATA9__0_carry_n_0),
        .CO({M_AXIS_TDATA9__0_carry__0_n_0,M_AXIS_TDATA9__0_carry__0_n_1,M_AXIS_TDATA9__0_carry__0_n_2,M_AXIS_TDATA9__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({M_AXIS_TDATA9__0_carry__0_i_1_n_0,M_AXIS_TDATA9__0_carry__0_i_2_n_0,M_AXIS_TDATA9__0_carry__0_i_3_n_0,M_AXIS_TDATA9__0_carry__0_i_4_n_0}),
        .O(M_AXIS_TDATA8[6:3]),
        .S({M_AXIS_TDATA9__0_carry__0_i_5_n_0,M_AXIS_TDATA9__0_carry__0_i_6_n_0,M_AXIS_TDATA9__0_carry__0_i_7_n_0,M_AXIS_TDATA9__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry__0_i_1
       (.I0(ch1[6]),
        .I1(ch0[6]),
        .I2(ch2[6]),
        .O(M_AXIS_TDATA9__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry__0_i_2
       (.I0(ch1[5]),
        .I1(ch0[5]),
        .I2(ch2[5]),
        .O(M_AXIS_TDATA9__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry__0_i_3
       (.I0(ch1[4]),
        .I1(ch0[4]),
        .I2(ch2[4]),
        .O(M_AXIS_TDATA9__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry__0_i_4
       (.I0(ch1[3]),
        .I1(ch0[3]),
        .I2(ch2[3]),
        .O(M_AXIS_TDATA9__0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry__0_i_5
       (.I0(M_AXIS_TDATA9__0_carry__0_i_1_n_0),
        .I1(ch1[7]),
        .I2(ch0[7]),
        .I3(ch2[7]),
        .O(M_AXIS_TDATA9__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry__0_i_6
       (.I0(ch1[6]),
        .I1(ch0[6]),
        .I2(ch2[6]),
        .I3(M_AXIS_TDATA9__0_carry__0_i_2_n_0),
        .O(M_AXIS_TDATA9__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry__0_i_7
       (.I0(ch1[5]),
        .I1(ch0[5]),
        .I2(ch2[5]),
        .I3(M_AXIS_TDATA9__0_carry__0_i_3_n_0),
        .O(M_AXIS_TDATA9__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry__0_i_8
       (.I0(ch1[4]),
        .I1(ch0[4]),
        .I2(ch2[4]),
        .I3(M_AXIS_TDATA9__0_carry__0_i_4_n_0),
        .O(M_AXIS_TDATA9__0_carry__0_i_8_n_0));
  CARRY4 M_AXIS_TDATA9__0_carry__1
       (.CI(M_AXIS_TDATA9__0_carry__0_n_0),
        .CO({NLW_M_AXIS_TDATA9__0_carry__1_CO_UNCONNECTED[3:2],M_AXIS_TDATA00,NLW_M_AXIS_TDATA9__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_M_AXIS_TDATA9__0_carry__1_O_UNCONNECTED[3:1],M_AXIS_TDATA8[7]}),
        .S({1'b0,1'b0,1'b1,M_AXIS_TDATA9__0_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry__1_i_1
       (.I0(ch1[7]),
        .I1(ch0[7]),
        .I2(ch2[7]),
        .O(M_AXIS_TDATA9__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry_i_1
       (.I0(ch1[2]),
        .I1(ch0[2]),
        .I2(ch2[2]),
        .O(M_AXIS_TDATA9__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry_i_2
       (.I0(ch1[1]),
        .I1(ch0[1]),
        .I2(ch2[1]),
        .O(M_AXIS_TDATA9__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    M_AXIS_TDATA9__0_carry_i_3
       (.I0(ch0[0]),
        .I1(ch1[0]),
        .I2(ch2[0]),
        .O(M_AXIS_TDATA9__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry_i_4
       (.I0(ch1[3]),
        .I1(ch0[3]),
        .I2(ch2[3]),
        .I3(M_AXIS_TDATA9__0_carry_i_1_n_0),
        .O(M_AXIS_TDATA9__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry_i_5
       (.I0(ch1[2]),
        .I1(ch0[2]),
        .I2(ch2[2]),
        .I3(M_AXIS_TDATA9__0_carry_i_2_n_0),
        .O(M_AXIS_TDATA9__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    M_AXIS_TDATA9__0_carry_i_6
       (.I0(ch1[1]),
        .I1(ch0[1]),
        .I2(ch2[1]),
        .I3(M_AXIS_TDATA9__0_carry_i_3_n_0),
        .O(M_AXIS_TDATA9__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    M_AXIS_TDATA9__0_carry_i_7
       (.I0(ch0[0]),
        .I1(ch1[0]),
        .I2(ch2[0]),
        .O(M_AXIS_TDATA9__0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(M_AXIS_ARESETN),
        .I1(M_AXIS_TREADY),
        .I2(valid),
        .O(\M_AXIS_TDATA[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[0] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[1] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[2] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[3] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[4] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[5] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[6] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \M_AXIS_TDATA_reg[7] 
       (.C(M_AXIS_ACLK),
        .CE(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .D(M_AXIS_TDATA00_in[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hC8)) 
    M_AXIS_TVALID_sig_i_1
       (.I0(M_AXIS_TREADY),
        .I1(valid),
        .I2(M_AXIS_TVALID),
        .O(M_AXIS_TVALID_sig_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXIS_TVALID_sig_i_2
       (.I0(M_AXIS_ARESETN),
        .O(M_AXIS_TVALID_sig_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    M_AXIS_TVALID_sig_reg
       (.C(M_AXIS_ACLK),
        .CE(1'b1),
        .CLR(M_AXIS_TVALID_sig_i_2_n_0),
        .D(M_AXIS_TVALID_sig_i_1_n_0),
        .Q(M_AXIS_TVALID));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Color2graycore_0_0,Color2graycore,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Color2graycore,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ch0,
    ch1,
    ch2,
    valid,
    M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TREADY);
  input [7:0]ch0;
  input [7:0]ch1;
  input [7:0]ch2;
  input valid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET M_AXIS_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input M_AXIS_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXIS_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXIS_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [7:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [7:0]ch0;
  wire [7:0]ch1;
  wire [7:0]ch2;
  wire valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Color2graycore U0
       (.M_AXIS_ACLK(M_AXIS_ACLK),
        .M_AXIS_ARESETN(M_AXIS_ARESETN),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .ch0(ch0),
        .ch1(ch1),
        .ch2(ch2),
        .valid(valid));
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

// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 17:06:12 2021
// Host        : DESKTOP-65ETA1A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/valer/Documents/desd-labs/LAB2/SerialManager/SerialManager.gen/sources_1/bd/design_1/ip/design_1_edge_detector_0_0/design_1_edge_detector_0_0_sim_netlist.v
// Design      : design_1_edge_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_edge_detector_0_0,edge_detector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "edge_detector,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_edge_detector_0_0
   (clk,
    reset,
    in_port,
    pos_edge_trigger,
    neg_edge_trigger);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input in_port;
  output pos_edge_trigger;
  output neg_edge_trigger;

  wire clk;
  wire in_port;
  wire neg_edge_trigger;
  wire pos_edge_trigger;
  wire reset;

  design_1_edge_detector_0_0_edge_detector U0
       (.clk(clk),
        .in_port(in_port),
        .neg_edge_trigger(neg_edge_trigger),
        .pos_edge_trigger(pos_edge_trigger),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "edge_detector" *) 
module design_1_edge_detector_0_0_edge_detector
   (neg_edge_trigger,
    pos_edge_trigger,
    in_port,
    clk,
    reset);
  output neg_edge_trigger;
  output pos_edge_trigger;
  input in_port;
  input clk;
  input reset;

  wire clk;
  wire in_port;
  wire inhibit_count;
  wire \inhibit_count[0]_i_10_n_0 ;
  wire \inhibit_count[0]_i_11_n_0 ;
  wire \inhibit_count[0]_i_12_n_0 ;
  wire \inhibit_count[0]_i_1_n_0 ;
  wire \inhibit_count[0]_i_4_n_0 ;
  wire \inhibit_count[0]_i_5_n_0 ;
  wire \inhibit_count[0]_i_6_n_0 ;
  wire \inhibit_count[0]_i_7_n_0 ;
  wire \inhibit_count[0]_i_8_n_0 ;
  wire \inhibit_count[0]_i_9_n_0 ;
  wire \inhibit_count[12]_i_2_n_0 ;
  wire \inhibit_count[12]_i_3_n_0 ;
  wire \inhibit_count[12]_i_4_n_0 ;
  wire \inhibit_count[12]_i_5_n_0 ;
  wire \inhibit_count[16]_i_2_n_0 ;
  wire \inhibit_count[16]_i_3_n_0 ;
  wire \inhibit_count[16]_i_4_n_0 ;
  wire \inhibit_count[16]_i_5_n_0 ;
  wire \inhibit_count[20]_i_2_n_0 ;
  wire \inhibit_count[20]_i_3_n_0 ;
  wire \inhibit_count[20]_i_4_n_0 ;
  wire \inhibit_count[20]_i_5_n_0 ;
  wire \inhibit_count[24]_i_2_n_0 ;
  wire \inhibit_count[24]_i_3_n_0 ;
  wire \inhibit_count[24]_i_4_n_0 ;
  wire \inhibit_count[24]_i_5_n_0 ;
  wire \inhibit_count[28]_i_2_n_0 ;
  wire \inhibit_count[28]_i_3_n_0 ;
  wire \inhibit_count[28]_i_4_n_0 ;
  wire \inhibit_count[28]_i_5_n_0 ;
  wire \inhibit_count[4]_i_2_n_0 ;
  wire \inhibit_count[4]_i_3_n_0 ;
  wire \inhibit_count[4]_i_4_n_0 ;
  wire \inhibit_count[4]_i_5_n_0 ;
  wire \inhibit_count[8]_i_2_n_0 ;
  wire \inhibit_count[8]_i_3_n_0 ;
  wire \inhibit_count[8]_i_4_n_0 ;
  wire \inhibit_count[8]_i_5_n_0 ;
  wire [31:0]inhibit_count_reg;
  wire \inhibit_count_reg[0]_i_3_n_0 ;
  wire \inhibit_count_reg[0]_i_3_n_1 ;
  wire \inhibit_count_reg[0]_i_3_n_2 ;
  wire \inhibit_count_reg[0]_i_3_n_3 ;
  wire \inhibit_count_reg[0]_i_3_n_4 ;
  wire \inhibit_count_reg[0]_i_3_n_5 ;
  wire \inhibit_count_reg[0]_i_3_n_6 ;
  wire \inhibit_count_reg[0]_i_3_n_7 ;
  wire \inhibit_count_reg[12]_i_1_n_0 ;
  wire \inhibit_count_reg[12]_i_1_n_1 ;
  wire \inhibit_count_reg[12]_i_1_n_2 ;
  wire \inhibit_count_reg[12]_i_1_n_3 ;
  wire \inhibit_count_reg[12]_i_1_n_4 ;
  wire \inhibit_count_reg[12]_i_1_n_5 ;
  wire \inhibit_count_reg[12]_i_1_n_6 ;
  wire \inhibit_count_reg[12]_i_1_n_7 ;
  wire \inhibit_count_reg[16]_i_1_n_0 ;
  wire \inhibit_count_reg[16]_i_1_n_1 ;
  wire \inhibit_count_reg[16]_i_1_n_2 ;
  wire \inhibit_count_reg[16]_i_1_n_3 ;
  wire \inhibit_count_reg[16]_i_1_n_4 ;
  wire \inhibit_count_reg[16]_i_1_n_5 ;
  wire \inhibit_count_reg[16]_i_1_n_6 ;
  wire \inhibit_count_reg[16]_i_1_n_7 ;
  wire \inhibit_count_reg[20]_i_1_n_0 ;
  wire \inhibit_count_reg[20]_i_1_n_1 ;
  wire \inhibit_count_reg[20]_i_1_n_2 ;
  wire \inhibit_count_reg[20]_i_1_n_3 ;
  wire \inhibit_count_reg[20]_i_1_n_4 ;
  wire \inhibit_count_reg[20]_i_1_n_5 ;
  wire \inhibit_count_reg[20]_i_1_n_6 ;
  wire \inhibit_count_reg[20]_i_1_n_7 ;
  wire \inhibit_count_reg[24]_i_1_n_0 ;
  wire \inhibit_count_reg[24]_i_1_n_1 ;
  wire \inhibit_count_reg[24]_i_1_n_2 ;
  wire \inhibit_count_reg[24]_i_1_n_3 ;
  wire \inhibit_count_reg[24]_i_1_n_4 ;
  wire \inhibit_count_reg[24]_i_1_n_5 ;
  wire \inhibit_count_reg[24]_i_1_n_6 ;
  wire \inhibit_count_reg[24]_i_1_n_7 ;
  wire \inhibit_count_reg[28]_i_1_n_1 ;
  wire \inhibit_count_reg[28]_i_1_n_2 ;
  wire \inhibit_count_reg[28]_i_1_n_3 ;
  wire \inhibit_count_reg[28]_i_1_n_4 ;
  wire \inhibit_count_reg[28]_i_1_n_5 ;
  wire \inhibit_count_reg[28]_i_1_n_6 ;
  wire \inhibit_count_reg[28]_i_1_n_7 ;
  wire \inhibit_count_reg[4]_i_1_n_0 ;
  wire \inhibit_count_reg[4]_i_1_n_1 ;
  wire \inhibit_count_reg[4]_i_1_n_2 ;
  wire \inhibit_count_reg[4]_i_1_n_3 ;
  wire \inhibit_count_reg[4]_i_1_n_4 ;
  wire \inhibit_count_reg[4]_i_1_n_5 ;
  wire \inhibit_count_reg[4]_i_1_n_6 ;
  wire \inhibit_count_reg[4]_i_1_n_7 ;
  wire \inhibit_count_reg[8]_i_1_n_0 ;
  wire \inhibit_count_reg[8]_i_1_n_1 ;
  wire \inhibit_count_reg[8]_i_1_n_2 ;
  wire \inhibit_count_reg[8]_i_1_n_3 ;
  wire \inhibit_count_reg[8]_i_1_n_4 ;
  wire \inhibit_count_reg[8]_i_1_n_5 ;
  wire \inhibit_count_reg[8]_i_1_n_6 ;
  wire \inhibit_count_reg[8]_i_1_n_7 ;
  wire last_state;
  wire neg_edge_trigger;
  wire neg_edge_trigger_i_1_n_0;
  wire pos_edge_trigger;
  wire pos_edge_trigger_i_10_n_0;
  wire pos_edge_trigger_i_11_n_0;
  wire pos_edge_trigger_i_1_n_0;
  wire pos_edge_trigger_i_2_n_0;
  wire pos_edge_trigger_i_3_n_0;
  wire pos_edge_trigger_i_4_n_0;
  wire pos_edge_trigger_i_5_n_0;
  wire pos_edge_trigger_i_6_n_0;
  wire pos_edge_trigger_i_7_n_0;
  wire pos_edge_trigger_i_8_n_0;
  wire pos_edge_trigger_i_9_n_0;
  wire reset;
  wire [3:3]\NLW_inhibit_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \inhibit_count[0]_i_1 
       (.I0(\inhibit_count[0]_i_4_n_0 ),
        .I1(\inhibit_count[0]_i_5_n_0 ),
        .I2(\inhibit_count[0]_i_6_n_0 ),
        .I3(\inhibit_count[0]_i_7_n_0 ),
        .I4(\inhibit_count[0]_i_8_n_0 ),
        .I5(reset),
        .O(\inhibit_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[0]_i_10 
       (.I0(inhibit_count_reg[2]),
        .O(\inhibit_count[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[0]_i_11 
       (.I0(inhibit_count_reg[1]),
        .O(\inhibit_count[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[0]_i_12 
       (.I0(inhibit_count_reg[0]),
        .O(\inhibit_count[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \inhibit_count[0]_i_2 
       (.I0(\inhibit_count[0]_i_8_n_0 ),
        .I1(\inhibit_count[0]_i_7_n_0 ),
        .I2(\inhibit_count[0]_i_6_n_0 ),
        .I3(\inhibit_count[0]_i_5_n_0 ),
        .I4(reset),
        .O(inhibit_count));
  LUT2 #(
    .INIT(4'h6)) 
    \inhibit_count[0]_i_4 
       (.I0(in_port),
        .I1(last_state),
        .O(\inhibit_count[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inhibit_count[0]_i_5 
       (.I0(inhibit_count_reg[10]),
        .I1(inhibit_count_reg[11]),
        .I2(inhibit_count_reg[8]),
        .I3(inhibit_count_reg[9]),
        .I4(pos_edge_trigger_i_6_n_0),
        .O(\inhibit_count[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inhibit_count[0]_i_6 
       (.I0(inhibit_count_reg[2]),
        .I1(inhibit_count_reg[3]),
        .I2(inhibit_count_reg[0]),
        .I3(inhibit_count_reg[1]),
        .I4(pos_edge_trigger_i_4_n_0),
        .O(\inhibit_count[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inhibit_count[0]_i_7 
       (.I0(inhibit_count_reg[26]),
        .I1(inhibit_count_reg[27]),
        .I2(inhibit_count_reg[24]),
        .I3(inhibit_count_reg[25]),
        .I4(pos_edge_trigger_i_10_n_0),
        .O(\inhibit_count[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inhibit_count[0]_i_8 
       (.I0(inhibit_count_reg[18]),
        .I1(inhibit_count_reg[19]),
        .I2(inhibit_count_reg[16]),
        .I3(inhibit_count_reg[17]),
        .I4(pos_edge_trigger_i_8_n_0),
        .O(\inhibit_count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[0]_i_9 
       (.I0(inhibit_count_reg[3]),
        .O(\inhibit_count[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[12]_i_2 
       (.I0(inhibit_count_reg[15]),
        .O(\inhibit_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[12]_i_3 
       (.I0(inhibit_count_reg[14]),
        .O(\inhibit_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[12]_i_4 
       (.I0(inhibit_count_reg[13]),
        .O(\inhibit_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[12]_i_5 
       (.I0(inhibit_count_reg[12]),
        .O(\inhibit_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[16]_i_2 
       (.I0(inhibit_count_reg[19]),
        .O(\inhibit_count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[16]_i_3 
       (.I0(inhibit_count_reg[18]),
        .O(\inhibit_count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[16]_i_4 
       (.I0(inhibit_count_reg[17]),
        .O(\inhibit_count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[16]_i_5 
       (.I0(inhibit_count_reg[16]),
        .O(\inhibit_count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[20]_i_2 
       (.I0(inhibit_count_reg[23]),
        .O(\inhibit_count[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[20]_i_3 
       (.I0(inhibit_count_reg[22]),
        .O(\inhibit_count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[20]_i_4 
       (.I0(inhibit_count_reg[21]),
        .O(\inhibit_count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[20]_i_5 
       (.I0(inhibit_count_reg[20]),
        .O(\inhibit_count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[24]_i_2 
       (.I0(inhibit_count_reg[27]),
        .O(\inhibit_count[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[24]_i_3 
       (.I0(inhibit_count_reg[26]),
        .O(\inhibit_count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[24]_i_4 
       (.I0(inhibit_count_reg[25]),
        .O(\inhibit_count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[24]_i_5 
       (.I0(inhibit_count_reg[24]),
        .O(\inhibit_count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[28]_i_2 
       (.I0(inhibit_count_reg[31]),
        .O(\inhibit_count[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[28]_i_3 
       (.I0(inhibit_count_reg[30]),
        .O(\inhibit_count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[28]_i_4 
       (.I0(inhibit_count_reg[29]),
        .O(\inhibit_count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[28]_i_5 
       (.I0(inhibit_count_reg[28]),
        .O(\inhibit_count[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[4]_i_2 
       (.I0(inhibit_count_reg[7]),
        .O(\inhibit_count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[4]_i_3 
       (.I0(inhibit_count_reg[6]),
        .O(\inhibit_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[4]_i_4 
       (.I0(inhibit_count_reg[5]),
        .O(\inhibit_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[4]_i_5 
       (.I0(inhibit_count_reg[4]),
        .O(\inhibit_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[8]_i_2 
       (.I0(inhibit_count_reg[11]),
        .O(\inhibit_count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[8]_i_3 
       (.I0(inhibit_count_reg[10]),
        .O(\inhibit_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[8]_i_4 
       (.I0(inhibit_count_reg[9]),
        .O(\inhibit_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inhibit_count[8]_i_5 
       (.I0(inhibit_count_reg[8]),
        .O(\inhibit_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[0] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[0]_i_3_n_7 ),
        .Q(inhibit_count_reg[0]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\inhibit_count_reg[0]_i_3_n_0 ,\inhibit_count_reg[0]_i_3_n_1 ,\inhibit_count_reg[0]_i_3_n_2 ,\inhibit_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[0]_i_3_n_4 ,\inhibit_count_reg[0]_i_3_n_5 ,\inhibit_count_reg[0]_i_3_n_6 ,\inhibit_count_reg[0]_i_3_n_7 }),
        .S({\inhibit_count[0]_i_9_n_0 ,\inhibit_count[0]_i_10_n_0 ,\inhibit_count[0]_i_11_n_0 ,\inhibit_count[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[10] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[8]_i_1_n_5 ),
        .Q(inhibit_count_reg[10]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[11] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[8]_i_1_n_4 ),
        .Q(inhibit_count_reg[11]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[12] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[12]_i_1_n_7 ),
        .Q(inhibit_count_reg[12]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[12]_i_1 
       (.CI(\inhibit_count_reg[8]_i_1_n_0 ),
        .CO({\inhibit_count_reg[12]_i_1_n_0 ,\inhibit_count_reg[12]_i_1_n_1 ,\inhibit_count_reg[12]_i_1_n_2 ,\inhibit_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[12]_i_1_n_4 ,\inhibit_count_reg[12]_i_1_n_5 ,\inhibit_count_reg[12]_i_1_n_6 ,\inhibit_count_reg[12]_i_1_n_7 }),
        .S({\inhibit_count[12]_i_2_n_0 ,\inhibit_count[12]_i_3_n_0 ,\inhibit_count[12]_i_4_n_0 ,\inhibit_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[13] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[12]_i_1_n_6 ),
        .Q(inhibit_count_reg[13]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[14] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[12]_i_1_n_5 ),
        .Q(inhibit_count_reg[14]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[15] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[12]_i_1_n_4 ),
        .Q(inhibit_count_reg[15]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[16] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[16]_i_1_n_7 ),
        .Q(inhibit_count_reg[16]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[16]_i_1 
       (.CI(\inhibit_count_reg[12]_i_1_n_0 ),
        .CO({\inhibit_count_reg[16]_i_1_n_0 ,\inhibit_count_reg[16]_i_1_n_1 ,\inhibit_count_reg[16]_i_1_n_2 ,\inhibit_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[16]_i_1_n_4 ,\inhibit_count_reg[16]_i_1_n_5 ,\inhibit_count_reg[16]_i_1_n_6 ,\inhibit_count_reg[16]_i_1_n_7 }),
        .S({\inhibit_count[16]_i_2_n_0 ,\inhibit_count[16]_i_3_n_0 ,\inhibit_count[16]_i_4_n_0 ,\inhibit_count[16]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[17] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[16]_i_1_n_6 ),
        .Q(inhibit_count_reg[17]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[18] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[16]_i_1_n_5 ),
        .Q(inhibit_count_reg[18]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[19] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[16]_i_1_n_4 ),
        .Q(inhibit_count_reg[19]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[1] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[0]_i_3_n_6 ),
        .Q(inhibit_count_reg[1]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[20] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[20]_i_1_n_7 ),
        .Q(inhibit_count_reg[20]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[20]_i_1 
       (.CI(\inhibit_count_reg[16]_i_1_n_0 ),
        .CO({\inhibit_count_reg[20]_i_1_n_0 ,\inhibit_count_reg[20]_i_1_n_1 ,\inhibit_count_reg[20]_i_1_n_2 ,\inhibit_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[20]_i_1_n_4 ,\inhibit_count_reg[20]_i_1_n_5 ,\inhibit_count_reg[20]_i_1_n_6 ,\inhibit_count_reg[20]_i_1_n_7 }),
        .S({\inhibit_count[20]_i_2_n_0 ,\inhibit_count[20]_i_3_n_0 ,\inhibit_count[20]_i_4_n_0 ,\inhibit_count[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[21] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[20]_i_1_n_6 ),
        .Q(inhibit_count_reg[21]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[22] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[20]_i_1_n_5 ),
        .Q(inhibit_count_reg[22]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[23] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[20]_i_1_n_4 ),
        .Q(inhibit_count_reg[23]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[24] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[24]_i_1_n_7 ),
        .Q(inhibit_count_reg[24]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[24]_i_1 
       (.CI(\inhibit_count_reg[20]_i_1_n_0 ),
        .CO({\inhibit_count_reg[24]_i_1_n_0 ,\inhibit_count_reg[24]_i_1_n_1 ,\inhibit_count_reg[24]_i_1_n_2 ,\inhibit_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[24]_i_1_n_4 ,\inhibit_count_reg[24]_i_1_n_5 ,\inhibit_count_reg[24]_i_1_n_6 ,\inhibit_count_reg[24]_i_1_n_7 }),
        .S({\inhibit_count[24]_i_2_n_0 ,\inhibit_count[24]_i_3_n_0 ,\inhibit_count[24]_i_4_n_0 ,\inhibit_count[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[25] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[24]_i_1_n_6 ),
        .Q(inhibit_count_reg[25]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[26] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[24]_i_1_n_5 ),
        .Q(inhibit_count_reg[26]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[27] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[24]_i_1_n_4 ),
        .Q(inhibit_count_reg[27]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[28] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[28]_i_1_n_7 ),
        .Q(inhibit_count_reg[28]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[28]_i_1 
       (.CI(\inhibit_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_inhibit_count_reg[28]_i_1_CO_UNCONNECTED [3],\inhibit_count_reg[28]_i_1_n_1 ,\inhibit_count_reg[28]_i_1_n_2 ,\inhibit_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[28]_i_1_n_4 ,\inhibit_count_reg[28]_i_1_n_5 ,\inhibit_count_reg[28]_i_1_n_6 ,\inhibit_count_reg[28]_i_1_n_7 }),
        .S({\inhibit_count[28]_i_2_n_0 ,\inhibit_count[28]_i_3_n_0 ,\inhibit_count[28]_i_4_n_0 ,\inhibit_count[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[29] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[28]_i_1_n_6 ),
        .Q(inhibit_count_reg[29]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[2] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[0]_i_3_n_5 ),
        .Q(inhibit_count_reg[2]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[30] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[28]_i_1_n_5 ),
        .Q(inhibit_count_reg[30]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[31] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[28]_i_1_n_4 ),
        .Q(inhibit_count_reg[31]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[3] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[0]_i_3_n_4 ),
        .Q(inhibit_count_reg[3]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[4] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[4]_i_1_n_7 ),
        .Q(inhibit_count_reg[4]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[4]_i_1 
       (.CI(\inhibit_count_reg[0]_i_3_n_0 ),
        .CO({\inhibit_count_reg[4]_i_1_n_0 ,\inhibit_count_reg[4]_i_1_n_1 ,\inhibit_count_reg[4]_i_1_n_2 ,\inhibit_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[4]_i_1_n_4 ,\inhibit_count_reg[4]_i_1_n_5 ,\inhibit_count_reg[4]_i_1_n_6 ,\inhibit_count_reg[4]_i_1_n_7 }),
        .S({\inhibit_count[4]_i_2_n_0 ,\inhibit_count[4]_i_3_n_0 ,\inhibit_count[4]_i_4_n_0 ,\inhibit_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[5] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[4]_i_1_n_6 ),
        .Q(inhibit_count_reg[5]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[6] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[4]_i_1_n_5 ),
        .Q(inhibit_count_reg[6]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[7] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[4]_i_1_n_4 ),
        .Q(inhibit_count_reg[7]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[8] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[8]_i_1_n_7 ),
        .Q(inhibit_count_reg[8]),
        .R(\inhibit_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \inhibit_count_reg[8]_i_1 
       (.CI(\inhibit_count_reg[4]_i_1_n_0 ),
        .CO({\inhibit_count_reg[8]_i_1_n_0 ,\inhibit_count_reg[8]_i_1_n_1 ,\inhibit_count_reg[8]_i_1_n_2 ,\inhibit_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\inhibit_count_reg[8]_i_1_n_4 ,\inhibit_count_reg[8]_i_1_n_5 ,\inhibit_count_reg[8]_i_1_n_6 ,\inhibit_count_reg[8]_i_1_n_7 }),
        .S({\inhibit_count[8]_i_2_n_0 ,\inhibit_count[8]_i_3_n_0 ,\inhibit_count[8]_i_4_n_0 ,\inhibit_count[8]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \inhibit_count_reg[9] 
       (.C(clk),
        .CE(inhibit_count),
        .D(\inhibit_count_reg[8]_i_1_n_6 ),
        .Q(inhibit_count_reg[9]),
        .S(\inhibit_count[0]_i_1_n_0 ));
  FDRE last_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(in_port),
        .Q(last_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF000600000004)) 
    neg_edge_trigger_i_1
       (.I0(in_port),
        .I1(last_state),
        .I2(pos_edge_trigger_i_2_n_0),
        .I3(pos_edge_trigger_i_3_n_0),
        .I4(reset),
        .I5(neg_edge_trigger),
        .O(neg_edge_trigger_i_1_n_0));
  FDRE neg_edge_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(neg_edge_trigger_i_1_n_0),
        .Q(neg_edge_trigger),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF000600000002)) 
    pos_edge_trigger_i_1
       (.I0(in_port),
        .I1(last_state),
        .I2(pos_edge_trigger_i_2_n_0),
        .I3(pos_edge_trigger_i_3_n_0),
        .I4(reset),
        .I5(pos_edge_trigger),
        .O(pos_edge_trigger_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_10
       (.I0(inhibit_count_reg[29]),
        .I1(inhibit_count_reg[28]),
        .I2(inhibit_count_reg[31]),
        .I3(inhibit_count_reg[30]),
        .O(pos_edge_trigger_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_11
       (.I0(inhibit_count_reg[25]),
        .I1(inhibit_count_reg[24]),
        .I2(inhibit_count_reg[27]),
        .I3(inhibit_count_reg[26]),
        .O(pos_edge_trigger_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_2
       (.I0(pos_edge_trigger_i_4_n_0),
        .I1(pos_edge_trigger_i_5_n_0),
        .I2(pos_edge_trigger_i_6_n_0),
        .I3(pos_edge_trigger_i_7_n_0),
        .O(pos_edge_trigger_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_3
       (.I0(pos_edge_trigger_i_8_n_0),
        .I1(pos_edge_trigger_i_9_n_0),
        .I2(pos_edge_trigger_i_10_n_0),
        .I3(pos_edge_trigger_i_11_n_0),
        .O(pos_edge_trigger_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_4
       (.I0(inhibit_count_reg[5]),
        .I1(inhibit_count_reg[4]),
        .I2(inhibit_count_reg[7]),
        .I3(inhibit_count_reg[6]),
        .O(pos_edge_trigger_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_5
       (.I0(inhibit_count_reg[1]),
        .I1(inhibit_count_reg[0]),
        .I2(inhibit_count_reg[3]),
        .I3(inhibit_count_reg[2]),
        .O(pos_edge_trigger_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_6
       (.I0(inhibit_count_reg[13]),
        .I1(inhibit_count_reg[12]),
        .I2(inhibit_count_reg[15]),
        .I3(inhibit_count_reg[14]),
        .O(pos_edge_trigger_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_7
       (.I0(inhibit_count_reg[9]),
        .I1(inhibit_count_reg[8]),
        .I2(inhibit_count_reg[11]),
        .I3(inhibit_count_reg[10]),
        .O(pos_edge_trigger_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_8
       (.I0(inhibit_count_reg[21]),
        .I1(inhibit_count_reg[20]),
        .I2(inhibit_count_reg[23]),
        .I3(inhibit_count_reg[22]),
        .O(pos_edge_trigger_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pos_edge_trigger_i_9
       (.I0(inhibit_count_reg[17]),
        .I1(inhibit_count_reg[16]),
        .I2(inhibit_count_reg[19]),
        .I3(inhibit_count_reg[18]),
        .O(pos_edge_trigger_i_9_n_0));
  FDRE pos_edge_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(pos_edge_trigger_i_1_n_0),
        .Q(pos_edge_trigger),
        .R(1'b0));
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

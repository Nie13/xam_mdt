// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Oct 23 20:25:50 2017
// Host        : l-THINK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/l/Desktop/6463ADVHDes/code/project_6/project_6.sim/sim_1/synth/timing/find_ndnddn_tb_time_synth.v
// Design      : find_ndnddn
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module find_ndnddn
   (RESET,
    DATA,
    VALID,
    clk,
    lot);
  input RESET;
  input DATA;
  output VALID;
  input clk;
  output [4:0]lot;

  wire DATA;
  wire DATA_IBUF;
  wire RESET;
  wire RESET_IBUF;
  wire VALID;
  wire VALID3_out;
  wire VALID_OBUF;
  wire VALID_i_2_n_0;
  wire VALID_i_3_n_0;
  wire VALID_i_4_n_0;
  wire [4:0]bool_6;
  wire bool_60;
  wire \bool_6[0]_i_1_n_0 ;
  wire \bool_6[0]_i_3_n_0 ;
  wire \bool_6[0]_i_4_n_0 ;
  wire \bool_6[1]_i_1_n_0 ;
  wire \bool_6[1]_i_2_n_0 ;
  wire \bool_6[1]_i_3_n_0 ;
  wire \bool_6[1]_i_4_n_0 ;
  wire \bool_6[1]_i_5_n_0 ;
  wire \bool_6[2]_i_1_n_0 ;
  wire \bool_6[2]_i_2_n_0 ;
  wire \bool_6[2]_i_3_n_0 ;
  wire \bool_6[2]_i_4_n_0 ;
  wire \bool_6[2]_i_5_n_0 ;
  wire \bool_6[2]_i_6_n_0 ;
  wire \bool_6[2]_i_7_n_0 ;
  wire \bool_6[2]_i_8_n_0 ;
  wire \bool_6[2]_i_9_n_0 ;
  wire \bool_6[3]_i_1_n_0 ;
  wire \bool_6[3]_i_2_n_0 ;
  wire \bool_6[4]_i_1_n_0 ;
  wire \bool_6[4]_i_2_n_0 ;
  wire \bool_6[4]_i_3_n_0 ;
  wire \bool_6[4]_i_4_n_0 ;
  wire \bool_6[4]_i_5_n_0 ;
  wire \bool_6[4]_i_6_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt_5;
  wire \cnt_5[0]_i_1_n_0 ;
  wire \cnt_5[1]_i_1_n_0 ;
  wire \cnt_5[2]_i_1_n_0 ;
  wire \letter[4]_i_1_n_0 ;
  wire [4:0]lot;
  wire [4:0]lot_OBUF;

initial begin
 $sdf_annotate("find_ndnddn_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF DATA_IBUF_inst
       (.I(DATA),
        .O(DATA_IBUF));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  OBUF VALID_OBUF_inst
       (.I(VALID_OBUF),
        .O(VALID));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    VALID_i_1
       (.I0(bool_6[4]),
        .I1(bool_6[3]),
        .I2(VALID_i_3_n_0),
        .I3(VALID_i_4_n_0),
        .I4(cnt_5[1]),
        .I5(cnt_5[0]),
        .O(VALID3_out));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    VALID_i_2
       (.I0(VALID_i_4_n_0),
        .I1(VALID_i_3_n_0),
        .I2(bool_6[4]),
        .I3(bool_6[3]),
        .I4(cnt_5[1]),
        .I5(cnt_5[0]),
        .O(VALID_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    VALID_i_3
       (.I0(lot_OBUF[4]),
        .I1(lot_OBUF[0]),
        .I2(cnt_5[2]),
        .O(VALID_i_3_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    VALID_i_4
       (.I0(lot_OBUF[3]),
        .I1(lot_OBUF[2]),
        .I2(lot_OBUF[1]),
        .I3(bool_6[2]),
        .I4(bool_6[0]),
        .I5(bool_6[1]),
        .O(VALID_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    VALID_reg
       (.C(clk_IBUF_BUFG),
        .CE(VALID3_out),
        .CLR(RESET_IBUF),
        .D(VALID_i_2_n_0),
        .Q(VALID_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFDD8FDD88)) 
    \bool_6[0]_i_1 
       (.I0(\bool_6[4]_i_2_n_0 ),
        .I1(bool_60),
        .I2(bool_6[1]),
        .I3(bool_6[0]),
        .I4(\bool_6[0]_i_3_n_0 ),
        .I5(\bool_6[1]_i_2_n_0 ),
        .O(\bool_6[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \bool_6[0]_i_2 
       (.I0(\bool_6[0]_i_4_n_0 ),
        .I1(bool_6[4]),
        .I2(bool_6[3]),
        .I3(lot_OBUF[4]),
        .I4(lot_OBUF[0]),
        .I5(\bool_6[1]_i_3_n_0 ),
        .O(bool_60));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bool_6[0]_i_3 
       (.I0(\bool_6[1]_i_3_n_0 ),
        .I1(bool_6[2]),
        .I2(\bool_6[4]_i_6_n_0 ),
        .I3(VALID_i_3_n_0),
        .I4(bool_6[4]),
        .I5(bool_6[3]),
        .O(\bool_6[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bool_6[0]_i_4 
       (.I0(bool_6[1]),
        .I1(bool_6[0]),
        .I2(bool_6[2]),
        .O(\bool_6[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBAAAA0AAA)) 
    \bool_6[1]_i_1 
       (.I0(\bool_6[1]_i_2_n_0 ),
        .I1(\bool_6[4]_i_2_n_0 ),
        .I2(\bool_6[1]_i_3_n_0 ),
        .I3(\bool_6[1]_i_4_n_0 ),
        .I4(bool_6[0]),
        .I5(bool_6[1]),
        .O(\bool_6[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bool_6[1]_i_2 
       (.I0(bool_6[0]),
        .I1(bool_6[4]),
        .I2(VALID_i_3_n_0),
        .I3(\bool_6[4]_i_6_n_0 ),
        .I4(\bool_6[1]_i_5_n_0 ),
        .O(\bool_6[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bool_6[1]_i_3 
       (.I0(lot_OBUF[1]),
        .I1(lot_OBUF[2]),
        .I2(lot_OBUF[3]),
        .O(\bool_6[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \bool_6[1]_i_4 
       (.I0(bool_6[3]),
        .I1(bool_6[4]),
        .I2(VALID_i_3_n_0),
        .I3(\bool_6[4]_i_6_n_0 ),
        .I4(bool_6[2]),
        .O(\bool_6[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000400810)) 
    \bool_6[1]_i_5 
       (.I0(lot_OBUF[3]),
        .I1(bool_6[1]),
        .I2(lot_OBUF[1]),
        .I3(lot_OBUF[2]),
        .I4(bool_6[2]),
        .I5(bool_6[3]),
        .O(\bool_6[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FCFE)) 
    \bool_6[2]_i_1 
       (.I0(bool_6[2]),
        .I1(\bool_6[2]_i_2_n_0 ),
        .I2(\bool_6[2]_i_3_n_0 ),
        .I3(\bool_6[4]_i_2_n_0 ),
        .I4(\bool_6[2]_i_4_n_0 ),
        .I5(\bool_6[2]_i_5_n_0 ),
        .O(\bool_6[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \bool_6[2]_i_2 
       (.I0(\bool_6[4]_i_4_n_0 ),
        .I1(\bool_6[4]_i_6_n_0 ),
        .I2(cnt_5[2]),
        .I3(lot_OBUF[0]),
        .I4(lot_OBUF[4]),
        .I5(bool_6[4]),
        .O(\bool_6[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bool_6[2]_i_3 
       (.I0(bool_6[3]),
        .I1(\bool_6[2]_i_6_n_0 ),
        .I2(\bool_6[4]_i_6_n_0 ),
        .I3(bool_6[2]),
        .I4(\bool_6[1]_i_3_n_0 ),
        .I5(\bool_6[2]_i_7_n_0 ),
        .O(\bool_6[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \bool_6[2]_i_4 
       (.I0(\bool_6[2]_i_8_n_0 ),
        .I1(bool_6[3]),
        .I2(\bool_6[2]_i_6_n_0 ),
        .I3(\bool_6[4]_i_6_n_0 ),
        .I4(bool_6[2]),
        .I5(\bool_6[1]_i_3_n_0 ),
        .O(\bool_6[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bool_6[2]_i_5 
       (.I0(\bool_6[2]_i_9_n_0 ),
        .I1(bool_6[2]),
        .I2(\bool_6[4]_i_6_n_0 ),
        .I3(VALID_i_3_n_0),
        .I4(bool_6[4]),
        .I5(bool_6[3]),
        .O(\bool_6[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \bool_6[2]_i_6 
       (.I0(cnt_5[2]),
        .I1(lot_OBUF[0]),
        .I2(lot_OBUF[4]),
        .I3(bool_6[4]),
        .O(\bool_6[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bool_6[2]_i_7 
       (.I0(bool_6[0]),
        .I1(bool_6[1]),
        .O(\bool_6[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bool_6[2]_i_8 
       (.I0(bool_6[0]),
        .I1(bool_6[1]),
        .O(\bool_6[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \bool_6[2]_i_9 
       (.I0(bool_6[1]),
        .I1(bool_6[0]),
        .I2(lot_OBUF[3]),
        .I3(lot_OBUF[1]),
        .I4(lot_OBUF[2]),
        .O(\bool_6[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBAA3300BB0A3300)) 
    \bool_6[3]_i_1 
       (.I0(\bool_6[4]_i_4_n_0 ),
        .I1(\bool_6[4]_i_2_n_0 ),
        .I2(\bool_6[3]_i_2_n_0 ),
        .I3(bool_6[3]),
        .I4(\bool_6[4]_i_5_n_0 ),
        .I5(bool_6[2]),
        .O(\bool_6[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00840200)) 
    \bool_6[3]_i_2 
       (.I0(bool_6[0]),
        .I1(lot_OBUF[3]),
        .I2(bool_6[1]),
        .I3(lot_OBUF[1]),
        .I4(lot_OBUF[2]),
        .O(\bool_6[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F02000202020202)) 
    \bool_6[4]_i_1 
       (.I0(bool_6[4]),
        .I1(\bool_6[4]_i_2_n_0 ),
        .I2(\bool_6[4]_i_3_n_0 ),
        .I3(\bool_6[4]_i_4_n_0 ),
        .I4(bool_6[3]),
        .I5(\bool_6[4]_i_5_n_0 ),
        .O(\bool_6[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bool_6[4]_i_2 
       (.I0(RESET_IBUF),
        .I1(cnt_5[0]),
        .I2(cnt_5[1]),
        .I3(cnt_5[2]),
        .O(\bool_6[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bool_6[4]_i_3 
       (.I0(bool_6[2]),
        .I1(\bool_6[4]_i_6_n_0 ),
        .I2(VALID_i_3_n_0),
        .I3(bool_6[4]),
        .I4(bool_6[3]),
        .I5(\bool_6[3]_i_2_n_0 ),
        .O(\bool_6[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \bool_6[4]_i_4 
       (.I0(lot_OBUF[3]),
        .I1(lot_OBUF[1]),
        .I2(lot_OBUF[2]),
        .I3(bool_6[2]),
        .I4(bool_6[0]),
        .I5(bool_6[1]),
        .O(\bool_6[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bool_6[4]_i_5 
       (.I0(bool_6[4]),
        .I1(lot_OBUF[4]),
        .I2(lot_OBUF[0]),
        .I3(cnt_5[2]),
        .I4(\bool_6[4]_i_6_n_0 ),
        .O(\bool_6[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bool_6[4]_i_6 
       (.I0(cnt_5[1]),
        .I1(cnt_5[0]),
        .I2(RESET_IBUF),
        .O(\bool_6[4]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bool_6_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bool_6[0]_i_1_n_0 ),
        .Q(bool_6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bool_6_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bool_6[1]_i_1_n_0 ),
        .Q(bool_6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bool_6_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bool_6[2]_i_1_n_0 ),
        .Q(bool_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bool_6_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bool_6[3]_i_1_n_0 ),
        .Q(bool_6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bool_6_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bool_6[4]_i_1_n_0 ),
        .Q(bool_6[4]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF00D)) 
    \cnt_5[0]_i_1 
       (.I0(cnt_5[2]),
        .I1(cnt_5[1]),
        .I2(cnt_5[0]),
        .I3(RESET_IBUF),
        .O(\cnt_5[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \cnt_5[1]_i_1 
       (.I0(RESET_IBUF),
        .I1(cnt_5[0]),
        .I2(cnt_5[1]),
        .O(\cnt_5[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9AA8)) 
    \cnt_5[2]_i_1 
       (.I0(cnt_5[2]),
        .I1(RESET_IBUF),
        .I2(cnt_5[0]),
        .I3(cnt_5[1]),
        .O(\cnt_5[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_5_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_5[0]_i_1_n_0 ),
        .Q(cnt_5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_5_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_5[1]_i_1_n_0 ),
        .Q(cnt_5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_5_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_5[2]_i_1_n_0 ),
        .Q(cnt_5[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \letter[4]_i_1 
       (.I0(RESET_IBUF),
        .O(\letter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \letter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\letter[4]_i_1_n_0 ),
        .D(DATA_IBUF),
        .Q(lot_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \letter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\letter[4]_i_1_n_0 ),
        .D(lot_OBUF[0]),
        .Q(lot_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \letter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\letter[4]_i_1_n_0 ),
        .D(lot_OBUF[1]),
        .Q(lot_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \letter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\letter[4]_i_1_n_0 ),
        .D(lot_OBUF[2]),
        .Q(lot_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \letter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\letter[4]_i_1_n_0 ),
        .D(lot_OBUF[3]),
        .Q(lot_OBUF[4]),
        .R(1'b0));
  OBUF \lot_OBUF[0]_inst 
       (.I(lot_OBUF[0]),
        .O(lot[0]));
  OBUF \lot_OBUF[1]_inst 
       (.I(lot_OBUF[1]),
        .O(lot[1]));
  OBUF \lot_OBUF[2]_inst 
       (.I(lot_OBUF[2]),
        .O(lot[2]));
  OBUF \lot_OBUF[3]_inst 
       (.I(lot_OBUF[3]),
        .O(lot[3]));
  OBUF \lot_OBUF[4]_inst 
       (.I(lot_OBUF[4]),
        .O(lot[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

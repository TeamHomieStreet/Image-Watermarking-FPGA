////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Amul.v
// /___/   /\     Timestamp: Sun Apr 30 23:51:48 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Amul.ngc /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Amul.v 
// Device	: 3s500efg320-5
// Input file	: /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Amul.ngc
// Output file	: /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Amul.v
// # of Modules	: 1
// Design Name	: Amul
// Xilinx        : /opt/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Amul (
  clk, p, a
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [7 : 0] p;
  input [7 : 0] a;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig0000000a ;
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000002f  (
    .I0(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000017 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000002e  (
    .I0(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig00000019 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000002d  (
    .I0(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig0000001b )
  );
  RAM16X1S #(
    .INIT ( 16'h07C0 ))
  \blk00000001/blk0000002c  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig0000000e )
  );
  RAM16X1S #(
    .INIT ( 16'hC738 ))
  \blk00000001/blk0000002b  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig0000000d )
  );
  RAM16X1S #(
    .INIT ( 16'hF800 ))
  \blk00000001/blk0000002a  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig0000000f )
  );
  RAM16X1S #(
    .INIT ( 16'hB4B4 ))
  \blk00000001/blk00000029  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig0000000c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000f ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig00000013 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000e ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig00000012 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000d ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig00000011 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000c ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig00000010 )
  );
  RAM16X1S #(
    .INIT ( 16'h07C0 ))
  \blk00000001/blk00000024  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000028 )
  );
  RAM16X1S #(
    .INIT ( 16'hC738 ))
  \blk00000001/blk00000023  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000027 )
  );
  RAM16X1S #(
    .INIT ( 16'hF800 ))
  \blk00000001/blk00000022  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000029 )
  );
  RAM16X1S #(
    .INIT ( 16'h6666 ))
  \blk00000001/blk00000021  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000025 )
  );
  RAM16X1S #(
    .INIT ( 16'hAAAA ))
  \blk00000001/blk00000020  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000024 )
  );
  RAM16X1S #(
    .INIT ( 16'hB4B4 ))
  \blk00000001/blk0000001f  (
    .A0(a[4]),
    .A1(a[5]),
    .A2(a[6]),
    .A3(a[7]),
    .D(\blk00000001/sig0000000a ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000000a ),
    .O(\blk00000001/sig00000026 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000029 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000028 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000027 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000026 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000025 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000024 ),
    .R(\blk00000001/sig0000000a ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .D(\blk00000001/sig00000010 ),
    .Q(p[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .D(\blk00000001/sig00000011 ),
    .Q(p[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .D(\blk00000001/sig0000001e ),
    .Q(p[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .D(\blk00000001/sig0000001f ),
    .Q(p[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .D(\blk00000001/sig00000020 ),
    .Q(p[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .D(\blk00000001/sig00000021 ),
    .Q(p[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .D(\blk00000001/sig00000022 ),
    .Q(p[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .D(\blk00000001/sig00000023 ),
    .Q(p[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000010  (
    .I0(\blk00000001/sig00000012 ),
    .I1(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig0000001c )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000000a ),
    .DI(\blk00000001/sig00000012 ),
    .S(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000014 )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000000a ),
    .LI(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig0000001e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000d  (
    .I0(\blk00000001/sig00000013 ),
    .I1(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig0000001d )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000014 ),
    .DI(\blk00000001/sig00000013 ),
    .S(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000015 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000014 ),
    .LI(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig0000001f )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000015 ),
    .DI(\blk00000001/sig0000000a ),
    .S(\blk00000001/sig00000017 ),
    .O(\blk00000001/sig00000016 )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000015 ),
    .LI(\blk00000001/sig00000017 ),
    .O(\blk00000001/sig00000020 )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000016 ),
    .DI(\blk00000001/sig0000000a ),
    .S(\blk00000001/sig00000019 ),
    .O(\blk00000001/sig00000018 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000016 ),
    .LI(\blk00000001/sig00000019 ),
    .O(\blk00000001/sig00000021 )
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000018 ),
    .DI(\blk00000001/sig0000000a ),
    .S(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig0000001a )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000018 ),
    .LI(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig00000022 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000001a ),
    .LI(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000023 )
  );
  VCC   \blk00000001/blk00000003  (
    .P(\blk00000001/sig0000000b )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000000a )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

// synthesis translate_on

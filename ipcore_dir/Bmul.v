////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Bmul.v
// /___/   /\     Timestamp: Mon May  1 00:08:59 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Bmul.ngc /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Bmul.v 
// Device	: 3s500efg320-5
// Input file	: /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Bmul.ngc
// Output file	: /home/rohith/Image-Watermarking/ipcore_dir/tmp/_cg/Bmul.v
// # of Modules	: 1
// Design Name	: Bmul
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

module Bmul (
p, a
)/* synthesis syn_black_box syn_noprune=1 */;
  output [7 : 0] p;
  input [7 : 0] a;
  
  // synthesis translate_off
  
  wire [7 : 1] NlwRenamedSignal_a;
  assign
    p[6] = NlwRenamedSignal_a[7],
    p[5] = NlwRenamedSignal_a[6],
    p[4] = NlwRenamedSignal_a[5],
    p[3] = NlwRenamedSignal_a[4],
    p[2] = NlwRenamedSignal_a[3],
    p[1] = NlwRenamedSignal_a[2],
    p[0] = NlwRenamedSignal_a[1],
    NlwRenamedSignal_a[7] = a[7],
    NlwRenamedSignal_a[6] = a[6],
    NlwRenamedSignal_a[5] = a[5],
    NlwRenamedSignal_a[4] = a[4],
    NlwRenamedSignal_a[3] = a[3],
    NlwRenamedSignal_a[2] = a[2],
    NlwRenamedSignal_a[1] = a[1];
  GND   \blk00000001/blk00000002  (
    .G(p[7])
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

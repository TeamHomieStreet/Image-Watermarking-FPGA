`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Roorkee 
// Engineers: Rohith Asrk, Nitin Sethi, Sri Vathsa, Shashwat Kumar
// 
// Create Date:    18:38:56 05/01/2017 
// Design Name: 
// Module Name:    FF 
// Project Name: FPGA Implementation of Image Watermarking
// Target Devices:
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module FF(
    input clk,
    input D,
    output reg Q,
    output wire Qbar
);

parameter init = 0;

initial
Q = init;

assign Qbar = ~Q;

always@(posedge clk)
    begin
        Q = D;
    end

endmodule

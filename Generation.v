`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:40 04/08/2017 
// Design Name: 
// Module Name:    Generation 
// Project Name: 
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
module Generation(
	input clk,
	output [1:0] WM_Data
);

parameter key = 8'b01101010;

wire [7:0] Q, Qbar;
wire [7:0] D;

assign WM_Data[1] =  Q[1]^Q[0];
assign WM_Data[0] = (WM_Data[1]==1)? 0 : Q[0];

FF #(key[0]) FF0(clk,D[0],Q[0],Qbar[0]);
FF #(key[1]) FF1(clk,D[1],Q[1],Qbar[1]);
FF #(key[2]) FF2(clk,D[2],Q[2],Qbar[2]);
FF #(key[3]) FF3(clk,D[3],Q[3],Qbar[3]);
FF #(key[4]) FF4(clk,D[4],Q[4],Qbar[4]);
FF #(key[5]) FF5(clk,D[5],Q[5],Qbar[5]);
FF #(key[6]) FF6(clk,D[6],Q[6],Qbar[6]);
FF #(key[7]) FF7(clk,D[7],Q[7],Qbar[7]);

assign D[0]=Q[7]^(~((D[4]|D[5]|D[6]|D[7])|(D[1]|D[2]|D[3])));
assign D[1]=Q[0];
assign D[2]=Q[1]^D[0];
assign D[3]=Q[2]^D[0];
assign D[4]=Q[3]^D[0];
assign D[5]=Q[4];
assign D[6]=Q[5];
assign D[7]=Q[6];

endmodule

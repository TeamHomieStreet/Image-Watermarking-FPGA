`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:17 04/08/2017 
// Design Name: 
// Module Name:    Insertion 
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
module Insertion(
	input [7:0]Data1,
	input [7:0]Data2,
	input [7:0]Data3,
	input [7:0]Data4,
	input [7:0]a1,
	input [7:0]a2,
	input clk,start,
	input [1:0]WM_data,
//	output done,
	output [7:0]WM_IM_Data
);

wire Adder1= Data2+Data4;
wire shiftedAdder1 = Adder1<<1;
wire Adder2= Data3+shiftedAdder1;
wire shiftedAdder2 = Adder2<<1;
wire multiplication2 = shiftedAdder2*(1-a1);//changes
//if(WM_ternaryselect == 2'b1)
//wire multiplication1	 = Data1*a1;
//else if(WM_ternaryselect == 2'b2)
//wire multiplication1 = Data2*a2;

wire multiplication1 = (WM_data == 2'b01)? (Data1*a1) : ((WM_data== 2'b10)? Data2*a2:0);
wire Adder = multiplication1+multiplication2;
assign WM_IM_Data = (WM_data== 2'b00)? Data1:Adder ;
endmodule

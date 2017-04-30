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
	input clk,
	input start,
	input [7:0]Data1,
	input [7:0]Data2,
	input [7:0]Data3,
	input [7:0]Data4,
	input [7:0]a1,
	input [7:0]a2,
	input [1:0]WM_data,
	output [7:0]WM_IM_Data
);

wire [8:0] Adder1, Adder2, Adder;
wire [7:0] shiftedAdder1 = Adder1[8:1];
wire [7:0] shiftedAdder2 = Adder2[8:1];
wire [7:0] m1, m11, m2, m12;
reg [7:0] temp;

Amul mul2(.a(shiftedAdder2), .clk(clk), .p(m2));

Amul mul1(.a(Data1), .clk(clk), .p(m11));
Bmul mul3(.a(Data2), .p(m12));

assign m1 = (WM_data == 2'b01)? m11 : m12;

adder8 A1(.a(Data1), .b(Data2), .add(1), .s(Adder1));
adder8 A2(.a(Data3), .b(shiftedAdder1), .add(1), .s(Adder2));
adder8 A3(.a(m1), .b(m2), .add(1), .s(Adder));

assign WM_IM_Data = (WM_data== 2'b00)? Data1 : Adder ;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:46 04/08/2017 
// Design Name: 
// Module Name:    top 
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
module top(key,start,clk,a1,a2,IM_data_in,Col_WM_addr,Col_IM_addr,Row_IM_addr,Row_WM_addr,WM_data,Ready,Busy,IM_RD_WRn,WM_RD_WRn,IM_data_out
    );
input key[7:0];
input start;
input [7:0]a1;
input [7:0]a2;
input [7:0]IM_data_in;
output [7:0]Col_IM_addr;
output [7:0]Col_WM_addr;
output [7:0]Row_WM_addr;
output [7:0]Row_IM_addr;
output [1:0]WM_data;
output ready,busy,IM_RD_WRn, WM_RD_WRn;
output [7:0]IM_data_out;


endmodule

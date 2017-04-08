`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:03 04/08/2017 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(done,ready,busy,IM_RD_WRn,WM_RD_WRn,row_signal,col_signal,data_array_signal,Reg_WM_data,Reg_IM_data_out);
input done;
output ready,busy;
assign ready=done;
assign busy=~done;
endmodule

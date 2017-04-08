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
module FF(clk,D,Q,Qbar);
input clk,D;
output reg Q;
output Qbar;
assign Qbar=!Q;
initial
Q<=0;
always@(posedge clk)
begin
Q<=D;
end
endmodule

module Generation(clk,start,key,WM_select,WM_Data);
input clk,start,WM_select;//dunno why i need WM_select
input [7:0]key;
output [1:0] WM_Data;
wire [7:0]Q;
wire [7:0]Qbar;
reg [7:0]D;
FF0(clk,D[0],Q[0],Qbar[0]);
FF1(clk,D[1],Q[1],Qbar[1]);
FF2(clk,D[2],Q[2],Qbar[2]);
FF3(clk,D[3],Q[3],Qbar[3]);
FF4(clk,D[4],Q[4],Qbar[4]);
FF5(clk,D[5],Q[5],Qbar[5]);
FF6(clk,D[6],Q[6],Qbar[6]);
FF7(clk,D[7],Q[7],Qbar[7]);
XOR(D[2],Q[1],D[0]);
XOR(D[3],Q[2],D[0]);
XOR(D[4],Q[3],D[0]);
OR(B,D[4],D[5],D[6]);
OR(C,D[1],D[2],D[3]);
XOR(A,B,C);
XOR(D[0],Q[7],A);
assign WM_Data[0] = Q[0];
assign WM_Data[1] = (WM_select) ? Q[1]^Q[0]: 1'b0;
endmodule



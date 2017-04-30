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
input clk,start,WM_select;
input [7:0]key;
output reg[1:0] WM_Data;
wire [7:0]Q;
wire [7:0]Qbar;
reg [7:0]D;
wire A,B,C;
FF FF0(clk,D[0],Q[0],Qbar[0]);
FF FF1(clk,D[1],Q[1],Qbar[1]);
FF FF2(clk,D[2],Q[2],Qbar[2]);
FF FF3(clk,D[3],Q[3],Qbar[3]);
FF FF4(clk,D[4],Q[4],Qbar[4]);
FF FF5(clk,D[5],Q[5],Qbar[5]);

initial
begin 
D <= key;
end

wire [7:0] temp = D;

xor X1(temp[2],Q[1],D[0]);
xor X2(temp[3],Q[2],D[0]);
xor X3(temp[4],Q[3],D[0]);
or O1(B,temp[4],temp[5],temp[6]);
or O2(C,temp[1],temp[2],temp[3]);
xor X4(A,B,C);
xor X5(temp[0],Q[7],A);

always @(posedge clk)
begin
WM_Data[0] = Q[0];
WM_Data[1] = (WM_select) ? Q[1]^Q[0]: 1'b0;
end

endmodule

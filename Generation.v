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
output wire Qbar;

parameter init = 0;

initial
Q = init;

assign Qbar = ~Q;

always@(posedge clk)
begin
Q = D;
end
endmodule

module Generation(
	input clk,start,WM_select,
	//input [7:0]key,
	output /*reg*/ [1:0] WM_Data
);

wire [7:0] Q, Qbar;
wire [7:0] D;
assign WM_Data[0] = Q[0];
assign WM_Data[1] = (WM_select) ? Q[1]^Q[0]: 1'b0;
parameter key = 8'b01101010;//subject to change

//wire A,B,C;	

FF #(key[0]) FF0(clk,D[0],Q[0],Qbar[0]);
FF #(key[1]) FF1(clk,D[1],Q[1],Qbar[1]);
FF #(key[2]) FF2(clk,D[2],Q[2],Qbar[2]);
FF #(key[3]) FF3(clk,D[3],Q[3],Qbar[3]);
FF #(key[4]) FF4(clk,D[4],Q[4],Qbar[4]);
FF #(key[5]) FF5(clk,D[5],Q[5],Qbar[5]);
FF #(key[6]) FF6(clk,D[6],Q[6],Qbar[6]);
FF #(key[7]) FF7(clk,D[7],Q[7],Qbar[7]);

//initial
//begin 
//Q=8'b00000000;


/*wire [7:0] temp = D;

xor X1(temp[2],Q[1],D[0]);
xor X2(temp[3],Q[2],D[0]);
xor X3(temp[4],Q[3],D[0]);
or O1(B,temp[4],temp[5],temp[6]);
or O2(C,temp[1],temp[2],temp[3]);
xor X4(A,B,C);
xor X5(temp[0],Q[7],A);
*/ 


assign D[0]=Q[7]^(~((D[4]|D[5]|D[6]|D[7])|(D[1]|D[2]|D[3])));
assign D[1]=Q[0];
assign D[2]=Q[1]^D[0];
assign D[3]=Q[2]^D[0];
assign D[4]=Q[3]^D[0];
assign D[5]=Q[4];
assign D[6]=Q[5];
assign D[7]=Q[6];

//Q[4]=Q[3]^D[0];
//


endmodule

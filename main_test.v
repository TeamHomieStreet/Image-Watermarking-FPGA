`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: IIT Roorkee 
// Engineers: Rohith Asrk, Nitin Sethi, Sri Vathsa, Shashwat Kumar 
//
// Create Date:   12:37:36 05/01/2017
// Design Name:   main
// Module Name:   main_test
// Project Name:  FPGA Implementation of Image Watermarking
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

    // Inputs
    reg clk;

    // Outputs
    wire [7:0] IM_Data_out;
    
    reg [7:0] Data1, Data2, Data3, Data4;

    // Instantiate the Unit Under Test (UUT)
    main uut (
            .clk(clk), 
            .Data1(Data1),
            .Data2(Data2),
            .Data3(Data3),
            .Data4(Data4),
            .IM_Data_out(IM_Data_out)
    );

    initial begin
            // Initialize Inputs
            clk = 0;

            // Wait 100 ns for global reset to finish
            
            #100
            Data1 = 8'b10000000;
            Data2 = 8'b00001000;
            Data3 = 8'b00100000;
            Data4 = 8'b00000010;
            
            #100
            Data1 = 8'b11000000;
            Data2 = 8'b00001100;
            Data3 = 8'b00110000;
            Data4 = 8'b00000011;
            
            #100
            Data1 = 8'b01101010;
            Data2 = 8'b01110010;
            Data3 = 8'b01101011;
            Data4 = 8'b10101010;
            
            // Add stimulus here

    end
    
    always begin
            #5 clk=~clk;
    end	
       
endmodule


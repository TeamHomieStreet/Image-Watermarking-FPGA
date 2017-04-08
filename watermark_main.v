`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    watermark-main
//////////////////////////////////////////////////////////////////////////////////



module modify_pixel(Data2, Data3, Data4, mod_pixel);

// Data1 current pixel
// Data2,Data4 pixels from the next row
// Data3 next pixel in the same row

input [7:0]Data2;
input [7:0]Data3;
input [7:0]Data4;

output [7:0]mod_pixel;

wire Adder1= Data2+Data4;
wire shiftAdder1 = Adder1<<1;
wire Adder2= Data3+shiftAdder1;
assign mod_pixel = Adder2<<1;

//mod_pixel = shiftAdder2;

endmodule

//*******************
// Add clock
// put if in always blocks
//******************

module watermark_main(
    );

//input clk;

//input reg [7:0] a1;
//input reg [7:0] a1;

input [7:0] I[0:2][0:2]; //Input image
input [7:0] zero;

output [1:0] W[0:2][0:2];
output [7:0] In[0:2][0:2];//Modified image
output [7:0] Ix[0:2][0:2];// Watermarked image

assign zero = 8'b00000000;
// Initialising the input image
for (int i=0; i<=2; i++)
  begin
   for (int j=0; j<=2; j++)
      assign I[i][j] = (i+1)*(j+1);
  end

// Initialising the watermark array
assign W[0][0] = 0;
assign W[0][1] = 1;
assign W[0][2] = 0;
assign W[1][0] = 2;
assign W[1][1] = 0;
assign W[1][2] = 0;
assign W[2][0] = 1;
assign W[2][1] = 0;
assign W[2][2] = 2;

// Making the In array
for (int i=0; i<=2; i++)
  begin
    for (int j=0; j<=2; j++)
      begin

        if (i==2)
        begin
          if(j!=2)
          begin
          modify_pixel(zero, I[i][j+1], zero, In[i][j]);
          end
          else
          begin
            modify_pixel(zero, I[i][0], zero, In[i][j]);
          end
        end

        else
          if (j==2)
            begin
              modify_pixel(I[i+1][j], I[i][0], I[i+1][0], In[i][j]);
            end
          else
            begin
              modify_pixel(I[i+1][j], I[i][j+1], I[i+1][j+1], In[i][j]);
            end
        end
    end
  end


endmodule

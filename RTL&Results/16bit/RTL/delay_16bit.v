//------------------------------------------------------------------------------------------
//Design        : Digit-serial systolic multiplier for GF
//
//File Name     : incell.v
//
//Author        : Liu Cong
//------------------------------------------------------------------------------------------
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_16bit(d,clk,rst,q);
  input [1:16] d;
  input rst, clk;
  output [1:16] q;
  reg [1:16] q;
  always @(posedge clk or negedge rst)
      begin
        if(!rst) 
           begin
             q <= 16'b0;
           end
        else 
           begin
             q <= d;
           end
      end
endmodule
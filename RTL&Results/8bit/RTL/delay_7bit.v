
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_7bit(d,clk,rst,q);
  input [1:7] d;
  input rst, clk;
  output [1:7] q;
  reg [1:7] q;
  always @(posedge clk or negedge rst)
      begin
        if(!rst) 
           begin
             q <= 7'b0;
           end
        else 
           begin
             q <= d;
           end
      end
endmodule
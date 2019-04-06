
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_8bit(d,clk,rst,q);
  input [1:8] d;
  input rst, clk;
  output [1:8] q;
  reg [1:8] q;
  always @(posedge clk or negedge rst)
      begin
        if(!rst) 
           begin
             q <= 8'b0;
           end
        else 
           begin
             q <= d;
           end
      end
endmodule
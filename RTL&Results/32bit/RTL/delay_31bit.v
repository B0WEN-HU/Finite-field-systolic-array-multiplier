
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_31bit(d,clk,rst,q);
  input [1:31] d;
  input rst, clk;
  output [1:31] q;
  reg [1:31] q;
  always @(posedge clk or negedge rst)
      begin
        if(!rst) 
           begin
             q <= 31'b0;
           end
        else 
           begin
             q <= d;
           end
      end
endmodule
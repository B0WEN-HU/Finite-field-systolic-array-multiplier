
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_32bit(d,clk,rst,q);
  input [1:32] d;
  input rst, clk;
  output [1:32] q;
  reg [1:32] q;
  always @(posedge clk or negedge rst)
      begin
        if(!rst) 
           begin
             q <= 32'b0;
           end
        else 
           begin
             q <= d;
           end
      end
endmodule
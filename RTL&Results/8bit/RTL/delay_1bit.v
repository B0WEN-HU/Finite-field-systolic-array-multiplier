
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module delay_1bit(d,clk,rst,q);
  input d, clk, rst;
  output q;
  reg q;
  always @(posedge clk or negedge rst) 
     begin
        if(!rst) 
           begin
             q <= 1'b0;
           end
        else 
           begin
             q <= d;
           end
        end
endmodule     
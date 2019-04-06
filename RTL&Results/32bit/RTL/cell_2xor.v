
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module cell_2xor(y,x1,x2,x3,x4);
  input x1,x2,x3,x4;
  output y;
  wire y1,y2;
  and (y1,x1,x2);
  and (y2,x3,x4);
  xor(y,y1,y2);
endmodule
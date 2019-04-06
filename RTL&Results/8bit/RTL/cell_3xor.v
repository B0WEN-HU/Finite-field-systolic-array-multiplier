
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module cell_3xor(y,x1,x2,x3,x4,x5);
  input x1,x2,x3,x4,x5;
  output y;
  and (y1,x1,x2);
  and (y2,x3,x4);
  xor(y,y1,y2,x5);
endmodule
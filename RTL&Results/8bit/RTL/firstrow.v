
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module firstrow(
  ai,gi,
  pi,piv,
  bi,ti,
  po,pov);
  
  input bi,ti;
  input  [8:1] ai,gi;
  input  [1:7] pi;
  input  [1:8] piv;
  
  output pov;
  output [1:7] po;
  
  cell_4xor pe1(pov,bi,ai[8],ti,gi[8],pi[1],piv[1]),
            pe2(po[1],bi,ai[7],ti,gi[7],pi[2],piv[2]),
            pe3(po[2],bi,ai[6],ti,gi[6],pi[3],piv[3]),
            pe4(po[3],bi,ai[5],ti,gi[5],pi[4],piv[4]),
            pe5(po[4],bi,ai[4],ti,gi[4],pi[5],piv[5]),
            pe6(po[5],bi,ai[3],ti,gi[3],pi[6],piv[6]),
            pe7(po[6],bi,ai[2],ti,gi[2],pi[7],piv[7]);
  cell_3xor pe8(po[7],bi,ai[1],ti,gi[1],piv[8]);
  
endmodule
  
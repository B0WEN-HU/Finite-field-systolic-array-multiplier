//------------------------------------------------------------------------------------------
//Design        : Digit-serial systolic multiplier for GF
//
//File Name     : incell.v
//
//Author        : Liu Cong
//------------------------------------------------------------------------------------------
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module firstrow(
  ai,gi,
  pi,piv,
  bi,ti,
  po,pov);
  
  input bi,ti;
  input  [16:1] ai,gi;
  input  [1:15] pi;
  input  [1:16] piv;
  
  output pov;
  output [1:15] po;
  
  cell_4xor pe1(pov,bi,ai[16],ti,gi[16],pi[1],piv[1]),
            pe2(po[1],bi,ai[15],ti,gi[15],pi[2],piv[2]),
            pe3(po[2],bi,ai[14],ti,gi[14],pi[3],piv[3]),
            pe4(po[3],bi,ai[13],ti,gi[13],pi[4],piv[4]),
            pe5(po[4],bi,ai[12],ti,gi[12],pi[5],piv[5]),
            pe6(po[5],bi,ai[11],ti,gi[11],pi[6],piv[6]),
            pe7(po[6],bi,ai[10],ti,gi[10],pi[7],piv[7]),
            pe8(po[7],bi,ai[9],ti,gi[9],pi[8],piv[8]),
            pe9(po[8],bi,ai[8],ti,gi[8],pi[9],piv[9]),
            pe10(po[9],bi,ai[7],ti,gi[7],pi[10],piv[10]),
            pe11(po[10],bi,ai[6],ti,gi[6],pi[11],piv[11]),
            pe12(po[11],bi,ai[5],ti,gi[5],pi[12],piv[12]),
            pe13(po[12],bi,ai[4],ti,gi[4],pi[13],piv[13]),
            pe14(po[13],bi,ai[3],ti,gi[3],pi[14],piv[14]),
            pe15(po[14],bi,ai[2],ti,gi[2],pi[15],piv[15]);
  cell_3xor pe16(po[15],bi,ai[1],ti,gi[1],piv[16]);
  
endmodule
  
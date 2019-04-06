
`timescale 1ns/10ps

module generalrow(
  ai,gi,
  pi,
  bi,ti,
  po,pov);
  
  input bi,ti;
  input  [16:1] ai,gi;
  input  [1:15] pi;
  
  output pov;
  output [1:15] po;
  
  cell_3xor pe1(pov,bi,ai[16],ti,gi[16],pi[1]),
            pe2(po[1],bi,ai[15],ti,gi[15],pi[2]),
            pe3(po[2],bi,ai[14],ti,gi[14],pi[3]),
            pe4(po[3],bi,ai[13],ti,gi[13],pi[4]),
            pe5(po[4],bi,ai[12],ti,gi[12],pi[5]),
            pe6(po[5],bi,ai[11],ti,gi[11],pi[6]),
            pe7(po[6],bi,ai[10],ti,gi[10],pi[7]),
            pe8(po[7],bi,ai[9],ti,gi[9],pi[8]),
            pe9(po[8],bi,ai[8],ti,gi[8],pi[9]),
            pe10(po[9],bi,ai[7],ti,gi[7],pi[10]),
            pe11(po[10],bi,ai[6],ti,gi[6],pi[11]),
            pe12(po[11],bi,ai[5],ti,gi[5],pi[12]),
            pe13(po[12],bi,ai[4],ti,gi[4],pi[13]),
            pe14(po[13],bi,ai[3],ti,gi[3],pi[14]),
            pe15(po[14],bi,ai[2],ti,gi[2],pi[15]);
  cell_2xor pe16(po[15],bi,ai[1],ti,gi[1]);
  
endmodule
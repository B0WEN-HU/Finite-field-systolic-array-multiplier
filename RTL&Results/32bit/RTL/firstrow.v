
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module firstrow(
  ai,gi,
  pi,piv,
  bi,ti,
  po,pov);
  
  
  input bi,ti;
  input  [32:1] ai,gi;
  input  [1:31] pi;
  input  [1:32] piv;
  
  output pov;
  output [1:31] po;
  
  cell_4xor pe1(pov,bi,ai[32],ti,gi[32],pi[1],piv[1]),
            pe2(po[1],bi,ai[31],ti,gi[31],pi[2],piv[2]),
			pe3(po[2],bi,ai[30],ti,gi[30],pi[3],piv[3]),
			pe4(po[3],bi,ai[29],ti,gi[29],pi[4],piv[4]),
			pe5(po[4],bi,ai[28],ti,gi[28],pi[5],piv[5]),
			pe6(po[5],bi,ai[27],ti,gi[27],pi[6],piv[6]),
			pe7(po[6],bi,ai[26],ti,gi[26],pi[7],piv[7]),
			pe8(po[7],bi,ai[25],ti,gi[25],pi[8],piv[8]),
			pe9(po[8],bi,ai[24],ti,gi[24],pi[9],piv[9]),
			pe10(po[9],bi,ai[23],ti,gi[23],pi[10],piv[10]),
			pe11(po[10],bi,ai[22],ti,gi[22],pi[11],piv[11]),
			pe12(po[11],bi,ai[21],ti,gi[21],pi[12],piv[12]),
			pe13(po[12],bi,ai[20],ti,gi[20],pi[13],piv[13]),
			pe14(po[13],bi,ai[19],ti,gi[19],pi[14],piv[14]),
			pe15(po[14],bi,ai[18],ti,gi[18],pi[15],piv[15]),
			pe16(po[15],bi,ai[17],ti,gi[17],pi[16],piv[16]),
			pe17(po[16],bi,ai[16],ti,gi[16],pi[17],piv[17]),
			pe18(po[17],bi,ai[15],ti,gi[15],pi[18],piv[18]),
			pe19(po[18],bi,ai[14],ti,gi[14],pi[19],piv[19]),
			pe20(po[19],bi,ai[13],ti,gi[13],pi[20],piv[20]),
			pe21(po[20],bi,ai[12],ti,gi[12],pi[21],piv[21]),
			pe22(po[21],bi,ai[11],ti,gi[11],pi[22],piv[22]),
			pe23(po[22],bi,ai[10],ti,gi[10],pi[23],piv[23]),
			pe24(po[23],bi,ai[9],ti,gi[9],pi[24],piv[24]),
			pe25(po[24],bi,ai[8],ti,gi[8],pi[25],piv[25]),
			pe26(po[25],bi,ai[7],ti,gi[7],pi[26],piv[26]),
			pe27(po[26],bi,ai[6],ti,gi[6],pi[27],piv[27]),
			pe28(po[27],bi,ai[5],ti,gi[5],pi[28],piv[28]),
			pe29(po[28],bi,ai[4],ti,gi[4],pi[29],piv[29]),
			pe30(po[29],bi,ai[3],ti,gi[3],pi[30],piv[30]),
			pe31(po[30],bi,ai[2],ti,gi[2],pi[31],piv[31]);
  cell_3xor pe32(po[31],bi,ai[1],ti,gi[1],piv[32]);
			
            
  
endmodule
  
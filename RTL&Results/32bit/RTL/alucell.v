
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module alucell(
  ai,gi,bi,
  pih,piv,pi,
  ti,
  ao,go,
  poh,pov,po);
  
  input  [32:1] ai,gi,bi;
  input  [1:32] ti;
  
  input  pi;
  input  [1:31] pih,piv;
  
  output [32:1] ao,go;
  
  output po;
  output [1:31] poh,pov;
  
  wire [1:31] po1,po2,po3,po4,po5,po6,po7,po8,po9,po10,po11,po12,po13,po14,po15,po16,po17,po18,po19,po20,po21,po22,po23,po24,po25,po26,po27,po28,po29,po30,po31;

  firstrow linepe1(ai,gi,pih,{piv,pi},bi[32],ti[1],po1,pov[1]);
  generalrow linepe2(ai,gi,po1,bi[31],ti[2],po2,pov[2]);
  generalrow linepe3(ai,gi,po2,bi[30],ti[3],po3,pov[3]);
  generalrow linepe4(ai,gi,po3,bi[29],ti[4],po4,pov[4]);
  generalrow linepe5(ai,gi,po4,bi[28],ti[5],po5,pov[5]);
  generalrow linepe6(ai,gi,po5,bi[27],ti[6],po6,pov[6]);
  generalrow linepe7(ai,gi,po6,bi[26],ti[7],po7,pov[7]);
  generalrow linepe8(ai,gi,po7,bi[25],ti[8],po8,pov[8]);
  generalrow linepe9(ai,gi,po8,bi[24],ti[9],po9,pov[9]);
  generalrow linepe10(ai,gi,po9,bi[23],ti[10],po10,pov[10]);
  generalrow linepe11(ai,gi,po10,bi[22],ti[11],po11,pov[11]);
  generalrow linepe12(ai,gi,po11,bi[21],ti[12],po12,pov[12]);
  generalrow linepe13(ai,gi,po12,bi[20],ti[13],po13,pov[13]);
  generalrow linepe14(ai,gi,po13,bi[19],ti[14],po14,pov[14]);
  generalrow linepe15(ai,gi,po14,bi[18],ti[15],po15,pov[15]);
  generalrow linepe16(ai,gi,po15,bi[17],ti[16],po16,pov[16]);
  generalrow linepe17(ai,gi,po16,bi[16],ti[17],po17,pov[17]);
  generalrow linepe18(ai,gi,po17,bi[15],ti[18],po18,pov[18]);
  generalrow linepe19(ai,gi,po18,bi[14],ti[19],po19,pov[19]);
  generalrow linepe20(ai,gi,po19,bi[13],ti[20],po20,pov[20]);
  generalrow linepe21(ai,gi,po20,bi[12],ti[21],po21,pov[21]);
  generalrow linepe22(ai,gi,po21,bi[11],ti[22],po22,pov[22]);
  generalrow linepe23(ai,gi,po22,bi[10],ti[23],po23,pov[23]);
  generalrow linepe24(ai,gi,po23,bi[9],ti[24],po24,pov[24]);
  generalrow linepe25(ai,gi,po24,bi[8],ti[25],po25,pov[25]);
  generalrow linepe26(ai,gi,po25,bi[7],ti[26],po26,pov[26]);
  generalrow linepe27(ai,gi,po26,bi[6],ti[27],po27,pov[27]);
  generalrow linepe28(ai,gi,po27,bi[5],ti[28],po28,pov[28]);
  generalrow linepe29(ai,gi,po28,bi[4],ti[29],po29,pov[29]);
  generalrow linepe30(ai,gi,po29,bi[3],ti[30],po30,pov[30]);
  generalrow linepe31(ai,gi,po30,bi[2],ti[31],po31,pov[31]);
  generalrow linepe32(ai,gi,po31,bi[1],ti[32],poh,po);
  
  assign ao=ai;
  assign go=gi;
     
endmodule
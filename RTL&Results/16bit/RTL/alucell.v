
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module alucell(
  ai,gi,bi,
  pih,piv,pi,
  ti,
  ao,go,
  poh,pov,po);
  
  input  [16:1] ai,gi,bi;
  input  [1:16] ti;
  
  input  pi;
  input  [1:15] pih,piv;
  
  output [16:1] ao,go;
  
  output po;
  output [1:15] poh,pov;
  
  wire [1:15] po1,po2,po3,po4,po5,po6,po7,po8,po9,po10,po11,po12,po13,po14,po15;

  firstrow linepe1(ai,gi,pih,{piv,pi},bi[16],ti[1],po1,pov[1]);
  generalrow linepe2(ai,gi,po1,bi[15],ti[2],po2,pov[2]);
  generalrow linepe3(ai,gi,po2,bi[14],ti[3],po3,pov[3]);
  generalrow linepe4(ai,gi,po3,bi[13],ti[4],po4,pov[4]);
  generalrow linepe5(ai,gi,po4,bi[12],ti[5],po5,pov[5]);
  generalrow linepe6(ai,gi,po5,bi[11],ti[6],po6,pov[6]);
  generalrow linepe7(ai,gi,po6,bi[10],ti[7],po7,pov[7]);
  generalrow linepe8(ai,gi,po7,bi[9],ti[8],po8,pov[8]);
  generalrow linepe9(ai,gi,po8,bi[8],ti[9],po9,pov[9]);
  generalrow linepe10(ai,gi,po9,bi[7],ti[10],po10,pov[10]);
  generalrow linepe11(ai,gi,po10,bi[6],ti[11],po11,pov[11]);
  generalrow linepe12(ai,gi,po11,bi[5],ti[12],po12,pov[12]);
  generalrow linepe13(ai,gi,po12,bi[4],ti[13],po13,pov[13]);
  generalrow linepe14(ai,gi,po13,bi[3],ti[14],po14,pov[14]);
  generalrow linepe15(ai,gi,po14,bi[2],ti[15],po15,pov[15]);
  generalrow linepe16(ai,gi,po15,bi[1],ti[16],poh,po);
  
  assign ao=ai;
  assign go=gi;
     
endmodule
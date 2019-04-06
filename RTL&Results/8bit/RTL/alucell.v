
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module alucell(
  ai,gi,bi,
  pih,piv,pi,
  ti,
  ao,go,
  poh,pov,po);
  
  input  [8:1] ai,gi,bi;
  input  [1:8] ti;
  
  input  pi;
  input  [1:7] pih,piv;
  
  output [8:1] ao,go;
  
  output po;
  output [1:7] poh,pov;
  
  wire [1:7] po1,po2,po3,po4,po5,po6,po7;

  firstrow pe1(ai,gi,pih,{piv,pi},bi[8],ti[1],po1,pov[1]);
  generalrow pe2(ai,gi,po1,bi[7],ti[2],po2,pov[2]);
  generalrow pe3(ai,gi,po2,bi[6],ti[3],po3,pov[3]);
  generalrow pe4(ai,gi,po3,bi[5],ti[4],po4,pov[4]);
  generalrow pe5(ai,gi,po4,bi[4],ti[5],po5,pov[5]);
  generalrow pe6(ai,gi,po5,bi[3],ti[6],po6,pov[6]);
  generalrow pe7(ai,gi,po6,bi[2],ti[7],po7,pov[7]);
  generalrow pe8(ai,gi,po7,bi[1],ti[8],poh,po);
  
  assign ao=ai;
  assign go=gi;
     
endmodule
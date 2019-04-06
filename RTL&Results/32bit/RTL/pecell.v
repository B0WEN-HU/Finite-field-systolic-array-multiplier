
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module pecell(
  clk,ctr,rst,
  ai,gi,
  pih,piv,pi,
  bi,
  ao,go,
  bo,
  poh,pov,po,
  ctro);
  
  input clk,ctr,rst,pi;
  input [32:1] ai,gi,bi;
  input [1:31] pih,piv;
  
  output [32:1] ao,go,bo;
  output po,ctro;
  output [1:31] poh,pov;
  
  wire [32:1] aq,gq,bq,ao,go,bo,bqt,aot,got;
  wire pq,ctrq,ti_1,pii;

  wire [1:31] pvq,phq,ti_7t,poht,ti_7,pivv;
  
  delay_32bit pe1(ai,clk,rst,aq);
  delay_32bit pe2(gi,clk,rst,gq);
  delay_32bit pe3(bi,clk,rst,bo);
  
  delay_1bit pe4(pi,clk,rst,pq);
  delay_31bit pe5(piv,clk,rst,pvq);
  delay_31bit pe6(pih,clk,rst,phq);
  delay_1bit pe7(ctr,clk,rst,ctrq);
  
  delay_1bit pe8(ctrq,clk,rst,ctro);
  
  
  and (pii,pq,ctrq);
  assign pivv=pvq & {31{ctrq}};


  
  assign bqt=ctrq?bq:bo;
  delay_32bit pe12(bqt,clk,rst,bq);

  assign ti_1t=ctrq?ti_1:pq;
  delay_1bit pe13(ti_1t,clk,rst,ti_1);

  assign ti_7=ctro?ti_7t:pov;
  delay_31bit pe14(ti_7,clk,rst,ti_7t);
  
  alucell alucell(aq,gq,bq,phq,pivv,pii,{ti_1,ti_7},aot,got,poht,pov,po);//{piv1,piv2,piv3,piv4,piv5,piv6,piv7}
  
  delay_32bit pe15(aot,clk,rst,ao);
  delay_32bit pe16(got,clk,rst,go);
  delay_31bit pe17(poht,clk,rst,poh);
  
endmodule    
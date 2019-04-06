
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
  input [8:1] ai,gi,bi;
  input [1:7] pih,piv;
  
  output [8:1] ao,go,bo;
  output po,ctro;
  output [1:7] poh,pov;
  
  wire [8:1] aq,gq,bq,ao,go,bo,bqt,aot,got;
  wire pq,ctrq,ti_1;
  wire [1:7] pvq,phq,ti_7t,poht,ti_7;
  
  delay_8bit delaycell1(ai,clk,rst,aq);
  delay_8bit delaycell2(gi,clk,rst,gq);
  delay_8bit delaycell3(bi,clk,rst,bo);
  
  delay_1bit delaycell4(pi,clk,rst,pq);
  delay_7bit delaycell5(piv,clk,rst,pvq);
  delay_7bit delaycell6(pih,clk,rst,phq);
  delay_1bit delaycell7(ctr,clk,rst,ctrq);
  
  delay_1bit delaycell8(ctrq,clk,rst,ctro);
  

  
  and (pii,pq,ctrq);
  and (piv1,pvq[1],ctrq);
  and (piv2,pvq[2],ctrq);
  and (piv3,pvq[3],ctrq);
  and (piv4,pvq[4],ctrq);
  and (piv5,pvq[5],ctrq);
  and (piv6,pvq[6],ctrq);
  and (piv7,pvq[7],ctrq);
  

  assign bqt=ctrq?bq:bo;
  delay_8bit delaycell19(bqt,clk,rst,bq);
  

  
  assign ti_1t=ctrq?ti_1:pq;   
  delay_1bit delaycell20(ti_1t,clk,rst,ti_1);
  
  
  assign ti_7=ctro?ti_7t:pov;
  delay_7bit delaycell21(ti_7,clk,rst,ti_7t);
  
  alucell alucell1(aq,gq,bq,phq,{piv1,piv2,piv3,piv4,piv5,piv6,piv7},pii,{ti_1,ti_7},aot,got,poht,pov,po);
  
  delay_8bit delaycell22(aot,clk,rst,ao);
  delay_8bit delaycell23(got,clk,rst,go);
  delay_7bit delaycell24(poht,clk,rst,poh);
  
endmodule    
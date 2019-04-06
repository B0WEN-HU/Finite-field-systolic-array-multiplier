
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module topcell(
  clk,ctr,rst,
  ai,gi,
  bi,
  po);
   
  input clk,ctr,rst;
  input [32:1] ai,gi,bi;
  
  output [1:32] po;
  
  
  wire [32:1] ao1,ao2,ao3,ao4,ao5,ao6;
  wire [32:1] bo1,bo2,bo3,bo4,bo5,bo6;
  wire [32:1] go1,go2,go3,go4,go5,go6;
  wire [1:31] pov1,pov2,pov3,pov4,pov5,pov6;
  wire [1:31] poh1,poh2,poh3,poh4,poh5,poh6;
  wire [1:31] povv;
    
  pecell pe1(clk,ctr,rst,ai,gi,31'b0,31'b0,1'b0,bi,ao1,go1,bo1,poh1,pov1,po1,ctro1);
  pecell pe2(clk,ctro1,rst,ao1,go1,poh1,pov1,po1,bo1,ao2,go2,bo2,poh2,pov2,po2,ctro2);
  pecell pe3(clk,ctro2,rst,ao2,go2,poh2,pov2,po2,bo2,ao3,go3,bo3,poh3,pov3,po3,ctro3);
  pecell pe4(clk,ctro3,rst,ao3,go3,poh3,pov3,po3,bo3,ao4,go4,bo4,poh4,pov4,po4,ctro4);
  pecell pe5(clk,ctro4,rst,ao4,go4,poh4,pov4,po4,bo4,ao5,go5,bo5,poh5,pov5,po5,ctro5);
  pecell pe6(clk,ctro5,rst,ao5,go5,poh5,pov5,po5,bo5,ao6,go6,bo6,poh6,pov6,po6,ctro6);
  
  delay_1bit pe22(po6,clk,rst,po[1]);
  

  assign povv=pov6 & {31{ctro6}};
  assign po[2:32]=poh6 ^ povv; 
  

endmodule
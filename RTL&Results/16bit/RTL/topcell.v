
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module topcell(
  clk,ctr,rst,
  ai,gi,
  bi,
  po);
   
  input clk,ctr,rst;
  input [16:1] ai,gi,bi;
  
  output [1:16] po;
  
  
  wire [16:1] ao1,ao2,ao3,ao4,ao5,ao6,ao7,ao8,ao9,ao10,ao11;
  wire [16:1] bo1,bo2,bo3,bo4,bo5,bo6,bo7,bo8,bo9,bo10,bo11;
  wire [16:1] go1,go2,go3,go4,go5,go6,go7,go8,go9,go10,go11;
  wire [1:15] pov1,pov2,pov3,pov4,pov5,pov6,pov7,pov8,pov9,pov10,pov11;
  wire [1:15] poh1,poh2,poh3,poh4,poh5,poh6,poh7,poh8,poh9,poh10,poh11;
  wire [1:15] povv;
    
 pecell pe1(clk,ctr,rst,ai,gi,15'b0,15'b0,1'b0,bi,ao1,go1,bo1,poh1,pov1,po1,ctro1);
 pecell pe2(clk,ctro1,rst,ao1,go1,poh1,pov1,po1,bo1,ao2,go2,bo2,poh2,pov2,po2,ctro2);
 pecell pe3(clk,ctro2,rst,ao2,go2,poh2,pov2,po2,bo2,ao3,go3,bo3,poh3,pov3,po3,ctro3);
 pecell pe4(clk,ctro3,rst,ao3,go3,poh3,pov3,po3,bo3,ao4,go4,bo4,poh4,pov4,po4,ctro4);
 pecell pe5(clk,ctro4,rst,ao4,go4,poh4,pov4,po4,bo4,ao5,go5,bo5,poh5,pov5,po5,ctro5);
 pecell pe6(clk,ctro5,rst,ao5,go5,poh5,pov5,po5,bo5,ao6,go6,bo6,poh6,pov6,po6,ctro6);
 pecell pe7(clk,ctro6,rst,ao6,go6,poh6,pov6,po6,bo6,ao7,go7,bo7,poh7,pov7,po7,ctro7);
 pecell pe8(clk,ctro7,rst,ao7,go7,poh7,pov7,po7,bo7,ao8,go8,bo8,poh8,pov8,po8,ctro8);
 pecell pe9(clk,ctro8,rst,ao8,go8,poh8,pov8,po8,bo8,ao9,go9,bo9,poh9,pov9,po9,ctro9);
 pecell pe10(clk,ctro9,rst,ao9,go9,poh9,pov9,po9,bo9,ao10,go10,bo10,poh10,pov10,po10,ctro10);
 pecell pe11(clk,ctro10,rst,ao10,go10,poh10,pov10,po10,bo10,ao11,go11,bo11,poh11,pov11,po11,ctro11);
  
  delay_1bit pe22(po11,clk,rst,po[1]);
  

  assign povv=pov11 & {15{ctro11}};
  assign po[2:16]=poh11 ^ povv; 
  

  
endmodule
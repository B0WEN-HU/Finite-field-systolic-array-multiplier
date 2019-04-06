
`timescale 1ns/10ps

module topcell(
  clk,ctr,rst,
  ai,gi,
  bi,
  po);
   
  input clk,ctr,rst;
  input [8:1] ai,gi,bi;
  
  output [1:8] po;
  
  wire [8:1] ao1,ao2,ao3,ao4,ao5,ao6,ao7,ao8,ao9,ao10,ao11,ao12,ao13,ao14,ao15,ao16,ao17,ao18,ao19,ao20,ao21;
  wire [8:1] bo1,bo2,bo3,bo4,bo5,bo6,bo7,bo8,bo9,bo10,bo11,bo12,bo13,bo14,bo15,bo16,bo17,bo18,bo19,bo20,bo21;
  wire [8:1] go1,go2,go3,go4,go5,go6,go7,go8,go9,go10,go11,go12,go13,go14,go15,go16,go17,go18,go19,go20,go21;
  wire [1:7] pov1,pov2,pov3,pov4,pov5,pov6,pov7,pov8,pov9,pov10,pov11,pov12,pov13,pov14,pov15,pov16,pov17,pov18,pov19,pov20,pov21;
  wire [1:7] poh1,poh2,poh3,poh4,poh5,poh6,poh7,poh8,poh9,poh10,poh11,poh12,poh13,poh14,poh15,poh16,poh17,poh18,poh19,poh20,poh21;
    
  pecell pe1(clk,ctr,rst,ai,gi,7'b0,7'b0,1'b0,bi,ao1,go1,bo1,poh1,pov1,po1,ctro1);
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
  pecell pe12(clk,ctro11,rst,ao11,go11,poh11,pov11,po11,bo11,ao12,go12,bo12,poh12,pov12,po12,ctro12);
  pecell pe13(clk,ctro12,rst,ao12,go12,poh12,pov12,po12,bo12,ao13,go13,bo13,poh13,pov13,po13,ctro13);
  pecell pe14(clk,ctro13,rst,ao13,go13,poh13,pov13,po13,bo13,ao14,go14,bo14,poh14,pov14,po14,ctro14);
  pecell pe15(clk,ctro14,rst,ao14,go14,poh14,pov14,po14,bo14,ao15,go15,bo15,poh15,pov15,po15,ctro15);
  pecell pe16(clk,ctro15,rst,ao15,go15,poh15,pov15,po15,bo15,ao16,go16,bo16,poh16,pov16,po16,ctro16);
  pecell pe17(clk,ctro16,rst,ao16,go16,poh16,pov16,po16,bo16,ao17,go17,bo17,poh17,pov17,po17,ctro17);
  pecell pe18(clk,ctro17,rst,ao17,go17,poh17,pov17,po17,bo17,ao18,go18,bo18,poh18,pov18,po18,ctro18);
  pecell pe19(clk,ctro18,rst,ao18,go18,poh18,pov18,po18,bo18,ao19,go19,bo19,poh19,pov19,po19,ctro19);
  pecell pe20(clk,ctro19,rst,ao19,go19,poh19,pov19,po19,bo19,ao20,go20,bo20,poh20,pov20,po20,ctro20);
  pecell pe21(clk,ctro20,rst,ao20,go20,poh20,pov20,po20,bo20,ao21,go21,bo21,poh21,pov21,po21,ctro21);
  
  delay_1bit delaycell(po21,clk,rst,po[1]);
  
  and(pov111,pov21[1],ctro21);
  and(pov22,pov21[2],ctro21);
  and(pov33,pov21[3],ctro21);
  and(pov44,pov21[4],ctro21);
  and(pov55,pov21[5],ctro21);
  and(pov66,pov21[6],ctro21);
  and(pov77,pov21[7],ctro21);
  
  xor(po[2],poh21[1],pov111);
  xor(po[3],poh21[2],pov22);
  xor(po[4],poh21[3],pov33);
  xor(po[5],poh21[4],pov44);
  xor(po[6],poh21[5],pov55);
  xor(po[7],poh21[6],pov66);
  xor(po[8],poh21[7],pov77);
  
endmodule
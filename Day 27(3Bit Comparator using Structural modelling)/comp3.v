`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Prananya M
// Create Date:    01:58:31 12/17/2022 
// Design Name: 3bit Comparator using structural module
// Module Name:    comp3 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module comp3(a0,a1,a2,b0,b1,b2,l,e,g);
input a0,a1,a2,b0,b1,b2;
output l,e,g;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26;

not g1(w1,a2);
not g2(w2,a1);
not g3(w3,a0);
not g4(w4,b2);
not g5(w5,b1);
not g6(w6,b0);

and  g7(w7,a2,b2);
and  g8(w8,w1,w4);
or   g9(w9,w7,w8);//p
and  g10(w10,a1,b1);
and g11(w11,w2,w5);
or  g12(w12,w10,w11);//q
and g13(w14,a0,b0);
and  g14(w15,w3,w6);
or  g15(w16,w14,w15);//r
and g16(e,w9,w12,w16);//equal to


and g17(w17,a2,w4);
and g18(w18,a1,w5);
and  g19(w19,w9,w18);
and g20(w20,a0,w6);
and g21(w21,w20,w9,w12);
or g22(g,w17,w20,w21);

and  g23(w22,w1,b2);
and g24(w23,w2,b1);
and g25(w24,w23,w7);
and g26(w25,w5,b0);
and g27(w26,w25,w9,w12);
or g28(l,w26,w25,w22);
endmodule

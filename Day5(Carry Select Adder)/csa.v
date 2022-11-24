`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:30 11/24/2022 
// Design Name: 
// Module Name:    csa 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module csa(a,b,cin,sum,co
);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]sum;
output co;
wire [3:0]sum;
wire co;
wire s1,c1,s2,c2,s3,c3,s4,s11,s44,c4,c11,s22,c22,s33,c33,c44;
//assuming carry in 0
fa x1(a[0],b[0],0,s1,c1);
fa x2(a[1],b[1],c1,s2,c2);
fa x3(a[2],b[2],c2,s3,c3);
fa x4(a[3],b[3],c3,s4,c4);
//assuming carry in 1
fa x5(a[0],b[0],1,s11,c11);
fa x6(a[1],b[1],c11,s22,c22);
fa x7(a[2],b[2],c22,s33,c33);
fa x8(a[3],b[3],c33,s44,c44);
//select either carry 1 or 0 using carry out of FA
//mux for sum select
mux x9(s1,s11,cin,sum[0]);
mux x10(s2,s22,cin,sum[1]);
mux x11(s3,s33,cin,sum[2]);
mux x12(s4,s44,cin,sum[3]);
//mux for carry select
mux x13(c4,c44,cin,co);
endmodule
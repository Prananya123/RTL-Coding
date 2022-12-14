`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:14 12/14/2022 
// Design Name: 
// Module Name:    n_bit_add 
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
module n_bit_add(A,B,Y);
parameter N=32;
input [N-1:0] A,B;
   output [N-1:0] Y;
   wire  carry_out;
  wire [N-1:0] carry;
   genvar i;
   generate 
   for(i=0;i<N;i=i+1)
     begin: generate_N_bit_Adder
   if(i==0) 
  half_adder f(A[0],B[0],Y[0],carry[0]);
   else
  full_adder f(A[i],B[i],carry[i-1],Y[i],carry[i]);
     end
  assign carry_out = carry[N-1];
   endgenerate
endmodule 
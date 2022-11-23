`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:13 11/23/2022 
// Design Name: 
// Module Name:    Fulladder_u_halfadder 
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
module fa(sum,cout,a,b,cin);
  output sum,cout;
  input a,b,cin;
  wire sum1, carry1;
  wire sum2, carry2;
  halfadder hf0(sum1,carry1,a,b);		 
  halfadder hf1(sum2,carry2,sum1,cin);	 
  assign sum = sum2;			
  assign cout = carry1 | carry2; 
endmodule
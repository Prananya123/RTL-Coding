`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:31 11/23/2022 
// Design Name: 
// Module Name:    halfadder 
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
module halfadder(sum,carry,a,b);
  output sum, carry;
  input a, b;
  assign sum = a ^ b;   
  assign carry = a & b; 
endmodule
 
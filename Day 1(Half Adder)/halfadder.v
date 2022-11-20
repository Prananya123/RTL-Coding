`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:48 11/14/2022 
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
module halfadder(a, b, sum, carry);
input a,b;
output sum,carry;
assign carry=a&b;                           //  and(carry,a,b)
assign sum=a^b;                            // xor(sum,a,b)
endmodule

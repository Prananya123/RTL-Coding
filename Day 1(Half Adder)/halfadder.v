`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Prananya M
// Create Date:   19:55:28 11/13/2022
// Design Name: halfadde
// Module Name:   D:/verilog/halfadde/halfaddertb.v
// Project Name:  fulladder  
// Tool versions: ISE Design Suite 14.7 
// Verilog Test Fixture created by ISE for module: fulladder
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module halfadder(a, b, sum, carry);
input a,b;
output sum,carry;
assign carry=a&b;                           //  and(carry,a,b)
assign sum=a^b;                            // xor(sum,a,b)
endmodule

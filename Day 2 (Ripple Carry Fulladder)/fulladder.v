`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:47 11/15/2022 
// Design Name: 
// Module Name:    fulladder2bit 
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
module fulladder2(a, b, cin, sum, cout);
	input a, b, cin;
	output sum, cout;

	assign sum = a^ b ^ cin;
	assign cout = (a&b)|(a&cin)|(b&cin);
endmodule
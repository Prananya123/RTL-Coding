`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:19 11/15/2022 
// Design Name: 
// Module Name:    ripplecarryadder 
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
module ripplecarryadder(a, b, sum, cout);
	input [3:0] a;
	input [3:0] b;
	output [3:0] sum;
	output cout;

	wire c1, c2, c3;
	fulladder2 fa0(a[0], b[0], 0, sum[0], c1);
	fulladder2 fa1(a[1], b[1], c1, sum[1], c2);
	fulladder2 fa2(a[2], b[2], c2, sum[2], c3);
	fulladder2 fa3(a[3], b[3], c3, sum[3], cout);

endmodule
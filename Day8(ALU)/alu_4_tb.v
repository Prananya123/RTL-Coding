`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:46:14 11/27/2022
// Design Name:   alu_4
// Module Name:   D:/verilog/alu_4/alu_4_tb.v
// Project Name:  alu_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_4_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] s;

	// Outputs
	wire [3:0]res;
	wire ack;
	// Instantiate the Unit Under Test (UUT)
	alu_4 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.res(res), 
		.ack(ack)
	);

	initial begin
	$monitor($time ,  "  s=%b     a=%b    b=%b    res=%b",s,a,b,res);
	end
	initial
	begin
		// Initialize Inputs
		a=4'b0100;
		b=4'b0010;
	s=4'b0000;
	#50 s=4'b0001;
	#50 s=4'b0010;
	#50 s=4'b0011;
	#50 s=4'b0100;
	#50 s=4'b0101;
	#50 s=4'b0110;
	#50 s=4'b0111;
	#50 s=4'b1000;
	#50 s=4'b1001;
	#50 s=4'b1010;
	#50 s=4'b1011;
	#50 s=4'b1100;
	#50 s=4'b1101;
	#50 s=4'b1110;
	#50 s=4'b1111;
	end
      
endmodule


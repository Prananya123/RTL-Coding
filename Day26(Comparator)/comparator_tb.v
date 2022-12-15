`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:32 12/15/2022
// Design Name:   comparator_n_bit
// Module Name:   P:/xilin programs/verilog/N_bit_comparator/comparator_tb.v
// Project Name:  N_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_n_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire L;
	wire G;
	wire E;

	comparator_n_bit uut (
		.a(a), 
		.b(b), 
		.L(L), 
		.G(G), 
		.E(E)
	);
	initial begin
	$monitor("    A=%d    B=%d   Lesser=%b     Greater=%b    Equal=%b   ",a,b,L,G,E);
	end

	initial begin
	   a = 2;b = 2;
		#100 a=22;b=444;
		#100 a=44444;b=555;
		#100 a=77777;b=1111;
		#100 a=88888;b=88888;
		#100 $finish;
        

	end
      
endmodule


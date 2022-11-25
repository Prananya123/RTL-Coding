`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:23:00 11/25/2022
// Design Name:   halfsub
// Module Name:   D:/verilog/half_sub/halfsubtb.v
// Project Name:  half_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfsub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfsubtb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Diff;
	wire Bor;

	// Instantiate the Unit Under Test (UUT)
	halfsub uut (
		.A(A), 
		.B(B), 
		.Diff(Diff), 
		.Bor(Bor)
	);

	initial begin
	$monitor ($time, "   A=%b     B=%b    Diff=%b     Bor=%b ",A,B,Diff,Bor);
	end
	initial begin
	
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;A = 0;
		B = 1;
        #100;A = 1;
		B = 0;
		#100;A = 1;
		B = 1;
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Author:Prananya M
// Create Date:    01:58:31 12/17/2022 
// Design Name: 3bit Comparator using structural module
// Module Name:    comp3 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module comp3_tb;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg b0;
	reg b1;
	reg b2;

	// Outputs
	wire l;
	wire e;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	comp3 uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.b0(b0), 
		.b1(b1), 
		.b2(b2), 
		.l(l), 
		.e(e), 
		.g(g)
	);
initial begin
		$monitor($time, "      in1=%d   in2=%d    l=%b   e=%b    g=%b",{a2,a1,a0},{b2,b1,b0},l,e,g);
		end
	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		b0 = 0;
		b1 = 0;
		b2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a0 = 0;
		a1 = 1;
		a2 = 1;
		b0 = 0;
		b1 = 1;
		b2 = 1;
        
		  #100;
		a0 = 1;
		a1 = 0;
		a2 = 0;
		b0 = 1;
		b1 = 1;
		b2 = 0;
        
		  #100;
		a0 = 0;
		a1 = 1;
		a2 = 0;
		b0 = 1;
		b1 = 0;
		b2 = 1;
		#100;
		a0 = 1;
		a1 = 1;
		a2 = 1;
		b0 = 0;
		b1 = 0;
		b2 = 1;
        
		  #100;
		a0 = 1;
		a1 = 0;
		a2 = 0;
		b0 = 1;
		b1 = 1;
		b2 = 1;
		
        
#100;
		a0 = 1;
		a1 = 0;
		a2 = 1;
		b0 = 0;
		b1 = 0;
		b2 = 1;
        
		// Add stimulus here

	end
      
endmodule


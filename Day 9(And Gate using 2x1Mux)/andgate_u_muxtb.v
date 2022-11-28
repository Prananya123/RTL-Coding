`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:19:58 11/28/2022
// Design Name:   andgate_u_mux
// Module Name:   D:/verilog/andgate_u_mux/andgate_u_muxtb.v
// Project Name:  andgate_u_mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: andgate_u_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module andgate_u_muxtb;

	// Inputs
	reg i0;
	reg i1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	andgate_u_mux uut (
		.i0(i0), 
		.i1(i1), 
		.y(y)
	);

	initial begin
	$monitor ($time ,"   i0=%b   i1=%b   y=%b ",i0,i1,y);
	end 
		initial begin
	i0=0;i1=0;
	#100;i0=0;i1=1;
	#100;i0=1;i1=0;
	#100;i0=1;i1=1;
   end   
endmodule


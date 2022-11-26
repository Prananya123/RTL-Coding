`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:37 11/26/2022
// Design Name:   full_sub
// Module Name:   D:/verilog/full_sub/full_sub_tb.v
// Project Name:  full_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_sub_tb;

	// Inputs
	reg X;
	reg Y;
	reg Z;

	// Outputs
	wire Diff;
	wire Borr;

	// Instantiate the Unit Under Test (UUT)
	full_sub uut (.X(X), .Y(Y), .Z(Z), .Diff(Diff), .Borr(Borr));
initial begin
    $monitor (  $time , "  X = %d    Y = %d   Z = %d    Borr = %d     Diff = %d",X, Y, Z, Borr, Diff);
 
end
	initial begin
      X = 0; Y = 0; Z = 0;
#100  X = 0; Y = 0; Z = 1;
#100  X = 0; Y = 1; Z = 0;
#100  X = 0; Y = 1; Z = 1;
#100  X = 1; Y = 0; Z = 0;
#100  X = 1; Y = 0; Z = 1;
#100  X = 1; Y = 1; Z = 0;
#100  X = 1; Y = 1; Z = 1;
end
endmodule


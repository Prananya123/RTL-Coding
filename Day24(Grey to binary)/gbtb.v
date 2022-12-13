`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:58 12/13/2022
// Design Name:   gb
// Module Name:   D:/verilog/gb/gbtb.v
// Project Name:  gb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gbtb;

	// Inputs
	reg [3:0] g;
integer i;
	// Outputs
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	gb uut (
		.g(g), 
		.b(b)
	);

	initial begin
	$monitor($time,"    grey=%b > %d   Binary=%b  >%d",g,g,b,g);
	end
		initial begin
		// Initialize Inputs
		g = 0;
for(i=0;i<16;i=i+1)
begin
g=i;
#10;

	end
   $finish;
end
   
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:23:40 12/04/2022
// Design Name:   down_counter
// Module Name:   D:/verilog/down_counter/down_counter_tb.v
// Project Name:  down_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module down_counter_tb;
	reg clk;
	reg rst;
	wire [3:0] count;
	down_counter uut (
		.clk(clk), 
		.rst(rst), 
		.count(count)
	);

	initial begin
	$monitor ($time, "  count=%b",count);
	end 
		initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0; 

		// Wait 100 ns for global reset to finish
		#20;
		rst = 1;
end
 always 
 #5 clk=~clk;  
endmodule



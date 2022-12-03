`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Module Name:   D:/verilog/up_counter/up_counter_tb.v
// Author:Prananya M
// Create Date:    20:59:42 12/03/2022 
// Module Name:    up_counter 
// Project Name: up_counter 
// Tool versions: ISE Design suite 14.7
// Revision 0.01 - File Created
// Verilog Test Fixture created by ISE for module: up_counter
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module up_counter_tb;
	reg clk;
	reg rst;
	wire [3:0] count;
	up_counter uut (
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



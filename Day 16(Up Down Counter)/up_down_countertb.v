`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:   22:46:02 12/04/2022
// Design Name:   up_down_counter
// Module Name:   D:/verilog/up_down_counter/up_down_countertb.v
// Project Name:  up_down_counter
// Create Date:    22:29:30 12/04/2022 
// Module Name:    up_down_counter 
// Tool versions:ISE design suite 14.7
// Verilog Test Fixture created by ISE for module: up_down_counter
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module up_down_countertb;

	// Inputs
	reg clk;
	reg rst;
	reg updown;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.clk(clk), 
		.rst(rst), 
		.count(count), 
		.updown(updown)
	);

	initial begin
	
$monitor($time,"    updown=%b    count=%b    count=%d",updown,count,count);
end
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Apply Inputs
        rst = 0;
       updown = 0;
        #150;
        updown = 1;
        rst = 1;
        #150;  updown = 0;
        #150; updown = 1;
    end      
endmodule



`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Author:Prananya M
// Create Date:   20:01:29 12/17/2022
// Design Name:   digital clock
// Module Name:   D:/verilog/dig_clk/dig_clk_tb.v
// Project Name:  dig_clk
////////////////////////////////////////////////////////////////////////////////


module dig_clk_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [6:0] sec;
	wire [6:0] min;
	wire [4:0] hr;

	// Instantiate the Unit Under Test (UUT)
	dig_clk uut (
		.clk(clk), 
		.rst(rst), 
		.sec(sec), 
		.min(min), 
		.hr(hr)
	);
initial
begin
$monitor($time,"  sec=%d    min=%d   hour=%d  ",sec,min,hr);
end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#100 rst=0;
        
		// Add stimulus here

	end
      always
		#1clk=~clk;
endmodule



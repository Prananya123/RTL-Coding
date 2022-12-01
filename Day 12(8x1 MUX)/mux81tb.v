`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author : Prananya M
// Create Date:   13:42:55 12/01/2022
// Design Name:   mux81
// Module Name:   D:/verilog/mux81/mux81tb.v
// Project Name:  mux81 
// Tool versions:  ISE Design Suite 14.7
// Verilog Test Fixture created by ISE for module: mux81
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module mux81tb;

	reg [7:0] in;
	reg [2:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux81 uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
	$monitor($time, "   in=%b     sel=%b    out=%b",in,sel,out);
	end
    	initial begin  
		in=8'b01010101;
		sel=3'b000;	 
end
 
always #1 sel=sel+3'b001;
initial 
#8 $finish;
endmodule



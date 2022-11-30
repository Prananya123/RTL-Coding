`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:08 11/30/2022
// Design Name:   encoder_83
// Module Name:   D:/verilog/encoder_83/encoder_83tb.v
// Project Name:  encoder_83
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder_83
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_83tb;

	// Inputs
	reg [7:0] in;
	reg en;
	wire [2:0] out;
	integer i;


	// Instantiate the Unit Under Test (UUT)$$
	encoder_83 uut (.in(in),.out(out),  .en(en));

	
  
 initial begin  
 $monitor($time, "    en=%b,    in=%d,    out=%b ", en, in, out);
 end
 initial begin
   en=0;
	i=0;
	for(i=0;i<8;i=i+1)
	begin
	in=2**i;
	#10;
	end
	#10;
	en=1;
	for(i=0;i<8;i=i+1)
	begin
	in=2**i;
	#10;
	end 
	end
	endmodule
	
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Author: Prananya M
// Create Date:   20:47:54 12/02/2022
// Design Name:   preority_encoder
// Module Name:   D:/verilog/preority_encoder/preority_encodertb.v
// Project Name:  preority_encoder  
// Tool versions: ISE Drsign Suite 14.7
// Verilog Test Fixture created by ISE for module: preority_encoder
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module preority_encodertb;

	// Inputs
	reg en;
	reg [7:0] in;

	// Outputs
	wire [2:0] op;

	// Instantiate the Unit Under Test (UUT)
	preority_encoder uut (
		.en(en), 
		.in(in), 
		.op(op)
	);

	initial begin
	$monitor ($time, "    in=%b   en=%b    op=%b",in,en,op);
	end
		initial begin
		// Initialize Inputs
		en = 0;
 in=8'b00000001;
#10; in=8'b0000001x;
#10; in=8'b000001xx;
#10; in=8'b00001xxx;
#10; in=8'b0001xxxx;
#10; in=8'b001xxxxx;
#10; in=8'b01xxxxxx;
#10; in=8'b1xxxxxxx;
#10; en = 1;
 in=8'b00000001;
#10; in=8'b0000001x;
#10; in=8'b000001xx;
#10; in=8'b00001xxx;
#10; in=8'b0001xxxx;
#10; in=8'b001xxxxx;
#10; in=8'b01xxxxxx;
#10; in=8'b1xxxxxxx;
#10 $finish;		
	end
      
endmodule


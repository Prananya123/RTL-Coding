`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:   23:46:20 12/04/2022
// Design Name:   sr_ff
// Module Name:   D:/verilog/sr_ff/sr_ff_tb.v
// Project Name:  sr_ff 
// Tool versions: ISE Design Suite 14.7 
// Verilog Test Fixture created by ISE for module: sr_ff
// Revision 0.01 - File Created
// Additional Comments:
 
////////////////////////////////////////////////////////////////////////////////

module sr_ff_tb;

	// Inputs
	reg s;
	reg r;
	reg clk;
	reg rst;

	// Outputs
	wire q;
wire qbar;

	// Instantiate the Unit Under Test (UUT)
	sr_ff uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
	.qbar(qbar)
	);

	initial begin
	


		clk = 0;
		rst =1;
	
#100;rst = 0;
	 s = 0;r = 0; 
	#100; $display($time,  "  s=%b   r=%b    q=%b qbar=%b   ",s,r,q,qbar);
		s = 0;r = 1;
      	#100; $display($time,  "  s=%b   r=%b    q=%b   qbar=%b ",s,r,q,qbar);	
			s = 1;r = 0;
			#100;	$display($time,  "  s=%b   r=%b    q=%b   qbar=%b ",s,r,q,qbar);
				s = 1;r = 1;
      		
				#100;$display($time,  "  s=%b   r=%b    q=%b  qbar=%b  ",s,r,q,qbar);
				
		// Add stimulus here

	end
    always 
begin	 
#5 clk=~clk;
end	  
endmodule


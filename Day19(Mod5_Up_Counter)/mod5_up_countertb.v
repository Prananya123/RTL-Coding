`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:58 12/08/2022
// Design Name:   mod5_vlog
// Module Name:   D:/verilog/mod5_up_counter/mod5_up_countertb.v
// Project Name:  mod5_up_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod5_vlog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_mod5_vlog;

 // Inputs
 reg clk;
 reg reset;

 // Outputs
 wire [2:0] out;

 // Instantiate the Unit Under Test (UUT)
 mod5_vlog uut (
  .out(out),
  .clk(clk),
  .reset(reset)
 );

 initial begin
  clk=1'b1;
  forever #5 clk=~clk;
 end


 initial begin
  reset = 1;#10;
  reset = 0;#30;
  
 end
   
endmodule

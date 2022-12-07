`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:14:49 12/07/2022
// Design Name:   DFF
// Module Name:   D:/verilog/ff/fftb.v
// Project Name:  ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module DFF_tb;

 // Inputs

 reg D;

 reg Clk;

 reg Reset;

 // Outputs

 wire Q;

 wire Qbar;

 // Instantiate the Unit Under Test (UUT)

 DFF uut (

  .Q(Q), 

  .Qbar(Qbar), 

  .D(D), 

  .Clk(Clk), 

  .Reset(Reset)

  );

 initial begin
 $monitor( " D=%b  Q=%b  Qbar=%b",D,Q,Qbar);
 end
 initial begin
  // Initialize Inputs

  D  = 1'b0;

  Clk  = 1'b0;

  Reset   = 1'b1;

  // Wait 100 ns for global reset to finish

  #100;

  // Add stimulus here

  Reset = 1'b0;

  #20;

  forever #40 D = ~ D;

 end

   always #10 Clk = ~Clk;  

endmodule

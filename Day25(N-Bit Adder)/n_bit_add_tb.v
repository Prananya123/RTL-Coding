`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:10 12/14/2022
// Design Name:   n_bit_add
// Module Name:   D:/verilog/n_bit_add/n_bit_add_tb.v
// Project Name:  n_bit_add
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: n_bit_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module n_bit_add_tb;
 // Inputs
 reg [31:0] A;
 reg [31:0] B;
 // Outputs
 wire [31:0] Y;

 // Instantiate the Unit Under Test (UUT)
n_bit_add uut (
  .A(A), 
  .B(B), 
  .Y(Y)
 );
 initial begin
 $monitor($time,"  A=%d      B=%d      Y=%d  ",A,B,Y);
 end
 initial begin
  // Initialize Inputs

    A = 2;
  B = 4;
   #100;
	  A = 22;
  B = 44;
  #100
    A = 222;
  B = 444;
  #100;
  A = 2222;
  B = 4444;
  #100;
    A = 22222;
  B = 44444;
   #100;
    A = 222222;
  B = 444444;
    #100;
    A = 2222222;
  B = 4444444;
  // Add stimulus here
 end
      
endmodule
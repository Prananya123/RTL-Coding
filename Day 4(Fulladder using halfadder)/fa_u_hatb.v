`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:26 11/23/2022
// Design Name:   fulladder_u_halfadder
// Module Name:   D:/verilog/Fulladder_u_Halfadder/fa_u_ha.v
// Project Name:  Fulladder_u_Halfadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_u_halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module fatb();
reg  a, b , cin;
wire  sum, cout;
fa uut(sum,cout,a,b,cin);
initial
  begin
    $monitor ($time,  "   a=%b  b=%b    cin=%b  sum=%b  cout=%b  ",a,b,cin,sum,cout);
  end 
 
initial begin
 	         a = 0; b =0;  cin = 0;
  #100;		a = 0; b =0;  cin = 1;
  #100;		a = 0; b =1;  cin = 0;
  #100;    	a = 0; b =1;  cin = 1;
  #100;		a = 1; b =0;  cin = 0;
  #100;		a = 1; b =0;  cin = 1;
  #100;		a = 1; b =1;  cin = 0;
  #100; 	   a = 1; b =1;  cin = 1;
  #100;
    end
   
  
endmodule
 
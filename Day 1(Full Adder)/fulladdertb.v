`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:55:28 11/13/2022
// Design Name:   fulladder
// Module Name:   D:/verilog/fulladder/fulladdertb.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladdtb;
reg A,B,Cin;
wire S,Cout;
fulladder uut (.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
initial begin
$monitor($time  ,"  A=%b   B=%b   Cin=%b   Cout=%b  S=%b   ",A,B,Cin,Cout,S);
end
initial begin
 A=1'b0;B=1'b0;Cin=1'b0;
#100 A=1'b0;B=1'b0;Cin=1'b1;
#100 A=1'b0;B=1'b1;Cin=1'b0;
#100 A=1'b0;B=1'b1;Cin=1'b1;
#100 A=1'b1;B=1'b0;Cin=1'b0;
#100 A=1'b1;B=1'b0;Cin=1'b1;
#100 A=1'b1;B=1'b1;Cin=1'b0;
#100 A=1'b1;B=1'b1;Cin=1'b1;
#1000$stop;
end
endmodule
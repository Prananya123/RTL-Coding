`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:   17:27:29 11/14/2022
// Design Name:   halfaddertb
// Module Name:   D:/verilog/halfadder/halfaddertb.v
// Project Name:  halfadder 
// Tool versions: ISE Design Suite 14.7 
// Verilog Test Fixture created by ISE for module: halfadder
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module halfaddertb;
reg a,b;
wire sum,carry;
halfadder uut ( .a(a),.b(b),.sum(sum), .carry(carry));
initial begin
$monitor( $time, "   a=%b  b=%b  sum=%b  carry=%b",a,b,sum,carry);
end
initial begin
 a=1'b0;b=1'b0;                      
#100 a=1'b0;b=1'b1;                     
#100 a=1'b1;b=1'b0;                       
#100 a=1'b1;b=1'b1;                         
end 
endmodule

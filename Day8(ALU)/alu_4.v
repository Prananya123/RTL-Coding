`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:15 11/27/2022 
// Design Name: 
// Module Name:    alu_4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_4(a,b,s,res,ack);
input [3:0]a,b,s;
output ack;
output [3:0]res;
reg [3:0]res;
reg ack;
 always @(*)
    begin
case(s)
        4'b0000: res = a + b ; 
        4'b0001:res = a- b ;
        4'b0010:res = a* b;
        4'b0011:res = a/b;
        4'b0100: res = ~a;
		  4'b0101:res=a&b; 
        4'b0110:res=a|b; 
        4'b0111:res = a ^ b;
        4'b1000:res= ~(a|b);
        4'b1001:res=~(a & b);
        4'b1010:res=~(a^ b); 
        4'b1011:res=a%b;
		  4'b1100:res=a+1;
		  4'b1101:res=a-1;
		  4'b1110:res=!a;
		  4'b1111:res=a**b;
endcase	
	ack=1;
end 
endmodule   
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:56 12/13/2022 
// Design Name: 
// Module Name:    gb 
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
module gb(g,b);
    input[3:0]g;
	 output[3:0]b;
	assign b[3]= g[3];
   assign b[2]= g[3]^g[2];
	assign b[1]= g[3]^g[2]^g[1];
	assign b[0]= g[3]^g[2]^g[1]^g[0];
	endmodule
	



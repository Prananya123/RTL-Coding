`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:21 11/25/2022 
// Design Name: 
// Module Name:    halfsub 
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
module halfsub(A,B,Diff,Bor);
input A,B;
output Diff,Bor;
assign Diff=A^B;
assign Bor =~A&B;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:43 11/26/2022 
// Design Name: 
// Module Name:    full_sub 
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
module full_sub(X,Y,Z,Diff,Borr);
output Diff, Borr;
 input X, Y, Z;
assign Diff = X ^ Y ^ Z;
assign Borr = ~X & (Y^Z) | Y & Z;
endmodule

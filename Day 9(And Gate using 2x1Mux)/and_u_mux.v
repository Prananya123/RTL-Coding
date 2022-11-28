`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:29 11/28/2022 
// Design Name: 
// Module Name:    and_u_mux 
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
module andgate_u_mux(i0,i1,y);
input i0,i1;
output y;
mux21 m1(0,i1,i0,y);
endmodule

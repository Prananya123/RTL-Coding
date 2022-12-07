`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:46 12/07/2022 
// Design Name: 
// Module Name:    ff 
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
module DFF( Q,

  Qbar,

  D,

  Clk,

  Reset

    );

output  reg  Q; 

output   Qbar; 

input   D, 

  Clk, 

  Reset; 

assign Qbar = ~Q; 

always @(posedge Clk) 

begin 

 if (Reset == 1'b1) //If not at reset 

  Q = 1'b0;

 else 

  Q = D;

end 

endmodule

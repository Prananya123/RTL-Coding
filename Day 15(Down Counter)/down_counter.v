`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:21 12/04/2022 
// Design Name: 
// Module Name:    down_counter 
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
module down_counter(clk,rst,count);
input rst,clk;
output [3:0]count;
reg [3:0]count;
 always @ (posedge clk or negedge rst)
 begin  
    if ( rst==0)  
      count <= 4'b1111;  
    else  
      count <= count - 1;  
  end  
endmodule



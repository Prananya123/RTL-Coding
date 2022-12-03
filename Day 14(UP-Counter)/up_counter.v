`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:Prananya M
// Create Date:    20:59:42 12/03/2022 
// Module Name:    up_counter 
// Project Name: up_counter 
// Tool versions: ISE Design suite 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module up_counter(clk,rst,count);
input rst,clk;
output [3:0]count;
reg [3:0]count;
 always @ (posedge clk or negedge rst)
 begin  
    if ( rst==0)  
      count <= 4'b0000;  
    else  
      count <= count + 1;  
  end  
endmodule  


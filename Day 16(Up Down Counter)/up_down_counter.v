`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:    22:29:30 12/04/2022 
// Module Name:    up_down_counter 
// Tool versions:ISE design suite 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module up_down_counter(clk,rst,count,updown);
input rst,clk,updown;
output [3:0]count;
reg [3:0]count;
 always @ (posedge clk)
 begin  
   if ( rst==0)  
      count <= 4'b0000;  
   else  
           if (updown==1) // mode sel
		        if(count == 4'b1111)
		            count <=4'b0000;
	           else
                   count <= count + 1; //up
              else  
                  if(count == 4'b0000)
                    count <= 4'b1111;
                  else
                    count <= count - 1; //down
						  end
endmodule

    
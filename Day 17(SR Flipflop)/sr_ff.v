`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:27 12/04/2022 
// Design Name: 
// Module Name:    sr_ff 
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
module sr_ff(s,r,clk,rst,qbar,q);
input s,r,clk,rst;
output q,qbar;
reg q,qbar;
always@(posedge clk or posedge rst)
begin
if(rst==1)
q=0;
else
begin
case ({s,r})
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=1'bz;
endcase
qbar=~q;
end
end
endmodule

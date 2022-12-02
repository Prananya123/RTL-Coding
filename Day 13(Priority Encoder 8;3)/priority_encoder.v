`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Prananya M
// Create Date:   20:47:54 12/02/2022
// Design Name:   preority_encoder
// Module Name:   D:/verilog/preority_encoder/preority_encodertb.v
// Project Name:  preority_encoder  
// Tool versions: ISE Drsign Suite 14.7 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module preority_encoder(en,in,op);
input en;
input [7:0] in;
output [2:0]op;
reg [2:0]op;
always @ (in,en)
begin
if(en==1)
begin
op=3'b000;
casex (in)
8'b00000001: op = 3'b000;
8'b0000001x:op= 3'b001;
8'b000001xx: op= 3'b010;
8'b00001xxx: op= 3'b011;
8'b0001xxxx: op= 3'b100;
8'b001xxxxx: op= 3'b101;
8'b01xxxxxx:op= 3'b110;
8'b1xxxxxxx:op= 3'b111;
default:op=3'b000;
endcase
end
else
op=3'b000;
end
endmodule


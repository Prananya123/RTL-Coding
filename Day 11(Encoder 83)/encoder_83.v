`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:    18:47:19 11/30/2022 
// Design Name: 8:3 ENCODER
// Module Name:    encoder_83 
// Tool versions: ISE Design Suite 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module encoder_83(in,out,en);
input [7:0]in;
input en;
output [2:0]out;
reg [2:0]out;
always @(in or en)
begin
if (en==1) 
		 begin
          out=3'b000;
  case (in) 
 8'd1:out=3'b000;
 8'd2:out=3'b001;
 8'd4:out=3'b010;
 8'd8:out=3'b011;
 8'd16:out=3'b100;
 8'd32:out=3'b101;
 8'd64:out=3'b110;
 8'd128:out=3'b111;
 default:out=3'b000;
          endcase
      end
else 
out=3'b000;
end 
endmodule

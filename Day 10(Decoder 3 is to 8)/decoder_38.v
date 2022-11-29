`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// Author: Prananya M
// Create Date:   17:27:29 11/14/2022
// Design Name:   decoder_38
// Module Name:   D:/verilog/decoder_38/decoder_38tb.v
// Project Name:  decoder_38 
// Tool versions: ISE Design Suite 14.7 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decoder_38( in,out, en);
input [2:0]  in;
input en;
output [7:0] out;
  reg [7:0] out;

 always @( in or en)
	begin

      if (en) 
        begin
          out=8'd0;
          case (in)
              3'b000: out[0]=1'b1;
              3'b001: out[1]=1'b1;
              3'b010: out[2]=1'b1;
              3'b011: out[3]=1'b1;
              3'b100: out[4]=1'b1;
              3'b101: out[5]=1'b1;
              3'b110: out[6]=1'b1;
              3'b111: out[7]=1'b1;
              default: out=8'd0;
          endcase
      end
else 
out=8'd0;
end
endmodule

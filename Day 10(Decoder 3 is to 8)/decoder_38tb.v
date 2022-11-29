`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:46:01 11/29/2022
// Design Name:   decoder_38
// Module Name:   D:/verilog/decoder_38/decoder_38tb.v
// Project Name:  decoder_38
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_38
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module decoder_tb;
wire [7:0] out;
reg en;
reg [2:0] in;
integer i;

decoder_38 dut(in,out,en);

initial begin  
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
   for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #1;
        end
end
endmodule
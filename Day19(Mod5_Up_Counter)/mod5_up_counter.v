`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:07 12/08/2022 
// Design Name: 
// Module Name:    mod5_up_counter 
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
module mod5_vlog(
 out      ,  // Output of the counter
 clk      ,  // clock input
 reset       // reset input
 );
 //----------Output Ports--------------
  output [2:0] out;
  //------------Input Ports--------------
  input clk, reset;
  //------------Internal Variables--------
  reg [2:0] out;
  //-------------Code Starts Here-------
  always @(posedge clk)
 if (reset)
  begin // active high reset
   out <= 2'b0 ;
  end
 else if (out<4)
  begin
   out <= out + 1;
  end
 else
  begin
   out <= 2'b0 ;
  end

  endmodule
  
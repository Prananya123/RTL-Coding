`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:00 11/13/2022 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder( A, B, Cin, S, Cout);
input wire A, B, Cin;
output reg S, Cout;
always @(A or B or Cin)
begin
 if(A==0 && B==0 && Cin==0)
  begin
   S=0;
   Cout=0;
  end

 else if(A==0 && B==0 && Cin==1)
  begin
   S=1;
   Cout=0;
  end

 else if(A==0 && B==1 && Cin==0)
  begin
   S=1;
   Cout=0;
  end

 else if(A==0 && B==1 && Cin==1)
  begin
   S=0;
   Cout=1;
  end

 else if(A==1 && B==0 && Cin==0)
  begin
   S=1;
   Cout=0;
  end

 else if(A==1 && B==0 && Cin==1)
  begin
   S=0;
   Cout=1;
  end

 else if(A==1 && B==1 && Cin==0)
  begin
   S=0;
   Cout=1;
  end

 else if(A==1 && B==1 && Cin==1)
  begin
   S=1;
   Cout=1;
  end

end

endmodule
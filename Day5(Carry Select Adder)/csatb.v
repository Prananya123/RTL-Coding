`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:29:22 11/24/2022
// Design Name:   csa
// Module Name:   D:/verilog/CSA/csatb.v
// Project Name:  CSA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: csa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module csatb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire co;
csa uut (.a(a), .b(b), .cin(cin), .sum(sum), .co(co));
initial begin
$monitor($time,"     a=%d     b=%d     cin=%d     sum=%d    co=%d",a,b,cin,sum,co);
end
initial begin
a = 0;b = 0;cin = 0;
#100;a = 4'd5;b = 4'd4;cin = 0;
#100;a = 4'd6;b = 4'd1;cin = 1;
#100;a = 4'd7;b = 4'd1;cin = 0;
#100;a = 4'd1;b = 4'd1;cin = 1;
end

endmodule
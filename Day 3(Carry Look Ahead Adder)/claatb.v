`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:42:00 11/22/2022
// Design Name:   adder_4bit_cla
// Module Name:   D:/verilog/carry_look_ahead_adder/claatb.v
// Project Name:  carry_look_ahead_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_4bit_cla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module adder_4bit_cla_tb();
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire Cout;
adder_4bit_cla uut(.sum(sum), .Cout(Cout), .a(a), .b(b), .cin(cin));
initial begin
$monitor (    $time    ,  "     a=%d    b=%d    cin=%d    sum=%d    Cout=%d ",a,b,cin,sum,Cout);
end 
initial begin  
    a = 4'd1; b = 4'd2; cin = 1'd1;
    #100 a = 4'd2; b = 4'd5; cin = 1'd0;
    #100 a = 4'd5; b = 4'd6; cin = 1'd1;
	 #100 a = 4'd6; b = 4'd8; cin = 1'd0;
    #100 a = 4'd2; b = 4'd9; cin = 1'd1;
end
endmodule
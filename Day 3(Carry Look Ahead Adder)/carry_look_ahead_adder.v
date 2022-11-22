`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:55 11/22/2022 
// Design Name: 
// Module Name:    carry_look_ahead_adder 
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
module adder_4bit_cla(a, b, cin,sum, Cout);

    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output Cout;
    
    wire P0,P1,P2,P3,G0,G1,G2,G3;
    wire C4, C3, C2, C1;
    
    assign
        P0 = a[0] ^ b[0],
        P1 = a[1] ^ b[1],
        P2 = a[2] ^ b[2],
        P3 = a[3] ^ b[3];
        
    assign
        G0 = a[0] & b[0],
        G1 = a[1] & b[1],
        G2 = a[2] & b[2],
        G3 = a[3] & b[3];
        
    assign
        C1 = G0 | (P0 & cin),
        C2 = G1 | (P1 & G0) | (P1 & P0 & cin),
        C3 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & cin),
        C4 = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & cin);
        
    assign
        sum[0] = P0 ^ cin,
        sum[1] = P1 ^ C1,
        sum[2] = P2 ^ C2,
        sum[3] = P3 ^ C3;
        
    assign Cout = C4;
    
endmodule
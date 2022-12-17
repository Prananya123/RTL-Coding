`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//Author:Prananya M
// Create Date:   20:01:29 12/17/2022
// Design Name:   digital clock
// Module Name:   D:/verilog/dig_clk/dig_clk_tb.v
// Project Name:  dig_clk
////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module  dig_clk(clk,rst,sec,min,hr);
input clk,rst;
output [6:0]sec,min;
output [4:0]hr;
reg [6:0]sec,min;
reg [4:0]hr;
always @(posedge clk)
begin
if(rst==1)
begin
	sec=0;
	min=0;
	hr=0;
end
else
begin
	sec=sec+1;
		if(sec==60)
		begin
		min=min+1;
		sec=0;
		end
			if(min==60)
			begin
			hr=hr+1;
			min=0;
			end
				if(hr==24)
				begin
				hr=0;
				min=0;
				sec=0;
				end

end	
end
endmodule

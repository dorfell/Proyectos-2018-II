`timescale 1ns / 1ps

module Divisor_Teclado(clk_T,t);
	
	input clk_T;  
	output t;
	reg clk_50;
	reg [16:0]cont;
	always @(posedge clk_T) clk_50 <= ~clk_50;
	initial begin
		cont=0;
		
	end

	assign t=cont[16];
	
	always @(posedge clk_50)
		
			cont<=cont+1'b1;
		
endmodule 

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:13:47 10/27/2018 
// Design Name: 
// Module Name:    Divisor_Tiempo 
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
module Divisor_Tiempo(	
	input clk,
	output t
    );

	reg [17:0] cont;

	initial begin
		cont=0;	
	end

	assign t=cont[17];
	
	always @(posedge clk)
		
			cont<=cont+1'b1;
		
endmodule 

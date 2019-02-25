`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:52 10/28/2018 
// Design Name: 
// Module Name:    Comparador_Cedula 
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
module Comparador_Cedula(
	input clk,
	input [39:0] ROM_data,
	input [39:0] Teclado_data,
	output reg isCorrect
    );

always@(posedge clk) begin
	if (ROM_data == Teclado_data) begin
		isCorrect <= 1'b1;
	end else begin
		isCorrect <= 1'b0;
		end
end

endmodule

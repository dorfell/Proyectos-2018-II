`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:25 10/27/2018 
// Design Name: 
// Module Name:    ROM1 
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
module ROM1(
	input clk,
	input wire [3:0] addr,
	output reg [3:0] data
    );

//se declara la memoria, una matriz de registros
	reg [32:0] rom [0:4];
	
//Proceso de acceso a la memoria (Con flanco de subida)
	always @(posedge clk) begin 
	data <= rom[addr];
	end
	
//Inicialización de la memoria
	initial begin
    rom[0] = 4'h0; 
    rom[1] = 4'h1;
    rom[2] = 4'h2;
    rom[3] = 4'h3;
    rom[4] = 4'h4;
   end

endmodule

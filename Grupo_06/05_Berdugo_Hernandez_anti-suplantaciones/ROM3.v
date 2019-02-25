`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:35 10/28/2018 
// Design Name: 
// Module Name:    ROM3 
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
module ROM3(
	input clk,
	input wire [3:0] addr,
	output reg [3:0] data
    );

//se declara la memoria, una matriz de registros
	reg [24:0] rom [0:4];
	
//Proceso de acceso a la memoria (Con flanco de subida)
	always @(posedge clk) begin 
	data <= rom[addr];
	end
	
//Inicialización de la memoria
	initial begin
    rom[0] = 25481340; 
    rom[1] = 25481395;
    rom[2] = 25435478;
    rom[3] = 25697485;
    rom[4] = 25369875; 
   end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:29 10/27/2018 
// Design Name: 
// Module Name:    ROM2 
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
module ROM2(
	input clk,
	input wire [3:0] addr,
	output reg [39:0] data
    );

//se declara la memoria, una matriz de registros
	reg [39:0] rom [0:4];
	
//Proceso de acceso a la memoria (Con flanco de subida)
	always @(posedge clk) begin 
	data <= rom[addr];
	end
	
//Inicialización de la memoria
	initial begin
    rom[0] = 40'b0001000000100010010001000000001000000110; //1022440206
    rom[1] = 40'b0001000000010101010010000000001000100111; //1015480227
    rom[2] = 40'b0001000000100100100001101001001001110100; //1024869274
    rom[3] = 40'b0001000000100110100101000000010010000011; //1026940483
    rom[4] = 40'b0001000000100000100000110011100000000010 ; //1020833802
   end

endmodule

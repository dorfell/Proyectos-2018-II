`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:25 10/22/2018 
// Design Name: 
// Module Name:    Lector_Teclado 
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

//Modulo implementado para que se lea el teclado fila por fila

  module Lector_Teclado(
	//Inputs: La señal de reloj
	input clk,
	//Outputs: La tecla presionada
	output reg [3:0] fila_tecla
    );
	 
//Declaracion de los estados
reg [2:0] state, nextstate;

	parameter S0 = 0;
	parameter S1 = 1;
	parameter S2 = 2;
	parameter S3 = 3;
	parameter S4 = 4;
	
//Logica del estado presente: Cada vez que la señal de reloj tenga un flanco ascendente pasar de estado
	initial state=S0;
	
	always @ (posedge clk)
		state <= nextstate;

//Logica del estado siguiente:
	always @(posedge clk)begin

		case (state)
			S0: nextstate <= S1;
			S1: nextstate <= S2;
			S2: nextstate <= S3;
			S3: nextstate <= S4;
			S4: nextstate <= S0;
			default: nextstate <= S0;
		endcase
		
//Logica de salida: Asigna a cada estado una fila en un reg de 4 bits
		case (state)
			S0: fila_tecla <= 4'b1111;
			S1: fila_tecla <= 4'b1000;
			S2: fila_tecla <= 4'b0100;
			S3: fila_tecla <= 4'b0010;
			S4: fila_tecla <= 4'b0001;
			default: fila_tecla <= 4'b1111;
		endcase
	end
	
endmodule

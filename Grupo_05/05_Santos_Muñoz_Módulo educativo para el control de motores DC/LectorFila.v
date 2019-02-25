`timescale 1ns / 1ps
//genera secuencia de entada al teclado, para mirar fila por fila
module LectorFila(clk_sec,ent_teclado);
	input clk_sec;
	output reg[3:0]ent_teclado;

	reg [2:0] state, nextstate;
	
	parameter S0 = 3'd0;
	parameter S1 = 3'd1;
	parameter S2 = 3'd2;
	parameter S3 = 3'd3;
	parameter S4 = 3'd4;

	initial state=S0;
	
	always @ (posedge clk_sec)
		state = nextstate;

	always @(state)begin

		case (state)
			S0: nextstate = S1;
			S1: nextstate = S2;
			S2: nextstate = S3;
			S3: nextstate = S4;
			S4: nextstate = S0;
			default: nextstate = S0;
		endcase
		
		case (state)
			S0: ent_teclado=4'b1111;
			S1: ent_teclado=4'b1000;
			S2: ent_teclado=4'b0100;
			S3: ent_teclado=4'b0010;
			S4: ent_teclado=4'b0001;
			default: ent_teclado=4'b1111;
		endcase
	end
	
endmodule

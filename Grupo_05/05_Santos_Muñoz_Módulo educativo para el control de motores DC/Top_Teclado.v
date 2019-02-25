`timescale 1ns / 1ps 
module Top_Teclado(clk100,speed,turn,Columna,isDone,Fila /*,sound_flag, enableTeclado*/); 
input clk100; 
/*input enableTeclado;*/
input [3:0]Columna; 
output [3:0]speed;
output turn;
output isDone; 
output [3:0] Fila;
//output reg sound_flag; 


reg w_clk25;
reg clk50;

always @(posedge clk100) clk50 <= ~clk50;
always @(posedge clk50) w_clk25 <= ~w_clk25;

//reg sound_f=0;
//reg counter2= 0;

LectorFila lec_F(.clk_sec(w_clk25), .ent_teclado(Fila));

Teclado teclado(.clk_Teclado(w_clk25), .Fila(Fila), .Columna(Columna), .speed(speed), .isDone(isDone), .turn(turn)/*, .enableTeclado(enableTeclado)*/);

Divisor_Teclado div_T(.clk_T(clk100), .t(w_clk));

//			always @ (posedge clk100)begin
//			if (counter2<=28'h5f5e100) counter2 = counter2 +1; else begin //(100Mhz/1hz)*1.0 para cuadrada con 1.0 = d
//				sound_f <= ~sound_f;
//				counter2 = 0;
//				end
//				if (isDone) begin 
//					 sound_flag <= ~sound_f;
//				end
//		end

endmodule

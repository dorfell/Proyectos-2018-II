`timescale 1ns / 1ps

module PWM_1(clk,signal,speed,turn,speed1, turn1, SwitchManager, in1,in2);
    input clk;
	 input [3:0] speed;
	 input turn;
	 input [3:0] speed1;
	 input turn1;
	 input SwitchManager;
    output signal;
	 output reg in1;
	 output reg in2;
	 
	 
	 
	 reg [19:0] contador = 0; 
	 reg [6:0] porcentaje;
	 	 
// Contador 

	always @(posedge clk) begin

		if (contador < 10000) contador <= contador + 1; // Contar hasta 100000.
		else		contador <= 0; // Resetear contador
		end 

// CONTROL DE VELOCIDAD
	assign signal = (contador < 100*porcentaje)? 1: 0; // led en 1 para el % indicado.
	
always @(speed, speed1, porcentaje, SwitchManager)
	begin
	if (SwitchManager) begin
	case (speed)
		4'b0000: porcentaje <= 7'b0000000; // 0% duty cycle
		4'b0001: porcentaje <= 7'b0010100; // 20% duty cycle
		4'b0010: porcentaje <= 7'b0011110; // 30% duty cycle
		4'b0011: porcentaje <= 7'b0101000; // 40% duty cycle
		4'b0100: porcentaje <= 7'b0110010; // 50% duty cycle
		4'b0101: porcentaje <= 7'b0111100; // 60% duty cycle
		4'b0110: porcentaje <= 7'b1000110; // 70% duty cycle
		4'b0111: porcentaje <= 7'b1010000; // 80% duty cycle
		4'b1000: porcentaje <= 7'b1011010; // 90% duty cycle
		4'b1001: porcentaje <= 7'b1100101; // 100% duty cycle
	endcase
end else begin
	case (speed1)
		4'b0000: porcentaje <= 7'b0000000; // 0% duty cycle
		4'b0001: porcentaje <= 7'b0010100; // 20% duty cycle
		4'b0010: porcentaje <= 7'b0011110; // 30% duty cycle
		4'b0011: porcentaje <= 7'b0101000; // 40% duty cycle
		4'b0100: porcentaje <= 7'b0110010; // 50% duty cycle
		4'b0101: porcentaje <= 7'b0111100; // 60% duty cycle
		4'b0110: porcentaje <= 7'b1000110; // 70% duty cycle
		4'b0111: porcentaje <= 7'b1010000; // 80% duty cycle
		4'b1000: porcentaje <= 7'b1011010; // 90% duty cycle
		4'b1001: porcentaje <= 7'b1100101; // 100% duty cycle
		endcase
end
	end 
	
// CONTROL DE GIRO
always @(turn, turn1, SwitchManager)
begin
	if(SwitchManager) begin
	case (turn)
	1'b1: /*Turn to the right*/
		begin 
			in1 <= 1'b1; 
			in2 <= 1'b0; 
		end
	1'b0: /*Turn to the left*/
		begin 
			in1 <= 1'b0;
			in2 <= 1'b1;
		end
	endcase
	end else begin
		case (turn1)
	1'b1: /*Turn to the right*/
		begin 
			in1 <= 1'b1; 
			in2 <= 1'b0; 
		end
	1'b0: /*Turn to the left*/
		begin 
			in1 <= 1'b0;
			in2 <= 1'b1;
		end
	endcase
	end
end
/**/	
endmodule 
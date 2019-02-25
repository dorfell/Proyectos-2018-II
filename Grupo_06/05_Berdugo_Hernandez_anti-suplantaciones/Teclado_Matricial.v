`timescale 1ns / 1ps

module Teclado_Matricial(
	input clk,
	input [3:0] Fila,
	input [3:0] Columna,
	output reg isDone,
	output reg[6:0]ascii);
//Declaración de las variables necesarias
   reg enable;
	reg[3:0] salida;
	reg[7:0] codigo;
	reg opr;			//se activa cuando se ha primido la tecla, para poseriormene poner en=1
	reg cont;
	
	initial begin
		ascii=7'b0000000;
		salida=4'b0;
		enable=0;
		codigo=8'b00000000;
		cont=0;
		isDone=0;
	end
	
	
	always@(posedge clk)begin //Por cada flanco positivo de la señal de reloj: 
		if(Fila==4'b1111)begin	//Si estan activadas todas las filas
		
			if(Columna == 4'b1000 | Columna == 4'b0100 | Columna == 4'b0010 | Columna == 4'b0001)begin
				salida <= Columna;								//Se guarda el codigo de 4 bits de columna
				
				if(opr == 1) //Si se ha oprimido el boton, enable es 1
					enable <= 1;
				end
			
			else begin
				enable <= 0;
				opr <= 0;
			end	
		end
		
		else begin							//Se empieza a hacer el recorrido 1000 - 0100 - 0010 - 0001
			if(salida == 0)
				codigo <= codigo;
			else begin
				if(Columna == salida)begin	//se vuelve a comparar sal con Columna y solo sera igual cuando este activada la fila en la que se oprimio la tecla
					if(enable == 0)begin 		//una vez se suelta la tecla oprimida se concatena la fila con la columna y se guarda en la variable cod.
						codigo <= {Fila,Columna};		
						opr <= 1;
					end
				end
			end
		end
	end
	
	always@(posedge clk)
		if(enable)begin
			if(~(cont == 0)) begin
				cont <= cont+1'b1;
				isDone=1;
			end
			else
				isDone=0;
		end
		else cont <= 1;
	
	
	always@(posedge clk)
			case(codigo)
		
				8'b10000010: ascii <= 7'b0110000; // 0
				8'b00010001: ascii <= 7'b0110001; // 1
				8'b00010010: ascii <= 7'b0110010; // 2
				8'b00010100: ascii <= 7'b0110011; // 3
				8'b00100001: ascii <= 7'b0110100; // 4
				8'b00100010: ascii <= 7'b0110101; // 5
				8'b00100100: ascii <= 7'b0110110; // 6
				8'b01000001: ascii <= 7'b0110111; // 7
				8'b01000010: ascii <= 7'b0111000; // 8
				8'b01000100: ascii <= 7'b0111001; // 9
				8'b10000001: ascii <= 7'b1111111; // DELETE="*"
				8'b10000100: ascii <= 7'b0001101; // ENTER="#"	
				
				default: ascii <= 7'b0000000; //Vacio
			endcase

endmodule

`timescale 1ns / 1ps
module Teclado(clk_Teclado,Fila,Columna,speed,isDone,turn /*, enableTeclado*/);
	input clk_Teclado;
	/*input enableTeclado;*/
	input [3:0]Fila,Columna;
	output reg[3:0]speed;
	output reg isDone;
	output reg turn;
	reg en;
	reg[3:0]sal;
	reg[7:0]cod;
	reg opr;			//se activa cuando se ha oprimido la tecla, para poseriormene poner en=1
	reg cont;


	initial begin
		speed=4'b0000;
		turn=1'b0;
		sal=4'b0;
		en=0;
		cod=0;
		cont=0;
		isDone=0;

	end
	
	
	always@(posedge clk_Teclado)begin
		if(Fila==4'b1111)begin								//se activan todas las filas
			if(Columna==4'b1000 | Columna==4'b0100 | Columna==4'b0010 | Columna==4'b0001)begin
				sal=Columna;							//se guarda el codigo de 4 bits de columna
				if(opr==1)
					en=1;
			end
			else begin
				en=0;
				opr=0;
			end
		end
		else begin							//se empieza a hacer el recorrido 1000 - 0100 - 0010 - 0001
			if(sal==0)cod=cod;
			else begin
				if(Columna==sal)begin	//se vuelve a comparar sal con Columna y solo sera igual cuando este activada la fila en la que se oprimio la tecla
					if(en==0)begin 		//una vez se suelta la tecla oprimida se concatena la fila con la columna y se guarda en la variable cod.
						cod={Fila,Columna};		
						opr=1;
					end
				end
			end
		end
	end
	
	always@(posedge clk_Teclado) begin
		if(en)begin
			if(~(cont==0)) begin
				cont<=cont+1'b1;
				isDone=1;
			end
			else
				isDone=0;
		end
		else cont<=1;
/*		
			case(cod)
		
				8'b10000010: speed=4'b0000; // 0
				8'b00010001: speed=4'b0001; // 1
				8'b00010010: speed=4'b0010; // 2
				8'b00010100: speed=4'b0011; // 3
				8'b00100001: speed=4'b0100; // 4
				8'b00100010: speed=4'b0101; // 5
				8'b00100100: speed=4'b0110; // 6
				8'b01000001: speed=4'b0111; // 7
				8'b01000010: speed=4'b1000; // 8
				8'b01000100: speed=4'b1001; // 9
				8'b10000001: turn=1'b1; // RIGHT 1 **
				8'b10000010: turn=1'b0; // LEFT 0	##
				default: begin 
				speed=4'b0000; //Vacio
				turn = 1'b1;
				end
			endcase
	*/		
		end
	
		always@(cod, speed, turn) begin
			
			case(cod) //{fila, col}
			
				8'b10000010: speed<=4'b0000; // 0
				8'b00010001: speed<=4'b0001; // 1
				8'b00010010: speed<=4'b0010; // 2
				8'b00010100: speed<=4'b0011; // 3
				8'b00100001: speed<=4'b0100; // 4
				8'b00100010: speed<=4'b0101; // 5
				8'b00100100: speed<=4'b0110; // 6
				8'b01000001: speed<=4'b0111; // 7
				8'b01000010: speed<=4'b1000; // 8
				8'b01000100: speed<=4'b1001; // 9
				8'b10000001: turn<=1'b1; // RIGHT 1 **
				8'b10000100: turn<=1'b0; // LEFT 0	##
					
			endcase
			end
			//NEW

/*	
	always@(*)
			case(cod)
		
				8'b10000010: ascii=7'b0110000; // 0
				8'b00010001: ascii=7'b0110001; // 1
				8'b00010010: ascii=7'b0110010; // 2
				8'b00010100: ascii=7'b0110011; // 3
				8'b00100001: ascii=7'b0110100; // 4
				8'b00100010: ascii=7'b0110101; // 5
				8'b00100100: ascii=7'b0110110; // 6
				8'b01000001: ascii=7'b0110111; // 7
				8'b01000010: ascii=7'b0111000; // 8
				8'b01000100: ascii=7'b0111001; // 9
				8'b10000001: ascii=7'b1111111; // DELETE="*"
				8'b10000010: ascii=7'b0001101; // ENTER="#"	
				default: ascii=7'b0000000; //Vacio
			endcase
*/
endmodule

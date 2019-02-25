
module Teclado(clk50,Columna,isDone,Fila,rg);
	input clk50; 
	input [3:0]Columna;
	

	//output [7:0] anodo;
	wire [3:0]ascii; 
	output isDone; 
	output [3:0] Fila; 
	wire w_clk;
	reg [3:0]r1,r2,r3;
	output [3:0] rg;
	
	Divisor_Teclado div_T(
		.clk_T(clk50), 
		.t(w_clk));
		
	Lector_Fila lec_F(
		.clk_sec(w_clk), 
		.ent_teclado(Fila));

	tec teclado(
		.clk_Teclado(w_clk), 
		.Fila(Fila), 
		.ascii(ascii), 
		.Columna(Columna),
		.isDone(isDone));

	always @(posedge w_clk )begin
         r1 = ascii;
			r2 = r1;
			r3 = r2;
      end
		
	assign rg = ascii & r1 & r2 & r3;


//assign anodo=8'b11111110;
	
endmodule

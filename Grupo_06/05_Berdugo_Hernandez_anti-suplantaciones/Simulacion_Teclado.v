`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:27:37 10/27/2018
// Design Name:   Top_Teclado
// Module Name:   C:/Users/juans/Documents/Universidad/Digital I/Proyecto Final/Proyecto_Final/Simulacion_Teclado.v
// Project Name:  Proyecto_Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_Teclado
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Simulacion_Teclado;

	// Inputs
	reg clk;
	reg [3:0] Columna;

	// Outputs
	wire isDone;
	wire [3:0] anod_1;
	wire [6:0] disp;
	wire [3:0] fila;

	// Instantiate the Unit Under Test (UUT)
	Top_Teclado uut (
		.clk(clk), 
		.Columna(Columna), 
		.isDone(isDone), 
		.anod_1(anod_1), 
		.disp(disp), 
		.fila(fila)
	);

parameter PERIOD = 10;

   always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  
	
	initial begin
		// Initialize Inputs
		clk = 0;
		Columna = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Columna=4'b0100;
	end
      
endmodule


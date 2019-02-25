`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:17:50 02/20/2019
// Design Name:   Top_Project
// Module Name:   C:/Users/juans/Documents/Universidad/Digital I/Proyecto Final/Proyecto_Final/Simulacion.v
// Project Name:  Proyecto_Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_Project
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Simulacion;

	// Inputs
	reg clk;
	reg rst2;
	reg [1:0] etapa;
	reg [2:0] sensor;
	reg enter;
	reg [3:0] fila;
	reg [2:0] Columna;

	// Outputs
	wire rw;
	wire rs;
	wire e;
	wire [6:0] disp;
	wire [7:0] lcd_db;
	wire buzzer_out;
	wire alarm_out1;
	wire alarm_out2;

	// Instantiate the Unit Under Test (UUT)
	Top_Project uut (
		.clk(clk), 
		.rst2(rst2), 
		.etapa(etapa), 
		.sensor(sensor), 
		.enter(enter), 
		.fila(fila), 
		.Columna(Columna), 
		.rw(rw), 
		.rs(rs), 
		.e(e), 
		.disp(disp), 
		.lcd_db(lcd_db), 
		.buzzer_out(buzzer_out), 
		.alarm_out1(alarm_out1), 
		.alarm_out2(alarm_out2)
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
		rst2 = 0;
		etapa = 2'b00;
		sensor = 0;
		enter = 0;
		fila = 0;
		Columna = 0;

		// Wait 100 ns for global reset to finish
		#100000000;
      
		etapa=2'b01;
		sensor=3'b001;
		#100000000;
		
		sensor=3'b101;
		#100000000;
		
		etapa=2'b11;
		fila=4'b0001;
		Columna=3'b001;
		#10000000;
		fila=4'b0000;
		Columna=3'b000;
		#10000000;
		
		fila=4'b0100;
		Columna=3'b100;
		#10000000;
		fila=4'b0000;
		Columna=3'b000;
		#100000000;
		enter=1;
		// Add stimulus here

	end
      
endmodule


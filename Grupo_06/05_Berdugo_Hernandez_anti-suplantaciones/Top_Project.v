`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:11 10/28/2018 
// Design Name: 
// Module Name:    Top_Project 
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
module Top_Project(
	input clk,
	input rst2,
	input [1:0]etapa,
	input [2:0]sensor,
	input enter,
	input [3:0] fila,
	input [2:0] Columna,
	output rw, rs, e, 
	output [6:0] disp,
	output [7:0] lcd_db,
	output buzzer_out,
	output alarm_out1,
	output alarm_out2
    );
	wire notExist;
	wire [3:0] addr;
	wire [2:0] name;
	wire rst;
	wire [39:0] cedula;
	wire [39:0] registro;
	wire isCorrect;
	
Sensor Sensor_instantiate(
	.e(sensor),
	.s2(name),
	.etapa(etapa),
	.clk(clk)
);


ControllerTest_TOP ControllerTest_TOP_instantiate(
	.clk(clk),
	.rst(rst),
	.lcd_rw(rw),
	.lcd_rs(rs),
	.lcd_e(e),
	.lcd_db(lcd_db),
	.name(name),
	.boton(enter),
	.etapa(etapa)
);

Addr_Multiplexor Addr_Multiplexor_instantiate(
	.clk(clk),
	.id(name),
	.addr(addr)
);

ROM2 ROM2_instantiate(
	.clk(clk),
	.addr(addr),
	.data(cedula)
);

Top Top_teclado_instantiate(
	.clk(clk),
	.fila(fila),
	.col(columna),
	.disp(disp),
	.registro(registro),
	.rst(rst2)
);

Comparador_Cedula Comparador_Cedula_instantiate(
	.clk(clk),
	.ROM_data(cedula),
	.Teclado_data(registro),
	.isCorrect(isCorrect) 	
);

Alarma Alarma_instantiate(
	.clk(clk),
	.data(isCorrect),
	.alarm_out1(alarm_out1),
	.alarm_out2(alarm_out2),
	.buzzer_out(buzzer_out)
);

endmodule
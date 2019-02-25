`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:41 02/01/2019 
// Design Name: 
// Module Name:    Top 
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
module Top(
    input clk, rst,
    input [3:0] fila,
    output [2:0] col,
    output [6:0] disp,
	 output [39:0] registro
    );

wire [3:0]num;
wire [3:0]in;
wire found;

teclado teclado (
    .clk(clk), 
    .reset(rst), 
    .fila(fila), 
    .col(col), 
    .found(found), 
    .num(num)
    );
	 
Registro regis (
    .rst(rst), 
    .found(found), 
    .num(num), 
    .registro(registro),
    .disp(in)
    );

Decod Decod (
    .in(in), 
    .out(disp)
    );

endmodule

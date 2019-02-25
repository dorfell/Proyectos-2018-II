`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:50 02/14/2019 
// Design Name: 
// Module Name:    Proyecto 
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
module Proyecto(
		input clk,
		input reset,
		input eoc,
		input [7:0] dout,
		input [3:0] cols,
		input R, G, B,
		output vga_h_sync, vga_v_sync, vga_R, vga_G, vga_B,
		output [3:0] rows,
		output st,
		output oe,
		output ale,
		output clk_adc,
		output [7:0] ANODE,
		output [6:0] SEG,
		output pwm,
		output pwm1
    );

wire [1:0] giro;
wire [7:0] adc2;
wire [7:0] teclado;
wire [3:0] registrotd;
wire [3:0] registrotu;
wire [3:0] registrosd;
wire [3:0] registrosu;
wire [3:0] registrosc;

Teclado top(clk,reset,cols,rows,teclado,registrotd,registrotu);

adc0809 adc0809(clk,reset,eoc,dout,st,oe,ale,clk_adc,ANODE,SEG,adc2,registrosu,registrosd, registrosc);

Controlador Controlador(adc2,teclado,giro);

motor motor(clk,reset,giro,pwm);

Alarma Alarma(clk,reset,adc2,pwm1);

VGA system(clk,reset,R,G,B,registrotd,registrotu, registrosd,registrosu, registrosc,vga_h_sync,vga_v_sync, vga_R, vga_G, vga_B);

endmodule


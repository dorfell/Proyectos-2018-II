`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:30 02/11/2019 
// Design Name: 
// Module Name:    Controlador 
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
module Controlador(
	input [7:0] adc,
	input [7:0] teclado,
	output [1:0] giro
    );
	 
wire [7:0] adc1;
wire [7:0] teclado1;
reg [7:0] diferencia;
reg [1:0] giro1;
wire [1:0] A=2'b00;
wire [1:0] B=2'b01;
wire [1:0] C=2'b10;
wire [1:0] D=2'b11;

assign adc1=adc;
assign teclado1=teclado;

always @(adc1,teclado1) begin
if (adc1<teclado1)
	diferencia = 8'b00000000;
	else 
	 diferencia = (adc1-teclado1);
end

always @(diferencia) begin
  if (diferencia == 0) 
    giro1=A;
  else if (diferencia <=20)
	 giro1=B;
		else if (diferencia <=40 && diferencia>20)
				 giro1=C;
				else 
				giro1=D;
end

assign giro=giro1;

endmodule

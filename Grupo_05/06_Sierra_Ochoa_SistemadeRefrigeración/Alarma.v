`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:09 02/14/2019 
// Design Name: 
// Module Name:    Alarma 
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
module Alarma(
	input clk,reset,
	input [7:0] adc3,
	output pwm2	
    );


reg [27:0] qq1;
wire [27:0] dd1;
wire [7:0] apwm,apwm2;
reg [7:0] apwm3;
reg alarma;
assign dd1 =  (qq1 == 28'h38e28) ? 28'b0 : qq1 + 1'b1;


always @(posedge clk or posedge reset)
      if (reset) begin
         qq1 <= 28'b0;
      end else begin
         qq1 <= dd1;
      end
		
assign apwm = (qq1 < 28'h38270) ? 1'b1 : 1'b0;
assign apwm2 = (qq1 < 28'h14) ? 1'b1 : 1'b0;

always @(adc3) begin
  if (adc3>=60) 
    alarma=1;
  else 
	 alarma=0;
end

always @(alarma, apwm,apwm2)
      case (alarma)
         1'b0: apwm3 = apwm2;
         1'b1: apwm3 = apwm;
      endcase

assign pwm2=apwm3;	
endmodule

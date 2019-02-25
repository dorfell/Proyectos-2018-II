`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:23 02/13/2019 
// Design Name: 
// Module Name:    motor 
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
module motor(
	input clk,reset,
	input [1:0] giro,
	output pwm	
   );

reg [27:0] qq;
wire [27:0] dd;
wire sig_pwm1, sig_pwm2, sig_pwm3, sig_pwm4;
reg pwm1;



assign dd =  (qq == 28'h989680) ? 28'b0 : qq + 1'b1;

always @(posedge clk or posedge reset)
      if (reset) begin
         qq <= 28'b0;
      end else begin
         qq <= dd;
      end
		
assign sig_pwm1 = (qq < 28'h64) ? 1'b1 : 1'b0;
assign sig_pwm2 = (qq < 28'h3d0900) ? 1'b1 : 1'b0;
assign sig_pwm3 = (qq < 28'h6acfc0) ? 1'b1 : 1'b0;
assign sig_pwm4 = (qq < 28'h958940) ? 1'b1 : 1'b0;



   always @(giro, sig_pwm1, sig_pwm2, sig_pwm3, sig_pwm4)
      case (giro)
         2'b00: pwm1 = sig_pwm1;
         2'b01: pwm1 = sig_pwm2;
         2'b10: pwm1 = sig_pwm3;
         2'b11: pwm1 = sig_pwm4;
      endcase
//		
//always @(giro) begin
//if (giro=="00") 
//		pwm1 = 1'b0;
//		else if (giro=="01")
//			 pwm1 = (qq < 28'h4C4B400) ? 1'b0 : 1'b1;
//			else if (giro=="10")
//				pwm1 <= (qq < 28'h8583B00) ? 1'b0 : 1'b1;		
//				else 
//				pwm1 <= (qq < 28'hABA9500) ? 1'b0 : 1'b1;
//end

//
//
assign pwm=pwm1;
endmodule 
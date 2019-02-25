`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:47 02/18/2019 
// Design Name: 
// Module Name:    AudioDriver 
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
module AudioDriver(
		input wire [9:0] adc_measure,
		input output_enable,
		input clk, reset,
		output pwm_out,
		output pwm_sd
    );


reg [9:0] duty_cycle;	 
 
 
 always@(negedge output_enable)
 begin
	if (output_enable)
		duty_cycle <= adc_measure;
	else
		duty_cycle <= 10'd0;
 end
	 
 



endmodule

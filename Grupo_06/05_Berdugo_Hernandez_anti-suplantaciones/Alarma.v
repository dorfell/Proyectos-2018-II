`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:23 10/22/2018 
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
	input clk,
	input data,
	output alarm_out1,
	output alarm_out2,
	output buzzer_out
    );

reg [27:0] qq;
wire [27:0] dd;

	assign dd=(qq ==28'h5F5E100) ? 28'b0: qq+1'b1;
	assign alarm_out1 = (qq < 28'h2FAF080) ? 1'b0: 1'b1;
	assign alarm_out2 =! alarm_out1;
	assign buzzer_out=alarm_out1;
	
always @(posedge clk)
	if (!data) begin
		qq <= 28'b0;
	end else begin
		qq <= dd;
	end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:53 01/29/2019 
// Design Name: 
// Module Name:    Leds 
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
module Leds(
    input [7:0] angle_y,
    input [7:0] angle_x,
    output [7:0] Leds
    );
	 
	 parameter [7:0] max = 8'd180;
	 parameter [7:0] min = 8'd90;
	 
	 // eje x
	 assign Leds[4] = angle_x <= min ? 1'b1 : 1'b0;
	 assign Leds[6] = angle_x < max && angle_x > min ? 1'b1 : 1'b0;
	 assign Leds[5] = angle_x < max && angle_x > min ? 1'b1 : 1'b0;
	 assign Leds[7] = angle_x >= max  ? 1'b1 : 1'b0;

	 // eje y

	 assign Leds[0] = angle_y <= min ? 1'b1 : 1'b0;
	 assign Leds[2] = angle_y < max && angle_y > min  ? 1'b1 : 1'b0;
	 assign Leds[1] = angle_y < max && angle_y > min  ? 1'b1 : 1'b0;
	 assign Leds[3] = angle_y >= max ? 1'b1 : 1'b0;
endmodule

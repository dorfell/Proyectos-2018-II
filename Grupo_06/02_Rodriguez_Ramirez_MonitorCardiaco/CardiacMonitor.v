`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:41 02/19/2019 
// Design Name: 
// Module Name:    CardiacMonitor 
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
module CardiacMonitor(
		input dout,
		output cs, din, clk_out,
		input clk, reset,
		output led1, led2, led3, led4, led5, led6, led7, led8,
		output pwm_out,
		output pwm_sd,
		output [1:0] state,
		output [7:0] an,
		output [6:0] seg,
		output dp,
		output beat_o,
		output counting,
		input PS2_CLK,
		input PS2_DATA, 		
		input [15:0] sw_let,
		output hsync, vsync,
		output [11:0] rgb
    );

wire [9:0] adc_measure;
assign dp = 1'b1;
wire [7:0] bpm_count;

ADC adc_unit (
    .clk(clk), 
    .start(reset), 
    .dout(dout), 
    .cs(cs), 
    .din(din), 
	 .clk_out(clk_out), 
    .adc_measure(adc_measure[9:0])
    );


siren_pwm audio_unit (
    .clk(clk), 
    .duty_cycle(adc_measure[9:0]), 
    .pwm_out(pwm_out), 
    .pwm_sd(pwm_sd)
    );
	 

top_bpm_counter bpm_counter (
    .enable(clk), 
    .rst(reset), 
    .bpm_count(bpm_count[7:0]), 
    .adc_measure(adc_measure[9:0]), 
    .state(state[1:0]), 
    .anode(an[7:0]), 
    .disp(seg[6:0]),
	 .beat_o(beat_o),
	 .counting(counting)
    );

decodificador_leds leds (
    .adc_measure(adc_measure[9:0]), 
    .output_enable(cs), 
    .led1(led1), 
    .led2(led2), 
    .led3(led3), 
    .led4(led4), 
    .led5(led5), 
    .led6(led6), 
    .led7(led7), 
    .led8(led8)
    );
	 
 wire [127:0] key_pressed;
	 
 top_keyboard PS2_KEYBOARD (
    .CLK100MHZ(clk), 
    .PS2_CLK(PS2_CLK), 
    .PS2_DATA(PS2_DATA), 
    .reset(reset), 
    .key_pressed(key_pressed), 
    .ascii_code_done(ascii_code_done)
    );
	 
 vga_graph VGA_unit (
    .clk(clk), 
    .reset(reset), 
    .ADC(adc_measure[9:0]), 
    .sw_let(sw_let), 
    .key_pressed(key_pressed), 
    .ascii_code_done(ascii_code_done), 
    .hsync(hsync), 
    .vsync(vsync), 
    .rgb(rgb), 
    .BPM(bpm_count[7:0])
    );


endmodule

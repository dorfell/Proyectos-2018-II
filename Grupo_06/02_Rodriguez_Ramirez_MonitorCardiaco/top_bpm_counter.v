`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:53:42 02/20/2019 
// Design Name: 
// Module Name:    top_bpm_counter 
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
module top_bpm_counter(
		input enable, rst,
		output [7:0] bpm_count,
		input  [9:0] adc_measure,
		output [1:0] state,
		output [7:0] anode,
		output [6:0] disp,
		output beat_o,
		output counting
    );

 assign beat_o = beat;
 wire [11:0] bcd;

contador_m counter (
    .enable(enable), 
    .rst(rst), 
    .beat(beat), 
    .adc_measure(adc_measure[9:0]), 
    .state(state[1:0])
    );
 
divisor_1hz CLK_1HZ (
 .clk(enable), 
 .rst(rst), 
 .enable(clk_1hz)
 );

 
bpm bpm_cnt (
 .beat_in(beat), 
 .reset(rst), 
 .clk_1hz(clk_1hz), 
 .bpm_count(bpm_count[7:0]),
 .counting(counting)
 );

bin2BCD bin2BCD (
    .count(bpm_count[7:0]), 
    .bcd(bcd[11:0])
    );
	 
 decodificador_7seg seg_m (
 .enable(enable), 
    .bcd(bcd[11:0]), 
    .disp(disp[6:0]),
	 .an(anode[7:0])
    );


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:16 02/07/2019 
// Design Name: 
// Module Name:    top_keyboard 
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
module top_keyboard(
	 input CLK100MHZ,
    input PS2_CLK,
    input PS2_DATA,
	 input reset,
	 output [127:0] key_pressed,
	 output ascii_code_done
    );

wire [7:0] code;
wire [7:0] scan_code;
wire [7:0] extended_code;

divisor divisor (
    .CLK100MHZ(CLK100MHZ), 
    .CLK50MHZ(CLK50MHZ)
    );

ps2_rx ps2_receiver (
	.clk(CLK50MHZ),
	.kclk(PS2_CLK),
	.kdata(PS2_DATA),
	.code(code[7:0]), 
	.rx_done(rx_done)
	);


ps2_fsm ps2_fsm (
    .rx_done(rx_done), 
    .reset(reset), 
    .code(code[7:0]), 
    .scan_code(scan_code[7:0]), 
    .extended_code(extended_code[7:0]), 
    .code_done(code_done)
    );


	 
ps2_to_VGA ps2_to_VGA (
	 .ps2_code_done(code_done),
	 .reset (reset),
	 .scan_code(scan_code),
    .key_pressed(key_pressed),
	 .ascii_code_done(ascii_code_done)
	 );
	 
endmodule

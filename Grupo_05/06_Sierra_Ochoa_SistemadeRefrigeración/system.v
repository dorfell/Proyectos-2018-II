`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:21 09/09/2018 
// Design Name: 
// Module Name:    VGA 
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
module VGA(
	input clk,
	input rst,
	input R, G, B,
	input [3:0] registrotd,registrotu, registrosd, registrosu,registrosc,
	output vga_h_sync, vga_v_sync, vga_R, vga_G, vga_B
 );
 
 wire [10:0] busx;
 wire [10:0] busy;
 wire [4:0] buscharacter;
 wire [3:0] busaddr;
 wire [2:0] buscol;

 
	hvsync_generator hsync (
    .clk(clk), 
	 .rst(rst),
    .vga_h_sync(vga_h_sync), 
    .vga_v_sync(vga_v_sync), 
    .CounterX(busx),
    .CounterY(busy)
    );


	RGB RGB (
    .R(R), 
    .G(G), 
    .B(B), 
    .pix_x(busx), 
    .pix_y(busy), 
    .rom_bit(rom_bit), 
	 .registrotd(registrotd),
	 .registrotu(registrotu),
	 .registrosd(registrosd), 
	 .registrosu(registrosu),
	 .registrosc(registrosc),
    .vga_R(vga_R), 
    .vga_G(vga_G), 
    .vga_B(vga_B), 
    .rom_addr(busaddr), 
    .rom_col(buscol), 
    .character_select(buscharacter)
    );
	 
font font (
    .character_select(buscharacter), 
    .rom_addr(busaddr), 
    .rom_col(buscol), 
    .rom_bit(rom_bit)
    );
 
 
endmodule

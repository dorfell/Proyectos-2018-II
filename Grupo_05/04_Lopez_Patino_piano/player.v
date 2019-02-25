`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:13 05/13/2016 
// Design Name: 
// Module Name:    player 
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
module player(
	input [11:0] keys,
	input clk,
	output [11:0] speaker
);

		reg [11:0] flipper;
		assign speaker = flipper;

		reg [17:0] counterC4;  //DO
		reg [17:0] countersC4; //DO#
		reg [17:0] counterD4;  //RE
		reg [17:0] countersD4; //RE#
		reg [17:0] counterE4;  //MI
		reg [17:0] counterF4;  //FA
		reg [17:0] countersF4; //FA#
		reg [17:0] counterG4;  //SOL
		reg [17:0] countersG4; //SOL#
		reg [17:0] counterA4;  //LA
		reg [17:0] countersA4; //LA#
		reg [17:0] counterB4;  //SI
 
		always @(posedge clk) 
		begin
			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[1] ) // DO sostenido presionado
				begin 
					if( countersC4 == 90194 ) 
						begin
						countersC4 <= 0;
						flipper [1] <= ~flipper [1];
						end 
					else countersC4 <= countersC4 + 1;
				end 
			else flipper[1] <= 0;

			if ( keys[2] ) // RE presionado
				begin 
					if( counterD4 == 85132 ) 
						begin
						counterD4 <= 0;
						flipper [2] <= ~flipper [2];
						end 
					else counterD4 <= counterD4 + 1;
				end 
			else flipper[2] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			if ( keys[0] ) // DO presionado
				begin 
					if( counterC4 == 95555 ) 
						begin
						counterC4 <= 0;
						flipper [0] <= ~flipper [0];
						end 
					else counterC4 <= counterC4 + 1;
				end 
			else flipper[0] <= 0;

			

			end

endmodule
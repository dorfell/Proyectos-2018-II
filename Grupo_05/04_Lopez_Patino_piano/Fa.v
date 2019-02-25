`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
	module Fa(
		input clk,
		output reg speaker = 0
		 );

		reg [18:0] counter = 0;
		
		always @( posedge clk )
 
			begin
					if( counter == 71586 ) 
					begin
						counter <= 0;
						speaker <= ~speaker;
					end 
					else counter <= counter + 1;
			end
					
	endmodule
	

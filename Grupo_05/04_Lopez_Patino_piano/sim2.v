`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:48:39 05/17/2016
// Design Name:   Do
// Module Name:   C:/Users/sebastian/Desktop/piano/sim2.v
// Project Name:  piano
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Do
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sim2;

	// Inputs
	reg clk;

	// Outputs
	wire speaker;

	// Instantiate the Unit Under Test (UUT)
	Do uut (
		.clk(clk), 
		.speaker(speaker)
	);

	initial
	begin
	clk = 1'b0;
	end
	always
	# 10 clk = ~clk;
      

      
endmodule


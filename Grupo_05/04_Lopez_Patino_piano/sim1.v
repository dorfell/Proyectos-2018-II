`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:38:07 05/17/2016
// Design Name:   main
// Module Name:   C:/Users/sebastian/Desktop/piano/sim1.v
// Project Name:  piano
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sim1;

	// Inputs
	reg [11:0] keys;
	reg clk;

	// Outputs
	wire [11:0] speaker;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.keys(keys), 
		.clk(clk), 
		.speaker(speaker)
	);

	initial
	begin
	clk = 1'b0;
	keys = 12'b0;
	keys [5] = 1'b1;
	end
	always
	# 10 clk = ~clk;
      
      
endmodule


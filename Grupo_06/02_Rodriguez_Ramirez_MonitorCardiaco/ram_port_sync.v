`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:01 02/16/2019 
// Design Name: 
// Module Name:    ram_port_sync 
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
module ram_port_sync(
		input wire clk,
		input wire we,
		input wire [9:0] addr_in,
		input wire [9:0] addr_out,
		input wire [9:0] din,
		output wire [9:0] dout
    );

	reg [9:0]ram [1023:0];
	
	reg [9:0] addr_out_reg;
	
	always @(posedge clk) 
	begin
		if (we) // n,rile operation
			ram [addr_in] <= din;
			addr_out_reg <= addr_out;
	end

assign dout = ram [addr_out_reg] ;

endmodule
	

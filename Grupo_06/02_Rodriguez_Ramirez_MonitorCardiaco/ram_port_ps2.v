`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:55 02/17/2019 
// Design Name: 
// Module Name:    ram_port_ps2 
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
module ram_port_ps2(
		input wire we,
		input wire [3:0] addr_in,
		input wire [3:0] addr_out,
		input wire [127:0] din,
		output wire [127:0] dout
    );
	reg [127:0]ram [15:0];
	
	always @*
	begin
		if (we) // n,rile operation
			ram [addr_in] <= din;
	end
			
assign dout = ram [addr_out] ;



endmodule

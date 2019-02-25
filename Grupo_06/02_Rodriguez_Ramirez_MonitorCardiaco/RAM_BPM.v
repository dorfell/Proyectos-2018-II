`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:03 02/20/2019 
// Design Name: 
// Module Name:    RAM_BPM 
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
module RAM_BPM(
		input wire we,
		input wire [1:0] addr_in,
		input wire [1:0] addr_out,
		input wire [127:0] din,
		output wire [127:0] dout
    );
	reg [127:0]ram [3:0];
	
	always @*
	begin
		if (we) // n,rile operation
			ram [addr_in] <= din;
	end
			
assign dout = ram [addr_out] ;

endmodule

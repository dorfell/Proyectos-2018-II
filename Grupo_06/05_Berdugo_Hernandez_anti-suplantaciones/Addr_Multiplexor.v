`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:36 10/28/2018 
// Design Name: 
// Module Name:    Addr_Multiplexor 
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
	module Addr_Multiplexor(
	input clk,
	input [2:0] id, 
	output reg [3:0] addr
    );
always@(posedge clk) begin
	case(id) 
		3'b001	: addr <= 0;
		3'b010	: addr <= 1;
		3'b011	: addr <= 2;
		3'b101	: addr <= 3;
		3'b110	: addr <= 4;
	endcase
end		
endmodule

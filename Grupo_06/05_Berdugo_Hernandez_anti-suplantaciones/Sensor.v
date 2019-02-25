`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:18 02/18/2019 
// Design Name: 
// Module Name:    Sensor 
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
module Sensor(
	input clk,
	input [2:0] e,
	input [1:0]etapa,
	output reg [2:0] s2
    );
	reg [2:0] s1;
	always @(posedge clk) begin 
	if (etapa[0]==0 & etapa[1]==1) begin
	s1 = e;
	end
	else if(etapa[0]==1 & etapa[1]==1) begin
	s2 = s1;
	end
end

	 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:26 08/28/2018 
// Design Name: 
// Module Name:    Decod 
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
module Decod(in,out);
    input [3:0] in;
    output [6:0] out;
	 
	 assign out = (in==4'b0000)? 7'b1000000:
					  (in==4'b0001)? 7'b1111001:
					  (in==4'b0010)? 7'b0100100:
					  (in==4'b0011)? 7'b0110000:
					  (in==4'b0100)? 7'b0011001:
					  (in==4'b0101)? 7'b0010010:
					  (in==4'b0110)? 7'b0000010:
				 	  (in==4'b0111)? 7'b1111000:
					  (in==4'b1000)? 7'b0000000:
					  (in==4'b1001)? 7'b0011000:
					  (in==4'b1111)? 7'b0000000:
					  7'b1111111;

endmodule

`timescale 1ns / 1ps

module Registro(
    input   rst, found,
	 input   [3:0] num,
	 output reg [39:0] registro,
	 output [3:0] disp);

reg [39:0] nregistro;

assign disp = num;

always  @(posedge found or posedge rst)
       #4000000000
      if(rst == 1) registro = 0;
      else  registro = nregistro;

    always @(registro or num or found)
		 #4000000000
       nregistro = {registro[11:0], num};


endmodule

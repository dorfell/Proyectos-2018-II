`timescale 1ns / 1ps

module SevenSegDisplayXXXX(
		input clk100mhz, input [6:0] unidades7, input [6:0] decenas7, input [6:0] centenas7, output reg [6:0] display, 
		output [7:0] an
    );

//100MHz/200k = (500/2)Hz
    parameter max_refresh_count = 200000; 
    reg [19:0] refresh_count=0;
    reg [1:0] refresh_state=0;
    reg [7:0] display_sel;
	
assign an = display_sel;

    always @(posedge clk100mhz)
    begin 
	    if (refresh_count < max_refresh_count) refresh_count <= refresh_count + 1;
	    else if(refresh_state <= 2'b11) begin
		refresh_state <= refresh_state + 1'b1;
		refresh_count <= 0; 
      end else refresh_state <=0;
    end

always @(refresh_state) 
        begin
            case (refresh_state) 
                2'b00: display_sel <= 8'b11111110; 
                2'b01: display_sel <= 8'b11111101;
                2'b10: display_sel <= 8'b11111011; 
                2'b11: display_sel <= 8'b11110111;
                default: display_sel <= 8'b11111111; 
            endcase 

//MOSTRAR DÍGITOS
          case (display_sel) 					//sieteSegmentos
                8'b11111110:  display <= unidades7; //0//unidades 
                8'b11111101:  display <= decenas7; //1//decenas
                8'b11111011:  display <= centenas7; //2//centenas
                8'b11110111:	display <= 7'b1000000; //3//num0 
                default:      display <= 7'b1111111; 
	    endcase
	end
endmodule


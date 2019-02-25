`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:23 09/09/2018 
// Design Name: 
// Module Name:    font 
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
module font(
input [4:0] character_select,
input [3:0] rom_addr,
input [2:0] rom_col,
output rom_bit
    );
//Número de fila seleccionado por rom_addr
reg [7:0] rom_data;
//Números asignados a cada caractér
localparam ce_addr = 5'd0;
localparam uno_addr = 5'd1;
localparam dos_addr = 5'd2;
localparam tres_addr = 5'd3;
localparam cua_addr = 5'd4;
localparam cin_addr = 5'd5;
localparam seis_addr = 5'd6;
localparam sie_addr = 5'd7;
localparam och_addr = 5'd8;
localparam nue_addr = 5'd9;
localparam t_addr = 5'd11;
localparam e_addr = 5'd12;
localparam m_addr = 5'd13;
localparam p_addr = 5'd14;
localparam r_addr = 5'd25;
localparam a_addr = 5'd16;
localparam u_addr = 5'd17;
localparam c_addr = 5'd18;
localparam l_addr = 5'd19;
localparam d_addr = 5'd10;
localparam s_addr = 5'd20;

localparam cero_addr = 5'd15;

//rom_bit 1 o 0 según el bit seleccionado del font
assign rom_bit = rom_data [rom_col];
always@(character_select or rom_addr)
begin

//Nada
if(character_select==cero_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b00000000;  
4'h2: rom_data = 8'b00000000;  
4'h3: rom_data = 8'b00000000;  
4'h4: rom_data = 8'b00000000;  
4'h5: rom_data = 8'b00000000; 
4'h6: rom_data = 8'b00000000; 
4'h7: rom_data = 8'b00000000;  
4'h8: rom_data = 8'b00000000;  
4'h9: rom_data = 8'b00000000;
4'hA: rom_data = 8'b00000000;
4'hB: rom_data = 8'b00000000; 
4'hC: rom_data = 8'b00000000; 
4'hD: rom_data = 8'b00000000;
4'hE: rom_data = 8'b00000000;
4'hF: rom_data = 8'b00000000;
	
endcase
end

else

//Letra T
if(character_select==t_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111110; 
4'h2: rom_data = 8'b11111110;  
4'h3: rom_data = 8'b00110000;  
4'h4: rom_data = 8'b00110000;  
4'h5: rom_data = 8'b00110000;  
4'h6: rom_data = 8'b00110000;  
4'h7: rom_data = 8'b00110000;  
4'h8: rom_data = 8'b00110000;  
4'h9: rom_data = 8'b00110000; 
4'hA: rom_data = 8'b00110000; 
4'hB: rom_data = 8'b00110000; 
4'hC: rom_data = 8'b00110000; 
4'hD: rom_data = 8'b00110000;
4'hE: rom_data = 8'b00110000;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra E
if(character_select==e_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111110; 
4'h2: rom_data = 8'b01111110;  
4'h3: rom_data = 8'b01100000;  
4'h4: rom_data = 8'b01100000;  
4'h5: rom_data = 8'b01100000;  
4'h6: rom_data = 8'b01111100;  
4'h7: rom_data = 8'b01111100;  
4'h8: rom_data = 8'b01100000;  
4'h9: rom_data = 8'b01100000; 
4'hA: rom_data = 8'b01100000; 
4'hB: rom_data = 8'b01100000; 
4'hC: rom_data = 8'b01100000; 
4'hD: rom_data = 8'b01111110;
4'hE: rom_data = 8'b11111110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra M
if(character_select==m_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b10000010; 
4'h2: rom_data = 8'b11000110;  
4'h3: rom_data = 8'b11101110;  
4'h4: rom_data = 8'b11111110;  
4'h5: rom_data = 8'b11111110;  
4'h6: rom_data = 8'b11111110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11010110;  
4'h9: rom_data = 8'b11000110;
4'hA: rom_data = 8'b11000110; 
4'hB: rom_data = 8'b11000110; 
4'hC: rom_data = 8'b11000110;
4'hD: rom_data = 8'b11000110;
4'hE: rom_data = 8'b11000110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra P
if(character_select==p_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111110; 
4'h2: rom_data = 8'b11111110;  
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110; 
4'h6: rom_data = 8'b11111110; 
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11000000;  
4'h9: rom_data = 8'b11000000;
4'hA: rom_data = 8'b11000000; 
4'hB: rom_data = 8'b11000000; 
4'hC: rom_data = 8'b11000000;
4'hD: rom_data = 8'b11000000;
4'hE: rom_data = 8'b11000000;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra R
if(character_select==r_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111110; 
4'h2: rom_data = 8'b11111110;  
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110; 
4'h6: rom_data = 8'b11111110; 
4'h7: rom_data = 8'b11111100;  
4'h8: rom_data = 8'b11111100;  
4'h9: rom_data = 8'b11000110;
4'hA: rom_data = 8'b11000110; 
4'hB: rom_data = 8'b11000110; 
4'hC: rom_data = 8'b11000110;
4'hD: rom_data = 8'b11000110;
4'hE: rom_data = 8'b11000110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra A
if(character_select==a_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111110; 
4'h2: rom_data = 8'b11111110;  
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110; 
4'h6: rom_data = 8'b11111110; 
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110;  
4'h9: rom_data = 8'b11000110;
4'hA: rom_data = 8'b11000110; 
4'hB: rom_data = 8'b11000110; 
4'hC: rom_data = 8'b11000110;
4'hD: rom_data = 8'b11000110;
4'hE: rom_data = 8'b11000110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra U
if(character_select==u_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11000110; 
4'h2: rom_data = 8'b11000110;  
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110; 
4'h6: rom_data = 8'b11000110; 
4'h7: rom_data = 8'b11000110;  
4'h8: rom_data = 8'b11000110;  
4'h9: rom_data = 8'b11000110;
4'hA: rom_data = 8'b11000110; 
4'hB: rom_data = 8'b11000110; 
4'hC: rom_data = 8'b11000110;
4'hD: rom_data = 8'b11000110;
4'hE: rom_data = 8'b11111110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra L
if(character_select==l_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11100000; 
4'h2: rom_data = 8'b11000000;  
4'h3: rom_data = 8'b11000000;  
4'h4: rom_data = 8'b11000000;  
4'h5: rom_data = 8'b11000000; 
4'h6: rom_data = 8'b11000000; 
4'h7: rom_data = 8'b11000000;  
4'h8: rom_data = 8'b11000000;  
4'h9: rom_data = 8'b11000000;
4'hA: rom_data = 8'b11000000; 
4'hB: rom_data = 8'b11000000; 
4'hC: rom_data = 8'b11000000;
4'hD: rom_data = 8'b11000010;
4'hE: rom_data = 8'b11111110;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else


//Letra D
if(character_select==d_addr)
	begin
		case (rom_addr)
  
4'h0: rom_data = 8'b00000000;  
4'h1: rom_data = 8'b11111000; 
4'h2: rom_data = 8'b01101100;  
4'h3: rom_data = 8'b01100110;  
4'h4: rom_data = 8'b01100110;  
4'h5: rom_data = 8'b01100110;  
4'h6: rom_data = 8'b01100110;  
4'h7: rom_data = 8'b01100110;  
4'h8: rom_data = 8'b01100110;  
4'h9: rom_data = 8'b01100110;
4'hA: rom_data = 8'b01100110;
4'hB: rom_data = 8'b01100110;
4'hC: rom_data = 8'b01100110;
4'hD: rom_data = 8'b01101100;
4'hE: rom_data = 8'b11111000;
4'hF: rom_data = 8'b00000000;
	
endcase
end
else

//Letra C
if(character_select==c_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b00111100;  
4'h2: rom_data = 8'b01100110;  
4'h3: rom_data = 8'b11000010;  
4'h4: rom_data = 8'b11000000;  
4'h5: rom_data = 8'b11000000;  
4'h6: rom_data = 8'b11000000;  
4'h7: rom_data = 8'b11000000;  
4'h8: rom_data = 8'b11000000;  
4'h9: rom_data = 8'b11000000; 
4'hA: rom_data = 8'b11000000; 
4'hB: rom_data = 8'b11000000; 
4'hC: rom_data = 8'b11000010;  
4'hD: rom_data = 8'b01100110;
4'hE: rom_data = 8'b00111100; 
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra S
if(character_select==s_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11000110;  
4'h3: rom_data = 8'b11000000;  
4'h4: rom_data = 8'b11000000;  
4'h5: rom_data = 8'b11000000;  
4'h6: rom_data = 8'b11000000;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110;  
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110; 
4'hB: rom_data = 8'b00000110; 
4'hC: rom_data = 8'b00000110;  
4'hD: rom_data = 8'b11000110;
4'hE: rom_data = 8'b11111110; 
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 1
if(character_select==uno_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b00000110;  
4'h2: rom_data = 8'b00000110;
4'h3: rom_data = 8'b00000110;  
4'h4: rom_data = 8'b00000110;  
4'h5: rom_data = 8'b00000110;  
4'h6: rom_data = 8'b00000110;  
4'h7: rom_data = 8'b00000110;  
4'h8: rom_data = 8'b00000110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110; 
4'hB: rom_data = 8'b00000110; 
4'hC: rom_data = 8'b00000110;  
4'hD: rom_data = 8'b00000110;
4'hE: rom_data = 8'b00000110; 
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 2
if(character_select==dos_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b00000110;  
4'h4: rom_data = 8'b00000110;  
4'h5: rom_data = 8'b00000110;  
4'h6: rom_data = 8'b00000110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b11000000; 
4'hA: rom_data = 8'b11000000;  
4'hB: rom_data = 8'b11000000;  
4'hC: rom_data = 8'b11000000;   
4'hD: rom_data = 8'b11111110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 8
if(character_select==och_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110;  
4'h6: rom_data = 8'b11000110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b11000110; 
4'hA: rom_data = 8'b11000110;  
4'hB: rom_data = 8'b11000110;  
4'hC: rom_data = 8'b11000110;   
4'hD: rom_data = 8'b11111110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 6
if(character_select==seis_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b11000000;  
4'h4: rom_data = 8'b11000000;  
4'h5: rom_data = 8'b11000000;  
4'h6: rom_data = 8'b11000000;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b11000110; 
4'hA: rom_data = 8'b11000110;  
4'hB: rom_data = 8'b11000110;  
4'hC: rom_data = 8'b11000110;   
4'hD: rom_data = 8'b11111110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 5
if(character_select==cin_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b11000000;  
4'h4: rom_data = 8'b11000000;  
4'h5: rom_data = 8'b11000000;  
4'h6: rom_data = 8'b11000000;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110;  
4'hB: rom_data = 8'b00000110;  
4'hC: rom_data = 8'b00000110;   
4'hD: rom_data = 8'b11111110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 3
if(character_select==tres_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b00000110;  
4'h4: rom_data = 8'b00000110;  
4'h5: rom_data = 8'b00000110;  
4'h6: rom_data = 8'b00000110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110;  
4'hB: rom_data = 8'b00000110;  
4'hC: rom_data = 8'b00000110;   
4'hD: rom_data = 8'b11111110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 7
if(character_select==sie_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b00000110;  
4'h4: rom_data = 8'b00000110;  
4'h5: rom_data = 8'b00000110;  
4'h6: rom_data = 8'b00000110;  
4'h7: rom_data = 8'b00000110;  
4'h8: rom_data = 8'b00000110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110;  
4'hB: rom_data = 8'b00000110;  
4'hC: rom_data = 8'b00000110;   
4'hD: rom_data = 8'b00000110; 
4'hE: rom_data = 8'b00000110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 9
if(character_select==nue_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110;  
4'h6: rom_data = 8'b11000110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110;  
4'hB: rom_data = 8'b00000110;  
4'hC: rom_data = 8'b00000110;   
4'hD: rom_data = 8'b00000110; 
4'hE: rom_data = 8'b00000110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 0
if(character_select==ce_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11111110;  
4'h2: rom_data = 8'b11111110;
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110;  
4'h6: rom_data = 8'b11000110;  
4'h7: rom_data = 8'b11000110;  
4'h8: rom_data = 8'b11000110; 
4'h9: rom_data = 8'b11000110; 
4'hA: rom_data = 8'b11000110;  
4'hB: rom_data = 8'b11000110;  
4'hC: rom_data = 8'b11000110;   
4'hD: rom_data = 8'b11000110; 
4'hE: rom_data = 8'b11111110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

//Letra 4
if(character_select==cua_addr)
begin
case (rom_addr)
  
4'h0: rom_data = 8'b00000000;
4'h1: rom_data = 8'b11000110;  
4'h2: rom_data = 8'b11000110;
4'h3: rom_data = 8'b11000110;  
4'h4: rom_data = 8'b11000110;  
4'h5: rom_data = 8'b11000110;  
4'h6: rom_data = 8'b11000110;  
4'h7: rom_data = 8'b11111110;  
4'h8: rom_data = 8'b11111110; 
4'h9: rom_data = 8'b00000110; 
4'hA: rom_data = 8'b00000110;  
4'hB: rom_data = 8'b00000110;  
4'hC: rom_data = 8'b00000110;   
4'hD: rom_data = 8'b00000110; 
4'hE: rom_data = 8'b00000110;  
4'hF: rom_data = 8'b00000000;

endcase
end
else

rom_data = 8'b00000000;
end

endmodule

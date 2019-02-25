`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:31:39 09/09/2018 
// Design Name: 
// Module Name:    RGB 
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
module RGB(
input R, G, B,
input [10:0] pix_x, 
input [10:0] pix_y,
input rom_bit,
input [3:0] registrotd,registrotu, registrosd, registrosu,registrosc,
output wire vga_R, vga_G, vga_B,
output [3:0]rom_addr, 
output [2:0]rom_col,
output reg [4:0] character_select
);

reg red, green, blue;
//rom_addr = fila del font, rom_col = columna del font
//wire  rom_addr ;
//wire  rom_col ;

//Pixeles donde se va ubicar la imagen

localparam puntoinicialx=672;
localparam puntoinicialy=416; //416
localparam puntofinaly=480; //480
localparam puntoinicialy1=544; //544
localparam puntofinaly1=608; //608
localparam puntoinicialy2=672; //672
localparam puntofinaly2=736; //736

reg Y,Y1,Y2;	

always@(pix_y)
begin
if((puntoinicialy <= pix_y) && (pix_y <= puntofinaly))	
begin
Y<=1'b1;
Y1<=1'b0;
Y2<=1'b0;
referenciay <= puntoinicialy;
end

else
if((puntoinicialy1 <= pix_y) && (pix_y <= puntofinaly1))
begin
Y<=1'b0;
Y1<=1'b1;
Y2<=1'b0;
referenciay <= puntoinicialy1;
end


else
if ((puntoinicialy2 <= pix_y) && (pix_y <= puntofinaly2))
begin
Y<=1'b0;
Y1<=1'b0;
Y2<=1'b1;
referenciay <= puntoinicialy2;
end

else
begin
Y<=1'b0;
Y1<=1'b0;
Y2<=1'b0;
referenciay <= pix_y;
end
end


//Variables para recorrer las filas y columnas del font
reg [10:0] referenciay;
reg [10:0] referenciax;
reg display;


//Case para seleccionar el caracter según la posición en x, el número depende del módulo font
//solo se habilita con la zona delimitada en y
always@(pix_x,Y,Y1,Y2,registrotd,registrotu, registrosd, registrosu,registrosc)
begin
if(Y==1'b1)
begin
//Casos aumentan cada 32 bits porque el scaling es 4x, inicia en la posición 640.
casex (pix_x)
  10'b10100xxxxx: begin character_select = 5'd11; referenciax = puntoinicialx; end
  10'b10101xxxxx: begin character_select = 5'd12; referenciax = puntoinicialx+32; end
  10'b10110xxxxx: begin character_select = 5'd13; referenciax = puntoinicialx+64; end
  10'b10111xxxxx: begin character_select = 5'd14; referenciax = puntoinicialx+96; end
  10'b11000xxxxx: begin character_select = 5'd12; referenciax = puntoinicialx+128; end
  10'b11001xxxxx: begin character_select = 5'd25; referenciax = puntoinicialx+160; end
  10'b11010xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx+192; end
  10'b11011xxxxx: begin character_select = 5'd11; referenciax = puntoinicialx+224; end
  10'b11100xxxxx: begin character_select = 5'd17; referenciax = puntoinicialx+256; end
  10'b11101xxxxx: begin character_select = 5'd25; referenciax = puntoinicialx+288; end
  10'b11110xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx+320; end
  default: begin character_select = 5'd15; referenciax = pix_x; end
endcase
end
else
if(Y1==1'b1)
begin
//Casos aumentan cada 32 bits porque el scaling es 4x, inicia en la posición 640.
casex (pix_x)
  10'b10100xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx; end
  10'b10101xxxxx: begin character_select = 5'd18; referenciax = puntoinicialx+32; end
  10'b10110xxxxx: begin character_select = 5'd11; referenciax = puntoinicialx+64; end
  10'b10111xxxxx: begin character_select = 5'd17; referenciax = puntoinicialx+96; end
  10'b11000xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx+128; end
  10'b11001xxxxx: begin character_select = 5'd19; referenciax = puntoinicialx+160; end
  10'b11010xxxxx: begin character_select = 5'd15; referenciax = puntoinicialx+192; end
  10'b11011xxxxx: begin character_select = registrosc; referenciax = puntoinicialx+224; end
  10'b11100xxxxx: begin character_select = registrosd; referenciax = puntoinicialx+256; end
  10'b11101xxxxx: begin character_select = registrosu; referenciax = puntoinicialx+288; end
  10'b11110xxxxx: begin character_select = 5'd15; referenciax = puntoinicialx+320; end
  default: begin character_select = 5'd15; referenciax = pix_x; end
endcase
end
else
if(Y2==1'b1)
begin
//Casos aumentan cada 32 bits porque el scaling es 4x, inicia en la posición 640.
casex (pix_x)
  10'b10100xxxxx: begin character_select = 5'd10; referenciax = puntoinicialx; end
  10'b10101xxxxx: begin character_select = 5'd12; referenciax = puntoinicialx+32; end
  10'b10110xxxxx: begin character_select = 5'd20; referenciax = puntoinicialx+64; end
  10'b10111xxxxx: begin character_select = 5'd12; referenciax = puntoinicialx+96; end
  10'b11000xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx+128; end
  10'b11001xxxxx: begin character_select = 5'd10; referenciax = puntoinicialx+160; end
  10'b11010xxxxx: begin character_select = 5'd16; referenciax = puntoinicialx+192; end
  10'b11011xxxxx: begin character_select = 5'd15; referenciax = puntoinicialx+224; end
  10'b11100xxxxx: begin character_select = registrotd; referenciax = puntoinicialx+256; end
  10'b11101xxxxx: begin character_select = registrotu; referenciax = puntoinicialx+288; end
  10'b11110xxxxx: begin character_select = 5'd15; referenciax = puntoinicialx+320; end
  default: begin character_select = 5'd15; referenciax = pix_x; end
endcase
end
else
begin
character_select =5'd15; referenciax = pix_x;
end
end

//Definición del área de display en resolución 1280x1024.

always@(pix_x,pix_y)
begin
if(pix_x>=359 && pix_x<=1639 && pix_y>=40 && pix_y<=1064)
display<=1'b1;
else
display<=1'b0;
end


//Always que envía el color solo cuando la imagen lo necesita
always@(R, G, B,rom_bit, display)
begin
	if(rom_bit == 1'b1 && display == 1'b1)
		begin
		red <= R;
		green <= G;
		blue <= B;
 		end
	else 
		begin
		red <= 1'b0;
		green <= 1'b0;
		blue <= 1'b0;
		end

end



// Define el número de la fila, inicial en 0 hasta 15

assign rom_addr = pix_y [5:2] -  referenciay [5:2]  ;

//Define la columna de los 8 bits de la imagen, inicia en 7 hasta 0
assign rom_col = referenciax [4:2] - pix_x [4:2];

//Salidas de color para los pines del VGA
assign vga_R = red;
assign vga_G = green;
assign vga_B = blue;

endmodule


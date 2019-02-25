`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:19 09/09/2018 
// Design Name: 
// Module Name:    system 
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
module vga(
		input wire clk, reset,
		input wire [7:0] sw,
		output wire hsync, vsync,
		input wire [6:0] placa1,
		input wire [6:0] placa2,
		//input wire [0:7] parq1_status,
		//input wire [0:7] parq2_status,
		//input wire [0:7] parq3_status,
		//input wire [0:7] parq4_status,
		//input wire [0:7] window1_status,
		//input wire [0:7] window2_status,
		//input wire [0:7] window3_status,
		//input wire [0:7] window4_status,
		output wire [7:0] rgb
	);
	
	// Registro para la Nexys4 
	reg [7:0] rgb_reg;
	
	// Estado de salida de video cuando el controlador vga_sync se encuentra sobre el área de video
	wire video_on;
	wire [9:0] pix_x;
	wire [9:0] pix_y;
	wire [7:0] rgb_wire;
	wire p_tick;

        // instanciar Controlador VGA
       vga_sync vga_sync_unit (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                                .video_on(video_on), .p_tick(p_tick), .x(pix_x), .y(pix_y));
   
	  
        // Asignación de Salidas
 //------------------------------------------------------     

		//localparam parq1_status = 8'b00000011;
		localparam parq2_status = 8'b00000011;
		localparam parq3_status = 8'b00000011;
		localparam parq4_status = 8'b00000011;
		
		localparam window1_status = 8'b00000111;
		localparam window2_status = 8'b00110111;
		localparam window3_status = 8'b00001000;
		localparam window4_status = 8'b00010000;
		
		//localparam Placa1 = 7'b1001100;
		//localparam Placa2 = 7'b0110101;
		
		  	// Instanciar interfaz
		 inerfaz inerfaz_unit(.clk(clk),.reset(reset), .video_on(video_on), .x(pix_x), .y(pix_y),
									 .sw(sw), .rgb_reg(rgb_wire), .parq1_status(parq1_status),
									 .parq2_status(parq2_status),.parq3_status(parq3_status),
									 .parq4_status(parq4_status), .window1_status(window1_status),
									 .window2_status(window2_status),.window3_status(window3_status),
									 .window4_status(window4_status),.Placa1(Placa1),.Placa2(Placa2));
	  		  

		always @(posedge clk)
			if(p_tick)
				rgb_reg<=rgb_wire;
		
		  assign rgb = (video_on) ? rgb_reg : 8'b000;			
		 
endmodule 



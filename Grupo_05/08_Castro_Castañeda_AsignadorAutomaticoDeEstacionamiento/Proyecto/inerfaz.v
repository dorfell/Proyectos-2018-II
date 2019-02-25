`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:37 12/01/2018 
// Design Name: 
// Module Name:    inerfaz 
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
module inerfaz
	( 
		input wire clk, reset,
		input wire video_on,
		input wire [9:0] x, y,
		input wire [7:0] sw,
		input wire [0:7] parq1_status,
		input wire [0:7] parq2_status,
		input wire [0:7] parq3_status,
		input wire [0:7] parq4_status,
		input wire [0:7] window1_status,
		input wire [0:7] window2_status,
		input wire [0:7] window3_status,
		input wire [0:7] window4_status,
		
		input wire [0:6] Placa1, Placa2,

		//input wire [7:0] sensor,
		//input wire [7:0] memoria,
		
		output reg [7:0] rgb_reg		
    );
	 
wire [0:2] wall_on,wall_rgb;
wire [0:7] parq1_on,parq1_rgb;
wire [0:7] parq2_on,parq2_rgb;
wire [0:7] parq3_on,parq3_rgb;
wire [0:7] parq4_on,parq4_rgb;
wire [0:7] window1_on,window1_rgb;
wire [0:7] window2_on,window2_rgb;
wire [0:7] window3_on,window3_rgb;
wire [0:7] window4_on,window4_rgb;
wire [0:7] screen_on,screen_rgb;
wire [0:7] bulid_on,build_rgb;
wire [0:7] frame_on,frame_rgb;

	wire [7:0] rgb_next;
	wire [2:0] rgb_par;
	wire [8:0] text_on;
	wire [7:0] text_rgb;



	
		  localparam wall_L = 118;
		  localparam wall_R = 120;
		  
		  localparam parq1_L = 218;
		  localparam parq1_R = 220;
		  localparam parq1_U = 330;
		  localparam parq1_D = 480;
		  
		  localparam parq2_L = 318;
		  localparam parq2_R = 320;
		  localparam parq2_U = 330;
		  localparam parq2_D = 480;
		  
		  localparam parq3_L = 418;
		  localparam parq3_R = 420;
		  localparam parq3_U = 330;
		  localparam parq3_D = 480;
		  		  
		  localparam wall2_L = 518;
		  localparam wall2_R = 520;
		  
		  assign wall_on = ((wall_L<=x) && (x<=wall_R)) ||
								 ( (parq1_L<=x) && (x<=parq1_R) &&
									(parq1_U<=y) && (y<=parq1_D) ) ||
								 ((parq2_L<=x) && (x<=parq2_R) &&
									(parq2_U<=y) && (y<=parq2_D) ) ||
								 ((parq3_L<=x) && (x<=parq3_R) &&
									(parq3_U<=y) && (y<=parq3_D) ) ||
								 ((wall2_L<=x) && (x<=wall2_R)) ;
		  assign wall_rgb = 8'b000;
		  
		  
		  localparam sparq1_L = 122;
		  localparam sparq1_R = 216;
		  localparam sparq1_U = 340;
		  localparam sparq1_D = 478;
		  
		  localparam sparq2_L = 222;
		  localparam sparq2_R = 316;
		  localparam sparq2_U = 340;
		  localparam sparq2_D = 478;
		  
		  localparam sparq3_L = 322;
		  localparam sparq3_R = 416;
		  localparam sparq3_U = 340;
		  localparam sparq3_D = 478;
		  
		  localparam sparq4_L = 422;
		  localparam sparq4_R = 516;
		  localparam sparq4_U = 340;
		  localparam sparq4_D = 478;
		  
			assign parq1_on = ((sparq1_L <= x) && (x<=sparq1_R) &&
								  (sparq1_U <= y) && (y<=sparq1_D)	); 
			assign parq2_on = ((sparq2_L <= x) && (x<=sparq2_R) &&
								  (sparq2_U <= y) && (y<=sparq2_D)	);
			assign parq3_on = ((sparq3_L <= x) && (x<=sparq3_R) &&
								  (sparq3_U <= y) && (y<=sparq3_D)	);
			assign parq4_on = ((sparq4_L <= x) && (x<=sparq4_R) &&
								  (sparq4_U <= y) && (y<=sparq4_D)	);
		   
			
			
			assign parq1_rgb = parq1_status;
			assign parq2_rgb = parq2_status;
			assign parq3_rgb = parq3_status;
			assign parq4_rgb = parq4_status;		


			localparam window1_L = 40;
			localparam window1_R = 90;
			localparam window1_U = 50;
			localparam window1_D = 130;
			
			
			localparam window2_L = 30;
			localparam window2_R = 80;
			localparam window2_U = 150;
			localparam window2_D = 230;
			
			localparam window3_L = 550;
			localparam window3_R = 600;
			localparam window3_U = 50;
			localparam window3_D = 130;
			
			localparam window4_L = 560;
			localparam window4_R = 610;
			localparam window4_U = 150;
			localparam window4_D = 230;
			
			
			assign window1_on = ((window1_L <= x) && (x<=window1_R) &&
								  (window1_U <= y) && (y<=window1_D)	); 
			assign window2_on = ((window2_L <= x) && (x<=window2_R) &&
								  (window2_U <= y) && (y<=window2_D)	);
			assign window3_on = ((window3_L <= x) && (x<=window3_R) &&
								  (window3_U <= y) && (y<=window3_D)	);
			assign window4_on = ((window4_L <= x) && (x<=window4_R) &&
								  (window4_U <= y) && (y<=window4_D)	);
			
			assign window1_rgb = window1_status;
			assign window2_rgb = window2_status;
			assign window3_rgb = window3_status;
			assign window4_rgb = window4_status;
			
			
			assign frame_on = ((window1_L-1 <= x) && (x<=window1_R+1) &&
									 (window1_U-1 <= y) && (y<=window1_U)	    ) ||
									((window1_L-1 <= x) && (x<=window1_R+1) &&
									 (window1_U+40-1 <= y) && (y<=window1_U+40)) ||
								   ((window1_L-1 <= x) && (x<=window1_R+1) &&
									 (window1_D <= y) && (y<=window1_D+1)	    ) ||
									((window1_L-1 <= x) && (x<=window1_L) &&
									 (window1_U-1 <= y) && (y<=window1_D+1)	 ) ||
									((window1_L+25-1 <= x) && (x<=window1_L+25) &&
									 (window1_U-1 <= y) && (y<=window1_D+1)	 ) ||
									((window1_R <= x) && (x<=window1_R+1) &&
									 (window1_U-1 <= y) && (y<=window1_D+1)	 ) || 
									
									((window2_L-1 <= x) && (x<=window2_R+1) &&
									 (window2_U-1 <= y) && (y<=window2_U)	    ) ||
									((window2_L-1 <= x) && (x<=window2_R+1) &&
									 (window2_U+40-1 <= y) && (y<=window2_U+40)) ||
								   ((window2_L-1 <= x) && (x<=window2_R+1) &&
									 (window2_D <= y) && (y<=window2_D+1)	    ) ||
									((window2_L-1 <= x) && (x<=window2_L) &&
									 (window2_U-1 <= y) && (y<=window2_D+1)	 ) ||
									((window2_L+25-1 <= x) && (x<=window2_L+25) &&
									 (window2_U-1 <= y) && (y<=window2_D+1)	 ) ||
									((window2_R <= x) && (x<=window2_R+1) &&
									 (window2_U-1 <= y) && (y<=window2_D+1)	 ) || 
			
									((window3_L-1 <= x) && (x<=window3_R+1) &&
									 (window3_U-1 <= y) && (y<=window3_U)	    ) ||
									((window3_L-1 <= x) && (x<=window3_R+1) &&
									 (window3_U+40-1 <= y) && (y<=window3_U+40)) ||
								   ((window3_L-1 <= x) && (x<=window3_R+1) &&
									 (window3_D <= y) && (y<=window3_D+1)	    ) ||
									((window3_L-1 <= x) && (x<=window3_L) &&
									 (window3_U-1 <= y) && (y<=window3_D+1)	 ) ||
									((window3_L+25-1 <= x) && (x<=window3_L+25) &&
									 (window3_U-1 <= y) && (y<=window3_D+1)	 ) ||
									((window3_R <= x) && (x<=window3_R+1) &&
									 (window3_U-1 <= y) && (y<=window3_D+1)	 ) || 
									
									((window4_L-1 <= x) && (x<=window4_R+1) &&
									 (window4_U-1 <= y) && (y<=window4_U)	    ) ||
									((window4_L-1 <= x) && (x<=window4_R+1) &&
									 (window4_U+40-1 <= y) && (y<=window4_U+40)) ||
								   ((window4_L-1 <= x) && (x<=window4_R+1) &&
									 (window4_D <= y) && (y<=window4_D+1)	    ) ||
									((window4_L-1 <= x) && (x<=window4_L) &&
									 (window4_U-1 <= y) && (y<=window4_D+1)	 ) ||
									((window4_L+25-1 <= x) && (x<=window4_L+25) &&
									 (window4_U-1 <= y) && (y<=window4_D+1)	 ) ||
									((window4_R <= x) && (x<=window4_R+1) &&
									 (window4_U-1 <= y) && (y<=window4_D+1)	 ); 									
											
								
			
			assign frame_rgb = 8'b00000000;
			
	
			localparam screen_L = 121;
			localparam screen_R = 517;
			localparam screen_U = 1;
			localparam screen_D = 640;
			
			assign screen_on = ((screen_L <= x) && (x<=screen_R) &&
								  (screen_U <= y) && (y<=screen_D)	);
			assign screen_rgb = 8'b11111111;
		  
			localparam build1_L = 0;
			localparam build1_R = 119;
			localparam build2_L = 519;
			localparam build2_R = 640;
		  
			assign build_on = ((build1_L <= x) && (x<=build1_R)) ||
								  ((build2_L <= x) && (x<=build2_R)	);
			assign build_rgb = 8'b01011101;
		  
		  
Texto Texto_unit(.clk(clk), .reset(reset), .pixel_x(x), .pixel_y(y),
							.text_on(text_on), .text_rgb(text_rgb), .Placa1(Placa1),.Placa2(Placa2));		  
		  
		  		  always @*
				if (~video_on)
					rgb_reg = 8'b00000000;
				else 
					if (wall_on)
						rgb_reg = wall_rgb;
					else if ((text_on[0]==1'b1) || (text_on[1]==1'b1) || 
								(text_on[2]==1'b1) || (text_on[3]==1'b1) ||
								(text_on[4]==1'b1) || (text_on[5]==1'b1) ||
								(text_on[6]==1'b1) || (text_on[7]==1'b1) ||
								(text_on[8]==1'b1))
						rgb_reg = text_rgb;
					else if (parq1_on)
						rgb_reg = parq1_rgb;
					else if (parq2_on)
						rgb_reg = parq2_rgb;
					else if (parq3_on)
						rgb_reg = parq3_rgb;
					else if (parq4_on)
						rgb_reg = parq4_rgb;	
					else if (frame_on)
						rgb_reg = frame_rgb;
					else if (window1_on)
						rgb_reg = window1_rgb;
					else if (window2_on)
						rgb_reg = window2_rgb;
					else if (window3_on)
						rgb_reg = window3_rgb;
					else if (window4_on)
						rgb_reg = window4_rgb;
					else if (screen_on)
						rgb_reg = screen_rgb;
					else if (build_on)
						rgb_reg = build_rgb;		
					
					else if (reset)
						rgb_reg = 8'b00000000;	
					else
						rgb_reg = sw;

// Objetos
/*
wire [3:0] wall_on;
wire [6:0] space_on;
wire [7:0] Ocup_on;
wire [7:0] stateOcup;
reg [7:0] rgb_state;*/



endmodule

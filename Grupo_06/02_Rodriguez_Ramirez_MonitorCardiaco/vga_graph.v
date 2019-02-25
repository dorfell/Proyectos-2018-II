
module vga_graph(
	input clk, reset, 		
	input [9:0] ADC,
	input [15:0]sw_let,
	input wire [127:0] key_pressed,
	input wire ascii_code_done,
	output hsync, vsync,
	output [11:0] rgb,
	input [7:0] BPM
);

//reg [7:0] BPM = 8'd123;
/*to do:
corregir w
*/



// signal declaration
//wire [7:0] scan_code;
//reg [5:0] var=6'b111111;
//assign scan_code[5:0]=var;
//assign scan_code [7:6]=temp_scan_code;
reg [11:0] rgb_reg;
wire [11:0] rgb_next;
wire [9:0] pixel_x, pixel_y;
wire video_on;







clk_divider #(.N_DIVISION(2)) CLK25MHZ (
    .clk(clk), 
    .reset(reset), 
    .pixel_tick(pixel_tick)
    );


// instantiate vga sync circuit
vga_sync v_unit (
    .reset(reset), 
    .hsync(hsync), 
    .vsync(vsync), 
    .video_on(video_on), 
    .pixel_tick(pixel_tick), 
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y)
	 );
	 
	 
background_graph background_unit (
    .video_on(video_on), 
	 .clk(pixel_tick),
    .pix_x(pixel_x), 
    .pix_y(pixel_y), 
    .graph_rgb(rgb_next),
	 .reset(reset),
	 .ADC(ADC),
	 .enable_key(ascii_code_done),
	 .key_pressed(key_pressed),
	 .sw_let(sw_let),
	 .BPM(BPM)
    );




// rgb buffer
// rgb b u f f e r
always @(posedge clk)
	if (pixel_tick)
		rgb_reg <= rgb_next ;

// output
assign rgb =  rgb_next;

assign CLK100 = clk;
assign CLK25 = pixel_tick;

endmodule



`timescale 1ns / 1ns

module adc0809(
		clk,
		reset,
		eoc,
		dout,
		st,
		oe,
		ale,
		clk_adc,
		ANODE,
		SEG,
		dataR1,
		unidades,
		decenas,
		centenas
    );
parameter s0 = 3'b000,s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4 = 3'b100,s5 = 3'b101,s6 = 3'b110;
parameter VCCC = 51; //VCC, V_REF

//input ports
input clk;   //100MHz
input reset;
input eoc;
input [7:0] dout; 
//output port
output st;
output oe;
output ale;
//output [2:0] addr;
output clk_adc;
output [7:0] ANODE;
output [6:0] SEG;
output [7:0] dataR1;
output [3:0] unidades;
output [3:0] decenas;
output [3:0] centenas;

reg st;
reg oe;
reg ale;
reg [2:0] addr;
reg clk_adc_r;  //500kHz
reg [8:0] num1=0;
reg [2:0] current_state, next_state;
reg [7:0] data;
reg [7:0] t1;
wire [3:0] A= 4;
wire [3:0] B=10;

assign dataR1 = (dout/B)*A;


//divide the 100MHz into 500kHz
always @(posedge clk or posedge reset)
begin
	if (reset) 
		begin
			clk_adc_r <= 0;
			num1 <= 0;
		end
	else if (num1 == 100)
		begin
			clk_adc_r <= ~clk_adc_r;
			num1 <= 0; //clk_adc_r <= (num1 == 100) ~clk_adc_r : clk_adc_r; //num1 <= (num1==200) ? 0 : num1 +1;
		end
	else 
		begin
			num1 <= num1+1;
		end	
end
assign clk_adc = clk_adc_r;

always @(posedge clk or posedge reset)
begin
	if(reset) begin
			current_state <= s0;
			data[7:0] <= 8'b00000000;
		end
	else current_state <= next_state;
end

//
always @(posedge clk_adc_r or posedge reset)
begin
	if(reset) data[7:0] <= 8'b00000000;
	else begin
		case (current_state)
			s0: begin 
				next_state <= s1;
				ale <= 0;
				st <= 0;
				oe <= 0;
				//addr[2:0] <= 3'b000;
				end
			s1: begin
				next_state <= s2;
				ale <= 1;
				st <= 0;
				oe <= 0;
				end
			s2: begin 
				next_state <= s3;
				ale <= 1;
				st <= 1;
				oe <= 0;
				end
			s3: begin 
				next_state <= s4;
				ale <= 0;
				st <= 1;
				oe <= 0;
				end
			s4: begin
				next_state <= s5;
				ale <= 0;
				st <= 0;
				oe <= 0;
				if (!eoc) next_state <= s4;
				else next_state <= s5;
				end		 
			s5: begin 	
				ale <= 0;
				st <= 0;
				oe <= 1;
				if (!eoc) next_state <= s5;
				else next_state <= s6;
				end	
			s6: begin 	
				next_state <= s0;
				ale <= 0;
				st <= 0;
				oe <= 1;
				data <= dout;
				end
			default: begin
				next_state <= s0;
				ale <= 0;
				st <= 0;
				oe <= 0;
				end
		endcase
	end
end
/*
always @(addrtmp)
case(addrtmp)
	   3'b000 : addr <= 3'b000;
      3'b001 : addr <= 3'b001;
      3'b010 : addr <= 3'b001;
      3'b011 : addr <= 3'b001;
      3'b100 : addr <= 3'b001;
      3'b101 : addr <= 3'b001;
      3'b110 : addr <= 3'b001;
      3'b111 : addr <= 3'b001;
		default: addr <= 3'b001;
endcase*/

wire [11:0] bcd;

wire [6:0] UNITS7;
wire [6:0] TENS7;
wire [6:0] HUNDREDS7;

assign unidades = bcd[3:0];
assign decenas = bcd[7:4];
assign centenas = bcd[11:8];

b8bcd BCD(.bin(dataR1),
			 .bcd(bcd));
			 
Decoder DC1 (.Input(bcd [3:0]),
				 .Output(UNITS7)
				 );
				 
Decoder DC2 (.Input(bcd [7:4]),
				 .Output(TENS7)
				 );
				 
Decoder DC3 (.Input(bcd [11:8]),
				 .Output(HUNDREDS7)
				 );		
				 
SevenSegDisplayXXXX SALIDA7(.clk100mhz(clk),
									 .unidades7(UNITS7), .decenas7(TENS7), 
									 .centenas7(HUNDREDS7), .display(SEG), .an(ANODE));
endmodule

`timescale 1ns / 1ps

module receptor(input clk100, input reset, input rx, output reg [7:0] leds, output reg [3:0] speed, output reg turn,
output reg Done
    );

reg clk50=0;
reg [1:0] state, nextstate;
reg sound_f=0;
reg counter2=0;

parameter start1 = 3'b00;
parameter start0 = 3'b01;

reg control = 0;
reg done = 0;
reg [8:0] tmp = 9'b0;
reg [9:0] c = 10'b1111111111;
reg [3:0] i = 4'b0;
reg delay=0;

reg [1:0]c2 = 2'b11;
reg capture=0;
always @(posedge clk100) clk50 <= ~clk50;
always @(posedge clk50) begin
	if (c<868) c<=c+1; else begin
			c<=0;
			delay <= ~delay;
		end
end
always @(posedge delay) begin
	if (c2>1) c2 <= 0; else c2 <= c2+1;
end
always @(c2)begin
		if(c2==1) capture <= 1; else capture <= 0;
end


always @(posedge capture, posedge reset) begin
	if(reset) state <= start1;
	else state <= nextstate;
end

always @(*) begin
	case(state)
	
	start1: 
	begin
	if(rx == 1 && done ==0) begin
	control <= 0;
	nextstate <=start1;
	end else if(rx ==0 && done ==0)begin
	control <= 1;
	nextstate <= start0;
	end else begin 
	control <= 0;
	nextstate <= start1;
	end
	
	end
	
	start0: begin
	
		if(done ==0) begin
		control <=1 ;
		nextstate <=start0;
	end else begin
	control <= 0;
	nextstate <= start1;
	end
	
	end
	
	default: nextstate <= start1;
	endcase
end
				
always @(posedge capture) begin
	if(control ==1 && done ==0) tmp <= {rx, tmp[8:1]};
end
always @ (posedge capture)begin
if (control) begin
		if(i >= 9) begin
		i<=0;
		done<= 1;
		Done<=done; //-------------------------------------------------------------------------------
		leds <= tmp[8:1];
		end else begin
		i <= i +1;;
		done <=0;
		end
	end else done <= 0;
end
always @(posedge clk100) begin
case (leds)
8'b00110000: speed <= 4'b0000;
8'b00110001: speed <= 4'b0001;
8'b00110010: speed <= 4'b0010;
8'b00110011: speed <= 4'b0011;
8'b00110100: speed <= 4'b0100;
8'b00110101: speed <= 4'b0101;
8'b00110110: speed <= 4'b0110;
8'b00110111: speed <= 4'b0111;
8'b00111000: speed <= 4'b1000;
8'b00111001: speed <= 4'b1001;
8'b01110010: turn <= 1; //R
8'b01101100: turn <= 0; //L
endcase
end


endmodule

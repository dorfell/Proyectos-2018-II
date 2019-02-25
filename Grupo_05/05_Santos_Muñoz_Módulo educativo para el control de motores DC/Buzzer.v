`timescale 1ns / 1ps

module Buzzer(clk, speaker, doneKP, doneBT, SwitchManager);

input clk;
input doneKP;
input doneBT;
input SwitchManager;
output speaker;
parameter clkdivider = 25000000/440/2;

reg clk_enable=0;
reg [27:0] counter2=0;
reg speaker;

reg sound_flag1;
reg sound_flag;

always @( posedge clk) begin
if (counter2<=28'h2faf080) counter2 = counter2 +1; else begin //(100Mhz/1hz)/2 para cuadrada con 0.5 = d
clk_enable <= ~clk_enable;
counter2 = 0;
	end
end

parameter s0= 1'b0, s1=1'b1;

reg next_state;
reg current_state;
initial begin
	current_state <= s0;
	sound_flag <= 0;
	sound_flag1 <= 0;
end
always @ (posedge clk) begin
	current_state <= next_state;
end

always @(posedge clk_enable) begin //1Hz
	if(SwitchManager) begin
	case(current_state)
		s0: begin
			if (doneKP) begin next_state <= s1;
					sound_flag <= 1;
				end else next_state <= s0;
		end
		s1: begin
			sound_flag <=0;
			next_state <= s0;
		end
		default: begin next_state <= s0;
			 next_state <= s0;
		end
	endcase end else begin
	case(current_state)
		s0: begin
			if (doneBT) begin next_state <= s1;
					sound_flag1 <= 1;
				end else next_state <= s0;
		end
		s1: begin
			sound_flag1 <=0;
			next_state <= s0;
		end
		default: begin next_state <= s0;
			 next_state <= s0;
		end
	endcase
end
end //del always
reg [14:0] counter=0;

always @(posedge clk) if(counter==0) counter <= clkdivider-1; else counter <= counter-1; //speaker freq: (100Mhz/clkdivider)/2 ~~1760k


	always @(posedge clk) begin
		if (clk_enable && (sound_flag1 || sound_flag))begin
			
		if(counter==0) speaker <= ~speaker;
	end else speaker <=0;
	end
endmodule

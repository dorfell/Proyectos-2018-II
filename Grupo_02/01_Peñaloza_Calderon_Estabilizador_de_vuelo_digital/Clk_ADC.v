module Clk_ADC (
	input clk, 
	input rst ,
	output clk_out,
	output Add_A
	);

	reg[27:0] counter1=28'b0;
	reg[27:0] counter2=28'b0;
	parameter DIVISOR1 = 100;
	parameter DIVISOR2 = 50000000;

   always @(posedge clk or posedge rst)
      if (rst) begin
         counter1 <= 28'b0;
			end 
		else
			begin
				counter1 <= counter1 + 1'b1;
				if(counter1>=(DIVISOR1-1))
					counter1 <= 28'b0;
			end
	
	always @(posedge clk or posedge rst)
      if (rst) begin
         counter2 <= 28'b0;
      end else
		begin
				counter2 <= counter2 + 1'b1;
				if(counter2>=(DIVISOR2-1))
					counter2 <= 19'b0;
			end
	
	assign clk_out = (counter1<DIVISOR1/2)? 1'b0:1'b1;
	assign Add_A = (counter2<DIVISOR2/2)? 1'b0:1'b1;

endmodule

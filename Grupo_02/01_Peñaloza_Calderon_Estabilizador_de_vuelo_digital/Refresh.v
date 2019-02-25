module Refresh(
	input clk, 
	input rst ,
	output enable
	);

	reg[27:0] counter=28'b0;
	parameter DIVISOR = 25000000;

   always @(posedge clk or posedge rst)
      if (rst) begin
         counter <= 28'b0;
      end else
		begin
				counter <= counter + 1'b1;
				if(counter>=(DIVISOR-1))
					counter <= 28'b0;
			end


	assign enable = (counter<DIVISOR/2)? 1'b0:1'b1;



endmodule

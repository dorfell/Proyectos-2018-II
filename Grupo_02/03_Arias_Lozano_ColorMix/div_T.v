
module Divisor_Teclado(clk_T,t
    );
input clk_T;  
	output t;
	
	reg [16:0]cont;

	initial begin
		cont=0;
		
	end

	assign t=cont[16];
	
	always @(posedge clk_T)
		
			cont<=cont+1'b1;

endmodule
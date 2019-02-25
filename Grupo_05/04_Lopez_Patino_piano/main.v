`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
	module main (
		input [11:0] keys,
		input clk,
		output reg [11:0] speaker
	);
	

		Do d1 (clk, s1);
		DoS ds1 (clk, s2);
		Re r1 (clk, s3);
		ReS rs1 (clk, s4);
		Mi m1 (clk, s5);
		Fa f1 (clk, s6);
		FaS fs1 (clk, s7);
		Sol sol1 (clk, s8);
		SolS sols1 (clk, s9);
		La l1 (clk, s10);
		LaS ls1 (clk, s11);
		Si si1 (clk, s12);
		
      always @(*)
		
			begin
			
			if( keys[0] )
				begin 
				speaker [0] <= s1;		 
				end
			else
				speaker [0] <= 0;	
				
			if( keys[1] )
				begin 
				speaker [1] <= s2;		 
				end
			else
				speaker [1] <= 0;	
				
			if( keys[2] )
				begin 
				speaker [2] <= s3;		 
				end
			else
				speaker [2] <= 0;	
				
			if( keys[3] )
				begin 
				speaker [3] <= s4;		 
				end
			else
				speaker [3] <= 0;	
				
			if( keys[4] )
				begin 
				speaker [4] <= s5;		 
				end
			else
				speaker [4] <= 0;
				
			if( keys[5] )
				begin 
				speaker [5] <= s6;		 
				end
			else
				speaker [5] <= 0;	
				
			if( keys[6] )
				begin 
				speaker [6] <= s7;		 
				end
			else
				speaker [6] <= 0;	
				
			if( keys[7] )
				begin 
				speaker [7] <= s8;		 
				end
			else
				speaker [7] <= 0;	
				
			if( keys[8] )
				begin 
				speaker [8] <= s9;		 
				end
			else
				speaker [8] <= 0;	
				
			if( keys[9] )
				begin 
				speaker [9] <= s10;		 
				end
			else
				speaker [9] <= 0;	
				
			if( keys[10] )
				begin 
				speaker [10] <= s11;		 
				end
			else
				speaker [10] <= 0;
				
			if( keys[11] )
				begin 
				speaker [11] <= s12;		 
				end
			else
				speaker [11] <= 0;	
				
			end
			
	endmodule

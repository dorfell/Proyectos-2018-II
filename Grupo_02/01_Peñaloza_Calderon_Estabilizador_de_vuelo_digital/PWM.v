module PWM(
 input clk, 
input rst, 
input [7:0] x_angle,
//input [7:0] y_angle,

//input [3:0]switch,
output led
);

wire [27:0]reg_in; 
wire senal_f, ovf;
reg [27:0]reg_out;
reg [27:0]limite; 

//Para los angulos de 0 a 90


	parameter   parametro3 = 252;
	parameter   parametro4 = 234;
	parameter   parametro5 = 216;
	parameter   parametro6 = 198;
	parameter   parametro7 = 180;
   parameter   parametro8 = 162;
   parameter   parametro9 = 144;


//Para los angulos de 0 a - 90


	parameter   parametro10 = 126;
	parameter   parametro20 = 108;
	parameter   parametro30 = 90;
	parameter   parametro40 = 72;
	parameter   parametro50 = 54;
   parameter   parametro60 = 36;
   parameter   parametro70 = 18;


//parameter parametro10=121; //0°
//parameter parametro20=105; //15
//parameter parametro30=89;  //30
//parameter parametro40=72;  //45 
//parameter parametro50=54;
//parameter parametro60=35;
//parameter parametro70=17;
//parameter parametro80=52424;
//parameter parametro90=58977;
//parameter parametro100=65536;



//186A0? 1ms 0000000000011000011010100000 // position -45 giro horario
//?30D40? 2ms  0000000000110000110101000000 // position 45	gira muchoo en sentido horario
	
	//0000000000100100100111110000 1.5ms  // position 0
	
	// 0000000000001100001101010000        0.5 ms   90
	//  0000000000111101000010010000                            2.5 ms  -90 
	
// sumador		//?0101111101011110000100000000
	assign reg_in = (ovf == 1'b1) ? 28'b0 : reg_out + 1'b1 ;
	
	assign ovf = (reg_out == 28'h1E8480) ? 1'b1 : 1'b0 ; //2000000 flancos, que caben en 20ms para señal de 50hz
	
	
// reset
   
  always @(posedge clk or posedge rst)
      if (rst) begin
         reg_out <= 0;
      end else begin
         reg_out <= reg_in;
      end	
		
		
		
		/// hasta aqui es un divisor de frecuencia a 1S
//		
//		always @x_axis begin
//      case (x_axis)
//		if (x_axis>0 && x_axis<  ) begin
//      <statement>;
//   en
//		
//			4'b0000 : limite = 28'b0000000000100100100111110000; //     0    1.5 ms
//			
//			4'b0001 : limite = 28'b0000000000100111101011000100;   //15   1.625ms
//					
//			4'b0010 : limite = 28'b0000000000101010101110011000;   //  30   1.75 ms
//			
//			
//			4'b0011 : limite = 28'b0000000000110000110101000000; //    45    2 ms
//			
//			
//			4'b0100 : limite = 28'b0000000000110110111011101000;  //    60   2.25 ms
//			
//			
//			4'b0101 : limite = 28'b0000000000111001111110111100;     //75  2.375ms
//			//b0000000000011110100001001000;  //   -30   1.25 ms
//			
//			4'b0110 : limite = 28'b0000000000111101000010010000;   //  90    2.5 ms
//			//b0000000000011000011010100000; //    -45    1 ms 
//			
//			4'b0111 : limite = 28'b0000000000001100001101010000;  //   -90    0.5 ms
//			//
//			
//			default limite = 28'b0000000000100100100111110000;
//		endcase
//   end
// comparador final 


//
//always @(posedge clk)
//      if ( x_axis <= parametro10)
//			begin
//         limite=28'b0000000000100100100111110000;
//			end
//      else if (x_axis >= parametro10 && x_axis  <= parametro20)
//			begin
//         limite=28'b0000000000100111101011000100;
//			end
//		else if ( x_axis >= parametro20 && x_axis <= parametro30)
//         begin
//		   limite=28'b0000000000101010101110011000;
//			end
//		else if ( x_axis >= parametro30 && x_axis <= parametro40)
//         begin
//				limite=28'b0000000000110000110101000000;
//			end
//		else if (x_axis >= parametro40 && x_axis <= parametro50)
//         begin
//				limite=28'b0000000000110110111011101000;
//			end
//		else if ( x_axis >= parametro50 && x_axis <= parametro60)
//        begin
//				limite=28'b0000000000111001111110111100;
//			end
//		else if ( x_axis >= parametro60 && x_axis <= parametro70)
//         begin
//				limite=28'b0000000000111101000010010000;
//			end
//		else if ( x_axis >= parametro70 && x_axis <= parametro80)
//         begin
//				limite=28'b0000000000001100001101010000;
//			end
//		else if ( x_axis >= parametro80 && x_axis <= parametro90)
//         begin
//			   limite=28'b0000000000100100100111110000;
//			end
//		else if ( x_axis >= parametro90  )
//			begin
//				limite=28'b0000000000100100100111110000;
//			end
//
//
//
//
//
//	
//assign senal_f = (reg_out <= limite) ? 1'b1 : 1'b0 ;	
//
//assign led = senal_f;	
//				
//
//
//
//
//endmodule


//module PWM(
// input clk, 
//input rst, 
//input [7:0] numbinario,
//
////input [3:0]switch,
//output led
//);
//
//wire [27:0]reg_in; 
//wire senal_f, ovf;
//reg [27:0]reg_out;
//reg [27:0]limite; 
//
//
//
//parameter a10=?252?;      // 5.5 k 
//parameter a20=105;     // 4.7 k
//parameter a30=89;     // 4.0 k
//parameter a40=72;     // 3.2 k
//parameter a50=54;     // 2.4 k
//parameter a60=35;     // 1.6 k 
//parameter a70=17;     // 0.8 k
//
//
//
////186A0? 1ms 0000000000011000011010100000 // position -45 giro horario
////?30D40? 2ms  0000000000110000110101000000 // position 45	gira muchoo en sentido horario
//	
//	//0000000000100100100111110000 1.5ms  // position 0
//	
//	// 0000000000001100001101010000        0.5 ms   90
//	//  0000000000111101000010010000                            2.5 ms  -90 
//	
//// sumador		//?0101111101011110000100000000
//	assign reg_in = (ovf == 1'b1) ? 28'b0 : reg_out + 1'b1 ;
//	
//	assign ovf = (reg_out == 28'h1E8480) ? 1'b1 : 1'b0 ; //2000000 flancos, que caben en 20ms para señal de 50hz
//	
//	
//// reset
//   
//  always @(posedge clk or posedge rst)
//      if (rst) begin
//         reg_out <= 0;
//      end else begin
//         reg_out <= reg_in;
//      end	
//		
//		
//		
//		/// hasta aqui es un divisor de frecuencia a 1S
////		
////		always @x_axis begin
////      case (x_axis)
////		if (x_axis>0 && x_axis<  ) begin
////      <statement>;
////   en
////		
////			4'b0000 : limite = 28'b0000000000100100100111110000; //     0    1.5 ms
////			
////			4'b0001 : limite = 28'b0000000000100111101011000100;   //15   1.625ms
////					
////			4'b0010 : limite = 28'b0000000000101010101110011000;   //  30   1.75 ms
////			
////			
////			4'b0011 : limite = 28'b0000000000110000110101000000; //    45    2 ms
////			
////			
////			4'b0100 : limite = 28'b0000000000110110111011101000;  //    60   2.25 ms
////			
////			
////			4'b0101 : limite = 28'b0000000000111001111110111100;     //75  2.375ms
////			//b0000000000011110100001001000;  //   -30   1.25 ms
////			
////			4'b0110 : limite = 28'b0000000000111101000010010000;   //  90    2.5 ms
////			//b0000000000011000011010100000; //    -45    1 ms 
////			
////			4'b0111 : limite = 28'b0000000000001100001101010000;  //   -90    0.5 ms
////			//
////			
////			default limite = 28'b0000000000100100100111110000;
////		endcase
////   end
//// comparador final 
//
//

always @(posedge clk)

    if (x_angle >= parametro6)
			begin
         limite=28'b0000000000100100100111110000;  //0
			end

     else if (x_angle <= parametro6 && x_angle >= parametro7)
			begin
         limite=28'b0000000000011000011010100000;  //-45
			end
      else if (x_angle <= parametro7 && x_angle >= parametro8)
			begin
         limite=28'b0000000000011110100001001000;  //-30
			end
      else if ( x_angle <= parametro8 && x_angle >= parametro9)
			begin
         limite=28'b0000000000011110100001001000;  //-15
			end
      else if ( x_angle <= parametro9 && x_angle >= parametro10)
			begin
         limite=28'b0000000000100100100111110000;  //0
			end
      else if (x_angle <= parametro10 && x_angle  >= parametro20)
			begin
         limite=28'b0000000000100111101011000100; //15
			end
		else if ( x_angle <= parametro20 && x_angle >= parametro30)
         begin
		   limite=28'b0000000000101010101110011000;  //30
			end
		else if ( x_angle <= parametro30 && x_angle >= parametro40)
         begin
				limite=28'b0000000000110000110101000000; //45
			end
		else if (x_angle <= parametro40)
         begin
				limite=28'b0000000000100100100111110000; //0
			end

	
assign senal_f = (reg_out <= limite) ? 1'b1 : 1'b0 ;	

assign led = senal_f;	
				




endmodule

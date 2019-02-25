`timescale 1ns / 1ps

module Top_proyecto(input SwitchManager,
	input clk100,
	output reg [3:0] speed,
	output reg turn,
	input [3:0] Columna,
	output [3:0] Fila,
	output reg isDone,
	
	input reset,
	input rx,
	output reg [7:0] leds,
	
    output reg lcd_rs,
    output reg lcd_rw,
    output reg lcd_7,
    output reg lcd_6,
	 output reg lcd_5,
	 output reg lcd_4,
	 output reg lcd_e,
	 
	 output reg speaker,
	 
	 output reg signal,
	 output reg in1,
	 output reg in2
    );
	 
	 wire [3:0] speedout;
	 wire turnout;
	 wire [3:0] speedout1;
	 wire turnout1;
	 wire lcd_rso;
	 wire  lcd_rwo;
    wire  lcd_7o;
    wire  lcd_6o;
	 wire  lcd_5o;
	 wire  lcd_4o;
	 wire  lcd_eo;
	 
	 wire isDoneo;
	 wire [7:0] ledso;
	 
	 wire Doneo;
	 wire sound_flago;
	 wire sound_flago1;
	 wire speakero;
	 
	 wire signalo;
	 wire in1o;
	 wire in2o;
	 
	 
	 //Teclado
Top_Teclado TecladoX(
    .clk100(clk100), 
    .speed(speedout), 
    .turn(turnout), 
    .Columna(Columna), 
    .isDone(isDoneo), 
    .Fila(Fila)
//	 ,.sound_flag(sound_flago)
    );
	 
	 //Bluetooth
receptor ReceptorX (
    .clk100(clk100), 
    .reset(reset), 
    .rx(rx), 
    .leds(ledso), 
    .speed(speedout1), 
    .turn(turnout1),
	 .Done(Doneo)
//	 ,.sound_flag(sound_flago1)
    );
	 
	 //LCD
	 LCD LCDX(
    .clk100(clk100), 
    .lcd_rs(lcd_rso), 
    .lcd_rw(lcd_rwo), 
    .lcd_e(lcd_eo), 
    .lcd_4(lcd_4o), 
    .lcd_5(lcd_5o), 
    .lcd_6(lcd_6o), 
    .lcd_7(lcd_7o), 
    .speed(speedout), 
    .turn(turnout),
	 .speed1(speedout1),
	 .turn1(turnout1),
	 .SwitchManager(SwitchManager)
    );

	 //Buzzer
	 Buzzer BuzzerX (
    .clk(clk100), 
    .speaker(speakero), 
    .doneKP(isDoneo), //teclado
	 .doneBT(Doneo), //bluetooth
	 .SwitchManager(SwitchManager)
    );
	 
	 //Motor driver
	 PWM_1 PWM1X (
    .clk(clk100), 
    .signal(signalo), 
    .speed(speedout), 
    .turn(turnout), 
    .speed1(speedout1), 
    .turn1(turnout1), 
    .SwitchManager(SwitchManager), 
    .in1(in1o), 
    .in2(in2o)
    );
	 
	always @(posedge clk100) begin
	speed <= speedout;
	turn <= turnout;
	lcd_rs <= lcd_rso;
   lcd_rw <= lcd_rwo;
   lcd_7 <= lcd_7o;
   lcd_6 <= lcd_6o;
   lcd_5 <= lcd_5o;
	lcd_4 <= lcd_4o;
	lcd_e <= lcd_eo;
	leds <= ledso;
	isDone <= isDoneo;
	speaker <= speakero;
	if (SwitchManager) begin
	speed <= speedout;
	turn <= turnout;
	end else begin
	speed <= speedout1;
	turn <= turnout1;
	end
	signal <= signalo;
	in1 <= in1o;
	in2 <= in2o;
end
endmodule

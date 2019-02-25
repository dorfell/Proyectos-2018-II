module Top_Sensor(
    input rst,
    input clk,
	 input ADC0,
	 input ADC1,
	 input ADC2,
	 input ADC3,
	 input ADC4,
	 input ADC5,
	 input ADC6,
	 input ADC7,
	 output clk_out,
	 output en,
	 output Add_A, 
	 output buzzer,
//	 output reg [7:0] x_angle,
//	 output reg [7:0] y_angle,
    output [7:0] Leds,
	 output lcd_e,
    output lcd_rs,
    output lcd_rw, 
    output [7:0] lcd_db,
	 output servoX,
	 output servoY,
	 input [1:0] interruptor,
	 input start,
	 input [1:0] sel,
	 input ds,
    output [3:0] an,
    output [6:0] seg,
    output       dp,
    inout [3:0]  JA
	 );
	 
	 wire en_lcd=1;
	 reg [7:0] x_angle;
	 reg [7:0] y_angle;
	 wire [7:0] Data;
//	 wire interruptor=1;

	 
	Clk_ADC Clk_ADC (
		 .clk(clk), 
		 .rst(rst), 
		 .clk_out(clk_out), 
		 .Add_A(Add_A)
		 );
		 
	 Refresh Refresh (
    .clk(clk), 
    .rst(rst), 
    .enable(en)
    );
	 
	 PtoS PtoS	 (
    .clk(clk_out), 
    .rst(rst), 
    .ADC_0(ADC0), 
    .ADC_1(ADC1), 
    .ADC_2(ADC2),
	 .ADC_3(ADC3),	 
    .ADC_4(ADC4), 
    .ADC_5(ADC5), 
    .ADC_6(ADC6), 
    .ADC_7(ADC7), 
    .Data(Data)
    );
	    always @(posedge clk_out) 
			if (Add_A) begin
				x_angle <= Data;
			end
			else begin
				y_angle <= Data;
			end
			 
Leds leds (
    .angle_y(y_angle), 
    .angle_x(x_angle), 
    .Leds(Leds)
    );



	
// Instantiate the module
ControllerTest_TOP LCD (
    .clk(clk), 
    .rst(en_lcd), 
    .x_angle(x_angle), 
    .y_angle(y_angle), 
    .interruptor(interruptor), 
    .lcd_e(lcd_e), 
    .lcd_rs(lcd_rs), 
    .lcd_rw(lcd_rw), 
    .lcd_db(lcd_db),
	 .buzzer(buzzer)
    );
	 
	 PWM PWM1 (
    .clk(clk), 
    .rst(rst), 
    .x_angle(x_angle), 
    .led(servoX)
    );
	 
	 // Instantiate the module
PWM2 PWM2 (
    .clk(clk), 
    .rst(rst), 
    .y_angle(y_angle), 
    .led(servoY)
    );
	 
	 
// Instantiate the module
PmodGYRO_Demo instance_name (
    .rst(rst), 
    .clk(clk), 
    .sel(sel), 
    .ds(ds), 
    .start(start), 
    .an(an), 
    .seg(seg), 
    .dp(dp), 
    .JA(JA)
    );



endmodule

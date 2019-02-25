----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:55 02/16/2019 
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is

	Port( clk			: in std_logic;
			reset			: inOUT std_logic;
			codinfra		: in std_logic_vector (2 downto 0);
			servo			: out std_logic;
			--bot          : IN    STD_LOGIC_VECTOR(5 downto 0);
			leds			: out std_logic_vector (1 downto 0);
			lcd_e        : out std_logic;
			lcd_rs       : out std_logic;
			lcd_rw       : out std_logic;
			lcd_db       : out std_logic_vector(7 downto 0)
			);
	
end Top;

architecture Behavioral of Top is
	
	signal enableservo 	: std_logic;
	signal temporal		: std_logic_vector (2 downto 0);
	signal contrasena1	: std_logic_vector (15 downto 0);
	
	type states is (s0,s1,s2,s3,s4,s5);
	signal present_state, next_state: states;
	
	COMPONENT ModTarjeta
	PORT(
		tarjeta : IN std_logic_vector(2 downto 0);          
		inicio : OUT std_logic;
		selector : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ModServo
	PORT(
		clk : IN std_logic;
		activar : IN std_logic;          
		PWM : OUT std_logic;
		salida : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT lcd_controller
	PORT(
		clk : IN std_logic;
		line1_buffer : IN std_logic_vector(127 downto 0);
		line2_buffer : IN std_logic_vector(127 downto 0);    
		reset_n : INOUT std_logic;      
		rw : OUT std_logic;
		rs : OUT std_logic;
		e : OUT std_logic;
		lcd_data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	signal disp : std_logic_vector(5 downto 0);
	signal top_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
	signal bottom_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
	
--	COMPONENT ControllerTest_TOP
--	PORT(
--		clk : IN std_logic;
--		--bot : IN std_logic_vector(5 downto 0);
--		enable : IN std_logic; 
--		rst : INOUT std_logic;      
--		lcd_e : OUT std_logic;
--		lcd_rs : OUT std_logic;
--		lcd_rw : OUT std_logic;
--		lcd_db : OUT std_logic_vector(7 downto 0)
--		);
--	END COMPONENT;
	
--	COMPONENT Topreceptor
--	PORT(
--		clk : IN std_logic;
--		reset : IN std_logic;
--		RX : IN std_logic;          
--		contrasena : OUT std_logic_vector(15 downto 0)
--		);
--	END COMPONENT;

begin
	
	Inst_ModTarjeta: ModTarjeta PORT MAP(
		tarjeta => codinfra,
		inicio => enableservo,
		selector => temporal
	);
	
	Inst_ModServo: ModServo PORT MAP(
		clk => clk,
		activar => enableservo,
		PWM => servo,
		salida => leds
	);
		Inst_lcd_controller: lcd_controller PORT MAP(
		clk => clk,
		reset_n => reset,
		rw => lcd_rw,
		rs => lcd_rs,
		e => lcd_e,
		lcd_data => lcd_db,
		line1_buffer => top_line,
		line2_buffer => bottom_line
	);
	
process(clk, reset)
begin
	if reset = '1' then
		present_state <= s0;
   elsif (clk'event and clk='1') then
   if enableservo = '1' then
	   present_state <= next_state;
   else		
	   present_state <= present_state;
	 end if;
  end if;
end process;
	
	--===================
-- Next state logic
--===================
process(present_state, enableservo)
  begin 
  case present_state is 
    when s0 =>
		   next_state <= s1;
    when s1 =>
	      next_state <= s2;

    when s2 =>
	      next_state <= s3;

    when s3 =>
	      next_state <= s4;

    when s4 =>
	      next_state <= s5;

    when s5 =>
	      next_state <= s5;
end case;
end process;

--===================	
-- Output logic
--===================
process(present_state, top_line, bottom_line, reset)
begin
case present_state is
	when s0 =>
		top_line <= x"4269656e76656e69646f206120202020";
		bottom_line <= x"2020204249434952554e20322e302020";
		reset <= '1';
	when s1 =>
		top_line <= x"496e7365727465207375205449554e20";
		bottom_line <= x"2020656e20656c206c6563746f722020";
		reset <= '1';
	when s2 =>
		top_line <= x"496e736572746520737520636c617665";
		bottom_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
		reset <= '1';
	when s3 =>
		top_line <= x"436c61766520636f7272656374612120";
		bottom_line <= x"204573636f6a61207375206269636920";
		reset <= '1';
	when s4 =>
		top_line <= x"436c61766520696e636f727265637461";
		bottom_line <= x"496e74656e7465206465206e7565766f";
		reset <= '1';
	when s5 =>
		top_line <= x"4772616369617320706f722075736172";
		bottom_line <= x"6e75657374726f20736572766963696f";
		reset <= '1';
end case;
end process;

--	Inst_ControllerTest_TOP: ControllerTest_TOP PORT MAP(
--		clk => clk,
--		rst => reset,
--		--bot => bot,
--		enable => enableservo,
--		lcd_e => e,
--		lcd_rs => rs,
--		lcd_rw => rw,
--		lcd_db => db
--	);
	
--	Inst_Topreceptor: Topreceptor PORT MAP(
--		clk => clk,
--		reset => reset,
--		RX => RXHC,
--		contrasena => contrasena1
--	);

--	salidaHC <= contrasena1;
--	sel <= temporal;
--	lcd_db <= db;
--	lcd_e <= e;
--	lcd_rs <= rs;
--	lcd_rw <= rw;
	
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:22 11/08/2018 
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

entity Top is
	port (
		buzzer : out std_logic;
		luz :out std_logic;
		entresis :in std_logic;
		ECO : in std_logic;                
		TRIGGER : INOUT std_logic;
		 start, clk :in std_logic;
--		bot          : IN    STD_LOGIC_VECTOR(1 downto 0);
		rst          : inout  std_logic;
--		datos        : in std_logic;		
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		luz2: out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end Top;

architecture Behavioral of Top is

	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : INOUT    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
	END COMPONENT;
	COMPONENT LIB_ULTRASONICO_REVB
	PORT(
		CLK : IN std_logic;
		ECO : IN std_logic;          
		TRIGGER : OUT std_logic;
		DISTANCIA_CENTIMETROS : out integer
		);
	END COMPONENT;
	COMPONENT reloj
		PORT(
		clk : IN std_logic;
		segundo : IN std_logic;
		start : IN std_logic;
		rst : IN std_logic;          
		hora : OUT std_logic_vector(127 downto 0);
		hh : out std_logic_vector (4 downto 0);
		buzzer : out std_logic
		);
	END COMPONENT;
	COMPONENT divisor
	PORT(
		clk : IN std_logic;          
		segundo : OUT std_logic
--		enable : OUT std_logic
		);
	END COMPONENT;
	signal sig_rst: std_logic;
	signal salresis : std_logic;
	signal sig_segundo: std_logic;
--	signal sig_enable: std_logic;
	signal sig_hora: std_logic_vector (127 downto 0);
   signal sig_hh : std_logic_vector (4 downto 0);
	signal sig_distancia: integer;
	signal top_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
	signal bottom_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";

begin
	Inst_divisor: divisor PORT MAP(
		clk => clk,
--		enable => sig_enable,
		segundo => sig_segundo
	);
	Inst_reloj: reloj PORT MAP(
		buzzer => buzzer,
		clk => clk,
		segundo => sig_segundo,
		start => start,
		rst => rst,
		hora => sig_hora,
		hh => sig_hh
	);
	Inst_LIB_ULTRASONICO_REVB: LIB_ULTRASONICO_REVB PORT MAP(
		CLK => CLK,
		ECO => ECO,
		TRIGGER => TRIGGER,
	--	TRIGGER => sig_trigger,
		DISTANCIA_CENTIMETROS => sig_distancia
	);

LCD: lcd_controller port map(
	clk => clk,
	reset_n => sig_rst,
	e => lcd_e,
	rs => lcd_rs,
	rw => lcd_rw,
	lcd_data => lcd_db,
	line1_buffer => top_line,
	line2_buffer => bottom_line 
);

salresis <='1' when (entresis ='1') else '0';
Process(sig_hh, entresis)
	begin
--	salresis <='1' when (entresis ='1') else '0';
	top_line <= sig_hora;
		if ( sig_hh<"00110") then
			if ( sig_distancia<10) then
				luz<='0';
				luz2<='0';
				bottom_line <= x"4A4F56454E2044455350494552544F20";
				sig_rst <= '1';
			else 
				luz<='0';
				luz2<='0';
				bottom_line <= x"20202020202020202020202020202020";
				sig_rst <= '1';
			end if;
		elsif (sig_hh<"10101") then
			if ( sig_distancia<10) then
				if (salresis='0') then
--				if (sw='0') then
					luz<='1';
					luz2<='1';
					bottom_line <= x"20202020202020202020202020202020";
					sig_rst <= '1';
				else
					luz<='0';
					luz2<='0';
					bottom_line <= x"20202020202020202020202020202020";
					sig_rst <= '1';
				end if;
			else 
				luz<='0';
				luz2<='0';
				bottom_line <= x"20202020202020202020202020202020";
				sig_rst <= '1';
			end if;
		else
			if ( sig_distancia<10) then
				luz<='0';
				luz2<='0';
				bottom_line <= x"4A4F56454E2044455350494552544F20";
				sig_rst <= '1';
			else 
				luz<='0';
				luz2<='0';
				bottom_line <= x"20202020202020202020202020202020";
				sig_rst <= '1';
			end if;
		end if;
end process;



end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:13 10/19/2018 
-- Design Name: 
-- Module Name:    ClockTop - Behavioral 
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

entity ClockTop is
	Port(
			clk   : in std_logic;
			reset : in std_logic;
			H1 : out STD_LOGIC_VECTOR(3 downto 0);
			H0 : out STD_LOGIC_VECTOR(3 downto 0);
			M1 : OUT std_logic_vector(3 downto 0);
			M0 : OUT std_logic_vector(3 downto 0);
			S1 : OUT std_logic_vector(3 downto 0);
			S0 : OUT std_logic_vector(3 downto 0)
		  );
end ClockTop;

architecture Behavioral of ClockTop is
	
	COMPONENT Divisor
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		enable : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT Reloj
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		enable : IN std_logic;
		H1 : out STD_LOGIC_VECTOR(3 downto 0);
		H0 : out STD_LOGIC_VECTOR(3 downto 0);		
		M1 : OUT std_logic_vector(3 downto 0);
		M0 : OUT std_logic_vector(3 downto 0);
		S1 : OUT std_logic_vector(3 downto 0);
		S0 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal con_enable : std_logic;

begin
	
	Inst_Divisor: Divisor PORT MAP(
		clk => clk,
		reset => reset,
		enable => con_enable
	);
	
	Inst_Reloj: Reloj PORT MAP(
		clk => clk,
		reset => reset,
		enable => con_enable,
		H1 => H1,
		H0 => H0,
		M1 => M1,
		M0 => M0,
		S1 => S1,
		S0 => S0	 
	);

end Behavioral;


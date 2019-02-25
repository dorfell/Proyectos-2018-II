library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Salida is
port (
    clk          : in std_logic;
	 led          : out std_logic_vector(3 downto 0);
	 ledaviso     : out std_logic;
	 bip_salida   : out std_logic;
	 ocupado      : in std_logic;
	 limite		  : in std_logic_vector(15 downto 0);
	 --H1 : in STD_LOGIC_VECTOR(3 downto 0);
	 --H0 : in STD_LOGIC_VECTOR(3 downto 0);
	 M1 : in STD_LOGIC_VECTOR(3 downto 0);
	 M0 : in STD_LOGIC_VECTOR(3 downto 0);
	 S1 : in STD_LOGIC_VECTOR(3 downto 0);
	 S0 : in STD_LOGIC_VECTOR(3 downto 0)
    );
end Salida;

architecture Behavioral of Salida is
	signal minutos : STD_LOGIC_VECTOR(15 downto 0);
begin

process(ocupado,limite,M1,M0,S1,S0,minutos)	
begin
		minutos <= M1 & M0 & S1 & S0;
		if (ocupado = '1') then
			led <= "1111";
			if (minutos = limite)or(minutos = limite+1)or(minutos = limite+2)or(minutos = limite+3)or(minutos = limite+4) then
				ledaviso <= '1';
				bip_salida <= '1';
			else
				ledaviso <= '0';
				bip_salida <= '0';
			end if;
		else
			bip_salida <= '0';
			ledaviso <= '0';
			led <= "0000";
		end if;
end process;
end Behavioral;


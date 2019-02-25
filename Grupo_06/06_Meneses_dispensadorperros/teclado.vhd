----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:32:33 05/02/2018 
-- Design Name: 
-- Module Name:    teclado - Behavioral 
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

entity teclado is

port(    filas:in std_logic_vector (3 downto 0);
         fleds: out std_logic_vector (3 downto 0);
         clk :  in std_logic;
			start        :  in std_logic;
			rst  :  in std_logic;
			leds    : out std_logic_vector(3 downto 0);
			columnas : out std_logic_vector(3 downto 0);
			disp:out std_logic_vector (6 downto 0);
			comun: out std_logic_vector (3 downto 0)
			);


end teclado;

architecture Behavioral of teclado is


COMPONENT Divteclado 
	PORT(
      clk: in std_logic;
		rst: in std_logic;
      enable: out std_logic
		);
	END COMPONENT;
	
COMPONENT FSM 
	PORT(
      clk: in std_logic;
		rst: in std_logic;
		start: in std_logic;
      enable: in std_logic;
		leds: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT sietesegmentos 
	PORT(
      keyboard: in std_logic_vector(7 downto 0);
      comun :     out std_logic_vector (3 downto 0);            --Puertos de salida
      disp :     out std_logic_vector (6 downto 0)
		);
	END COMPONENT;
	

	

signal enable: std_logic;
signal col: std_logic_vector (3 downto 0);
signal keyboard: std_logic_vector(7 downto 0);




begin

fleds<=filas;
leds<=col;
columnas<=col;
keyboard<= col & filas;

Inst_Divteclado: Divteclado PORT MAP(
		clk => clk,
		rst=>rst,
		enable => enable
	);


Inst_FSM: FSM PORT MAP(
		clk => clk,
      rst=>rst,
		enable => enable,
		start=> start,
	   leds=>col	
	);
	
Inst_sietesegmentos: sietesegmentos PORT MAP(
		keyboard => keyboard,
      comun=>comun,
		disp=> disp
	
	);

comun <= "1110";

end Behavioral;

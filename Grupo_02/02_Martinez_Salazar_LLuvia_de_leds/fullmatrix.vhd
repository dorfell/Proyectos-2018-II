----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:34:29 02/19/2019 
-- Design Name: 
-- Module Name:    fullmatrix - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fullmatrix is
Port(clk100M:in std_logic;
     colum:out std_logic_vector(7 downto 0);
	  row:out std_logic_vector(7 downto 0));
end fullmatrix;

architecture Behavioral of fullmatrix is
signal clk: std_logic;
signal clkchar: std_logic;
signal countlum:std_logic_vector(3 downto 0);
signal column:std_logic_vector(7 downto 0);
signal charmem:std_logic_vector(4 downto 0);
COMPONENT Div1K
	PORT(
		clk100M : IN std_logic;          
		clk1k : OUT std_logic
		);
	END COMPONENT;
COMPONENT countcolum
	PORT(
		clk : IN std_logic;          
		outcolum : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT ringcount
	PORT(
		input : IN std_logic_vector(3 downto 0);          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
COMPONENT characmem
	PORT(
		charselect : IN std_logic_vector(4 downto 0);
		adress : IN std_logic_vector(7 downto 0);          
		charac : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
COMPONENT Characcount
	PORT(
		clkchar : IN std_logic;          
		outrow : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
COMPONENT Div1
	PORT(
		clk100M : IN std_logic;          
		clk1 : OUT std_logic
		);
	END COMPONENT;
begin
Inst_Div1K: Div1K PORT MAP(
		clk100M => clk100M,
		clk1k => clk
	);
Inst_countcolum: countcolum PORT MAP(
		clk => clk,
		outcolum =>countlum 
	);
Inst_ringcount: ringcount PORT MAP(
		input => countlum,
		output => column
	);
Inst_characmem: characmem PORT MAP(
		charselect => charmem,
		adress => column,
		charac => row
	);
Inst_Div1: Div1 PORT MAP(
		clk100M => clk100M,
		clk1 => clkchar
	);
Inst_Characcount: Characcount PORT MAP(
		clkchar => clkchar,
		outrow => charmem
	);

colum <= column;

end Behavioral;


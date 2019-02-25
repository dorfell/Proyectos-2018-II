----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:51 02/12/2019 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is

port( clk, rst, txEn	:	in std_logic;
		txData						:	in std_logic_vector(7 downto 0);
		tx								:	out std_logic;
		txDone						:	inout std_logic;
		c_ticks							: 	out std_logic
		--nbits							:	in std_logic_vector(3 downto 0)
		);

end top;

architecture Behavioral of top is
	COMPONENT UART_tx_module
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		txEn : IN std_logic;
		ticks : IN std_logic;
		nbits : IN std_logic_vector(3 downto 0);
		txData : IN std_logic_vector(7 downto 0);    
		txDone : INOUT std_logic;      
		tx : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT divisor_baude_generator
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;          
		ticks : OUT std_logic
		);
	END COMPONENT;
	
	signal sig_ticks : std_logic;
	signal sig_nbits : std_logic_vector(3 downto 0);
	
begin
	
	sig_nbits <= "1000";
	
	Inst_UART_tx_module: UART_tx_module PORT MAP(
		clk => clk,
		rst => rst,
		txEn => txEn,
		ticks => sig_ticks,
		nbits => sig_nbits,
		txData => txData,
		tx => tx,
		txDone => txDone
	);
	
	Inst_divisor_baude_generator: divisor_baude_generator PORT MAP(
		clk => clk,
		rst => rst,
		ticks => sig_ticks
	);
	
	c_ticks <= sig_ticks;
	
end Behavioral;


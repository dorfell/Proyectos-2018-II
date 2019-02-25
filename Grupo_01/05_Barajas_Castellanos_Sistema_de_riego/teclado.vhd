----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:52 01/16/2019 
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
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           inp : in  STD_LOGIC_VECTOR (3 downto 0);
           newData : out  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (3 downto 0);
           outp : out  STD_LOGIC_VECTOR (3 downto 0));
end teclado;

architecture Behavioral of teclado is

	type estado is (s0,s1,s2,s3,s4);
	signal pr_state,nx_state: estado;
	signal x : std_logic_vector(3 downto 0) := (others => '0');
	
begin
	process (clk, reset)
	begin 
		if (reset = '1')then
			pr_state <= s0;
		elsif (rising_edge(clk))then
			pr_state <= nx_state;
		end if;
	end process;
	
	process (pr_state, x, inp)
	begin
		case pr_state is
			when s0 =>
			x <= "0000";
			newData <= '0';
			nx_state <= s1;
			when s1 =>
			x <= "1110";
			if(inp = "0111") then
				newData <= '1';
				nx_state <= s1;
			elsif (inp = "1011") then
				newData <= '1';
				nx_state <=s1;
			elsif (inp = "1101") then
				newData <= '1';
				nx_state <=s1;
			elsif (inp = "1110") then
				newData <= '1';
				nx_state <=s1;
			else 
				newData <= '0';
				nx_state <= s2;
			end if;
			
			when s2  =>
			x <= "1101";
			if (inp = "0111") then
				newData <= '1';
				nx_state <= s2;
			elsif (inp = "1011") then
				newData <= '1';
				nx_state <= s2;
			elsif (inp = "1101") then
				newData <= '1';
				nx_state <= s2;
			elsif (inp = "1110") then
				newData <= '1';
				nx_state <= s2;
			else
				newData <= '0';
				nx_state <= s3;
			end if;
			
			when s3 =>
			x <= "0111";
			if (inp = "0111") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1011") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1101") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1110") then
				newData <= '1';
				nx_state <= s3;
			else
				newData <= '0';
				nx_state <= s4;
			end if;
			
			when s4 =>
			x <= "0111";
			if (inp = "0111") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1011") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1101") then
				newData <= '1';
				nx_state <= s3;
			elsif (inp = "1110") then
				newData <= '1';
				nx_state <= s3;
			else
				newData <= '0';
				nx_state <= s0;
			end if;
		end case;
	end process;
	
	outp <= x;
	y <= inp;
	
			
end Behavioral;


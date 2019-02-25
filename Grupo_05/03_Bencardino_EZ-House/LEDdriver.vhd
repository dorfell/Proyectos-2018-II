----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2019 10:56:14
-- Design Name: 
-- Module Name: LEDdriver - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LEDdriver is
    generic (key : std_logic_vector := X"42");
    
    Port ( enable : in STD_LOGIC;
           pass : in std_logic_vector (7 downto 0);
           clk, reset : in STD_LOGIC;
           power : out STD_LOGIC;
           flush : out STD_LOGIC;
           palabra : out std_logic_vector (31 downto 0));
end LEDdriver;

architecture Behavioral of LEDdriver is
    type state is (prendido, apagado);
    signal state_r, state_n : state;
    signal passc : std_logic_vector (7 downto 0);
begin
    PROCESS(clk,reset, pass)
	BEGIN
		IF reset = '1' THEN
			state_r <= apagado;
			passc <= (others => '0');
		ELSIF (clk'event AND clk = '1') THEN
			state_r <= state_n;
			passc <= pass;
		END IF;		
	END PROCESS;

    process(state_n, state_r, passc, enable)
    begin
        state_n <= state_r;
        
        case state_r is
            when apagado =>
                power <= '0';
                flush <= '0';
                Palabra <= (others => '0');
                if passc = key and enable = '1' then
                    state_n <= prendido;
                    flush <= '1';
                    palabra <= X"4C314F4E";
                end if;
            when prendido => 
                power <= '1';
                flush <= '0';
                Palabra <= (others => '0');
                if passc = key then
                    state_n <= apagado;
                    flush <= '1';
                    palabra <= X"4C314F46";
                elsif enable = '0' then
                    state_n <= apagado;
                end if;
        end case;
    end process;
end Behavioral;

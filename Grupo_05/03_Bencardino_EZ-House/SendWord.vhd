----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2019 11:11:18
-- Design Name: 
-- Module Name: SendWord - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SendWord is
    generic (N : integer := 18;
             M : integer := 200000);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           send : in STD_LOGIC;
           p : in std_logic_vector (31 downto 0);
           sends : out STD_LOGIC;
           data : out std_logic_vector (7 downto 0));
end SendWord;

architecture Behavioral of SendWord is
    type state is (enviar, esperar, c1, c2, c3, c4);
    signal state_r, state_n : state;
    signal count_r, count_n : integer := 0;
    signal tick, reset_c : std_logic;
    signal palabra_r, palabra_n : std_logic_vector (31 downto 0);
begin

    habilitar: entity work.mcounter(Behavioral)
		generic map(M=>M, N=>N)
		port map(clk=>clk, reset=>reset_c,
				 q=> open, max_tick=>tick);

    PROCESS(clk, reset)
	BEGIN
		IF reset = '1' THEN
			state_r <= esperar;
			count_r <= 0;
			palabra_r <= (others => '0');
		ELSIF (clk'event AND clk = '1') THEN
			state_r <= state_n;
			count_r <= count_n;
			palabra_r <= palabra_n;
		END IF;		
	END PROCESS;

    process(state_n, state_r, count_r, tick, p, send, palabra_r, palabra_n)
    begin
        state_n <= state_r;
        count_n <= count_r;
        palabra_n <= palabra_r;
        case state_r is
            when enviar =>
                reset_c <= '0';
                sends <= '0';
                data <= (others => '0');
                if tick = '1' then
                    sends <= '1';
                    reset_c <= '1';
                    if count_r = 3 then
                        state_n <= esperar;
                        count_n <= 0;
                    else
                        count_n <= count_r + 1;
                    end if;
                end if;
            when esperar => 
                count_n <= 0;
                sends <= '0';
                reset_c <= '0';
                palabra_n <= p;
                data <= (others => '0');
                if send = '1' then
                    state_n <= c1;
                end if;
            when c1 => 
                sends <= '0';
                reset_c <= '0';
                data <= palabra_r(31 downto 24);
                state_n <= c2;
            when c2 =>
                sends <= '0';
                reset_c <= '0';
                data <= palabra_r(23 downto 16);
                state_n <= c3;
            when c3 =>
                sends <= '0'; 
                reset_c <= '0';
                data <= palabra_r(15 downto 8);
                state_n <= c4;
            when c4 => 
                sends <= '0';
                reset_c <= '0';
                data <= palabra_r(7 downto 0);
                state_n <= enviar;
        end case;
    end process;
end Behavioral;

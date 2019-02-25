----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:49 01/15/2019 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    PORT (
        clk     : in  STD_LOGIC; -- Reloj de entrada de 50MHz.
        reset   : in  STD_LOGIC; -- Señal de reset.
        num_bin : in  STD_LOGIC_VECTOR(8 downto 0);
        d7s     : out STD_LOGIC_VECTOR(7 downto 0);
        MUX     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end mux;
 
architecture Behavioral of mux is
    signal num_bcd: STD_LOGIC_VECTOR(10 downto 0);
    signal D0, D1, D2, D3: STD_LOGIC_VECTOR(3 downto 0);
begin
    d7s_i: entity work.siete_segmentos_completo(Behavioral)
        PORT MAP(clk, reset, D0, D1, D2, D3, d7s, MUX);
    bin2bcd9_i: entity bin2bcd9(Behavioral)
        PORT MAP(num_bin, num_bcd);
 
    D3 <= "0000";                     -- Siempre en cero.
    D2 <= "0" & num_bcd(10 downto 8); -- Rellenando para ser cuatro dígitos.
    D1 <= num_bcd(7 downto 4);
    D0 <= num_bcd(3 downto 0);
end Behavioral;
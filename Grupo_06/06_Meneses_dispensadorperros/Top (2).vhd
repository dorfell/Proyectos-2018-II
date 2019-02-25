library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Top is
    Port ( clk : in  STD_LOGIC;
           echo : in  STD_LOGIC;
           Trigger : out  STD_LOGIC;
           an : out STD_LOGIC_VECTOR(3 downto 0);
           display_out : out  STD_LOGIC_VECTOR (6 downto 0));
end Top;

architecture Behavioral of Top is

COMPONENT TriggerGen
PORT(
clk : IN std_logic;          
trigger : OUT std_logic
);
END COMPONENT;

COMPONENT contador
PORT(
clk : IN std_logic;
reset : IN std_logic;
enable : IN std_logic;          
q : OUT std_logic_vector(19 downto 0)
);
END COMPONENT;
COMPONENT calculador_distancia
PORT(
echo_count : IN std_logic_vector(19 downto 0);          
distance : OUT std_logic_vector(3 downto 0)
);
END COMPONENT;

COMPONENT display
PORT(
distance_in : IN std_logic_vector(3 downto 0);          
display_out : OUT std_logic_vector(6 downto 0)
);
END COMPONENT;

signal Trigger_out: std_logic;
signal echo_counter1 : STD_LOGIC_VECTOR (19 downto 0);
signal echo_count : STD_LOGIC_VECTOR (19 downto 0);
signal distance_bits : std_logic_vector(3 downto 0);

begin

Inst_TriggerGen: TriggerGen PORT MAP(
clk,
Trigger_out 
);
Inst_contador: contador PORT MAP(
clk,
Trigger_out,
echo,
echo_counter1 
);
process(echo) begin
if falling_edge(echo) then
echo_count <= echo_counter1;
end if;
end process;
Inst_calculador_distancia: calculador_distancia PORT MAP(
echo_count,
distance_bits 
);
Inst_display: display PORT MAP(
distance_bits,
display_out 
);

Trigger <= Trigger_out;
an <= "1110";


end Behavioral;


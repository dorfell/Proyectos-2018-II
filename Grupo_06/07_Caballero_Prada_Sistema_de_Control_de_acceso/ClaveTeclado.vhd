library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClaveTeclado is
 port (
    clk          : in std_logic;
	 enter		  : in std_logic;
	 guardando    : in std_logic;
	 serial       : in std_logic_vector(2 downto 0);
	 serialed     : out std_logic_vector(2 downto 0);
	 tecla1       : in unsigned(3 downto 0);
	 tecla2       : in unsigned(3 downto 0);
	 tecla3       : in unsigned(3 downto 0);
	 tecla4       : in unsigned(3 downto 0);
	 ocupado      : out std_logic;
	 limite		  : out std_logic_vector(15 downto 0);
	 motor        : out std_logic;
	 texto        : out std_logic;
	 acceso       : out std_logic;
	 prof         : out std_logic_vector(2 downto 0);
	 ledestado    : out std_logic_vector(1 downto 0); -- (Rojo, Verde)
	 H1 : in STD_LOGIC_VECTOR(3 downto 0);
	 H0 : in STD_LOGIC_VECTOR(3 downto 0);
	 M1 : in STD_LOGIC_VECTOR(3 downto 0);
	 M0 : in STD_LOGIC_VECTOR(3 downto 0);
	 S1 : in STD_LOGIC_VECTOR(3 downto 0);
	 S0 : in STD_LOGIC_VECTOR(3 downto 0)
    );
end ClaveTeclado;

architecture Behavioral of ClaveTeclado is

    constant U0 : unsigned(3 downto 0) := to_unsigned(0,4);     
	 constant U1 : unsigned(3 downto 0) := to_unsigned(1,4);
    constant U2 : unsigned(3 downto 0) := to_unsigned(2,4);
    constant U3 : unsigned(3 downto 0) := to_unsigned(3,4);
    constant U4 : unsigned(3 downto 0) := to_unsigned(4,4);
    constant U5 : unsigned(3 downto 0) := to_unsigned(5,4);
    constant U6 : unsigned(3 downto 0) := to_unsigned(6,4);
    constant U7 : unsigned(3 downto 0) := to_unsigned(7,4);
    constant U8 : unsigned(3 downto 0) := to_unsigned(8,4);
    constant U9 : unsigned(3 downto 0) := to_unsigned(9,4);
	 constant U10: unsigned(3 downto 0) := to_unsigned(10,4);
	 constant U11: unsigned(3 downto 0) := to_unsigned(11,4);
    constant U12: unsigned(3 downto 0) := to_unsigned(12,4);
	 constant U13: unsigned(3 downto 0) := to_unsigned(13,4);
	 constant U14: unsigned(3 downto 0) := to_unsigned(14,4);
	 constant U15: unsigned(3 downto 0) := to_unsigned(15,4);
	 
	 signal password :  unsigned(15 downto 0);
	 signal password2 :  STD_LOGIC_VECTOR(2 downto 0);
	 signal hora : STD_LOGIC_VECTOR(15 downto 0);
	 signal max : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
	 signal clave : unsigned(15 downto 0) := x"0000";
	 signal serialc : std_logic_vector(2 downto 0) := "000";
	 signal tecla : unsigned(3 downto 0);
	 
begin 
	 serialed <= serial;
    hora <= H1 & H0 & M1 & M0; 
Process (clk)
begin
	if (guardando = '0') then
		if (enter = '1') then
			clave <= tecla1 & tecla2 & tecla3 & tecla4;
			serialc <= serial;
		end if;
	end if;
	
-- Codificación para las teclas         -- Teclado Fisico
--f\C |(03)|(02)|(01)|(00)|             
---------------------------             --------------------
--(12)| 15 | 14 |	13	| 12 |             | 01 | 02 | 03 | A |
---------------------------             --------------------
--(08)| 11 | 10 |	09	| 08 |             | 04 | 05 | 06 | B |
---------------------------             --------------------
--(04)| 07 | 06 |	05 | 04 |             | 07 | 08 | 09 | C |
---------------------------             --------------------
--(00)| 03 | 02 |	01	| 00 |             | *  | 00 | #  | D |
---------------------------             --------------------
                                                        --<HH:MM:SS|HH:MM:SS>
				if hora = x"0001" or hora = x"0002" then    --<00:01:00|00:02:59>
					 password <= (U15 & U14 & U13 & U11); --clave: 1234 
					 password2 <= "101";                  --serial: 101 
					 max <= x"0255";                      --M1 & M0 & S1 & S0
					 prof <= "001";
				elsif hora = x"0003" or hora = x"0004" then --<00:03:00|00:04:59>
					 password <= (U10 & U9 & U7 & U6);	  --clave: 5678 
					 password2 <= "010";                  --serial: 010
					 max <= x"0455";
					 prof <= "010";
				elsif hora = x"0005" or hora = x"0006" then --<00:05:00|00:06:59>
					 password <= (U5 & U12 & U8 & U4); 	  --clave: 9ABC 
					 password2 <= "110";                  --serial: 110 
				    max <= x"0655";
					 prof <= "011";
				elsif hora = x"0007" or hora = x"0008" then --<00:07:00|00:08:59>
					 password <= (U14 & U11 & U9 & U6);   --clave: 2468
					 password2 <= "011";                  --serial: 011
					 max <= x"0855";
					 prof <= "100";
				elsif hora = x"0009" or hora = x"0010" then --<00:09:00|00:10:59> 	
					 password <= (U13 & U9 & U5 & U2); 	  --clave: 3690
					 password2 <= "001";                  --serial: 001 
				    max <= x"0955";
					 prof <= "101";
				elsif hora = x"0011" or hora = x"0012" then --<00:11:00|00:12:59>
					 password <= (U15 & U12 & U7 & U4);   --clave: 1A7C
					 password2 <= "100";                  --serial: 100 
				    max <= x"1255";
					 prof <= "110";
				else 
					 password <= (U2 & U2 & U2 & U2);     --clave: 0000 
					 password2 <= "000";                  --serial: 000
					 prof <= "000";
				end if;
		  
		  if ((clave = password) and (serialc = password2))  then 
            ledestado(0) <= '1'; -- Verde 
				ledestado(1) <= '0'; -- Rojo
				limite <= max;
				ocupado <= '1';
				motor <= '1';
				texto <= '1';
				acceso <= '1';
		  else
				ledestado(0) <= '0'; -- Verde 
				ledestado(1) <= '1'; -- Rojo
				ocupado <= '0';
				motor <= '0';
				texto <= '0';
				acceso <= '0';
        end if;
		  
end process;

end Behavioral;
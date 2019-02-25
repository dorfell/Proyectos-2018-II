library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity digital_clock_top is
port (
  clk50mhz, rst: 	in STD_LOGIC;

   hora2c : out std_logic_vector(3 downto 0);
  hora1c : out std_logic_vector(3 downto 0);
  min2c : out std_logic_vector(3 downto 0);
  min1c : out std_logic_vector(3 downto 0)
);
end digital_clock_top;

architecture beh of digital_clock_top is
  constant max_count: INTEGER := 7500; -- 50000000/2
  constant max_refresh_count: INTEGER := 100000; -- 50Mzh/100000=500Hz
  signal count: INTEGER range 0 to max_count;
  signal refresh_count: INTEGER range 0 to max_refresh_count;
  signal refresh_state: STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  signal clk_state: STD_LOGIC := '0';
  signal display_sel: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  shared variable hora1, hora2, min1, min2, contador: INTEGER range 0 to 9 := 0;
  shared variable segundos: INTEGER range 0 to 59 := 0;

  function digito(numero:INTEGER) return STD_LOGIC_VECTOR is
	variable salida: STD_LOGIC_VECTOR(7 downto 0);
  begin
	case numero is
		when 0 => salida := "11000000"; -- 0 
		when 1 => salida := "11111001"; -- 1
		when 2 => salida := "10100100"; -- 2
		when 3 => salida := "10110000"; -- 3
		when 4 => salida := "10011001"; -- 4
		when 5 => salida := "10010010"; -- 5
		when 6 => salida := "10000011"; -- 6
		when 7 => salida := "11111000"; -- 7 
		when 8 => salida := "10000000"; -- 8
		when 9 => salida := "10010000"; -- 9
		when others => salida := "11111111";
	end case;
	   
		

	return(salida);
  end digito;
	
  begin
  
   

    gen_clock: process(clk50mhz, clk_state, count, rst)
    begin
	if rst = '1' then
	count<=0;
	else
	if clk50mhz'event and clk50mhz='1' then
		-- contador 1HZ
		if count < max_count then 
			count <= count + 1;
		else
			clk_state <= not clk_state;
			count <= 0;
		end if;
		-- contador 500Hz (para refresco del display)
		if refresh_count < max_refresh_count then
			refresh_count <= refresh_count + 1;
		else
			refresh_state <= refresh_state + 1;
			refresh_count <= 0; 
                end if; 
       end if;
		 end if;
    end process; 

  
    
	
  persecond: process (clk_state)
  begin
	if clk_state'event and clk_state='1' then
		
		-- contador de segundos
		if segundos < 59 then
			segundos := segundos + 1;
		else 
			segundos := 0;
			min1 := min1 + 1; -- +1 minuto
		end if;
		
		-- segundo dígito minutero
		if min1 = 10 then
			min2 := min2 + 1;
			min1 := 0;
		end if;
		
		-- primer dígito hora
		if min2 = 6 then
			hora1 := hora1 + 1;
			min2 := 0;
			
		end if;
		
		-- segundo dígito hora
		if hora1 = 10 then
			hora2 := hora2 + 1;
			hora1 := 0;
		end if;
			
		if hora2=2 and hora1=4 then
			hora2 := 0;
			hora1 := 0;
		end if;
		
		
	end if;
  end process;
	
	process
	begin
	 case min1 is 
                when 0 => min1c <= "0000"; 
                when 1 => min1c <= "0001"; 					 
                when 2 => min1c <= "0010";  
                when 3 => min1c <= "0011"; 
					 when 4 => min1c <= "0100"; 
                when 5 => min1c <= "0101"; 					 
                when 6 => min1c <= "0110";  
                when 7 => min1c <= "0111"; 					 
                when 8 => min1c <= "1000"; 					 
                when 9 => min1c <= "1001";  
                when others => min1c <= "1111"; 
            end case; 
				
				 case min2 is 
                when 0 => min2c <= "0000"; 
                when 1 => min2c <= "0001"; 					 
                when 2 => min2c <= "0010";  
                when 3 => min2c <= "0011"; 
					 when 4 => min2c <= "0100"; 
                when 5 => min2c <= "0101"; 					 
                when 6 => min2c <= "0110";   
                when others => min2c <= "1111"; 
            end case; 
				
	case hora1 is 
                when 0 => hora1c <= "0000"; 
                when 1 => hora1c <= "0001"; 					 
                when 2 => hora1c <= "0010";  
                when 3 => hora1c <= "0011"; 
					 when 4 => hora1c <= "0100"; 
                when 5 => hora1c <= "0101"; 					 
                when 6 => hora1c <= "0110";  
                when 7 => hora1c <= "0111"; 					 
                when 8 => hora1c <= "1000"; 					 
                when 9 => hora1c <= "1001";  
                when others => hora1c <= "1111"; 
            end case;		

    	case hora2 is 
                when 0 => hora2c <= "0000"; 
                when 1 => hora2c <= "0001"; 					 
                when 2 => hora2c <= "0010";  
                when others => hora2c <= "1111"; 
            end case;	
		
end process	;			
end beh;
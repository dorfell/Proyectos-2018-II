library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Reloj is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
			  enable : in  STD_LOGIC;
			  H1 : out STD_LOGIC_VECTOR(3 downto 0);
			  H0 : out STD_LOGIC_VECTOR(3 downto 0);
			  M1 : out STD_LOGIC_VECTOR(3 downto 0);
			  M0 : out STD_LOGIC_VECTOR(3 downto 0);
			  S1 : out STD_LOGIC_VECTOR(3 downto 0);
			  S0 : out STD_LOGIC_VECTOR(3 downto 0)
			  );
end Reloj;

architecture Behavioral of Reloj is
	
	 signal ss1: UNSIGNED(3 downto 0) := "0000";
    signal ss0: UNSIGNED(3 downto 0) := "0000";
	 signal mm1: UNSIGNED(3 downto 0) := "0000";
    signal mm0: UNSIGNED(3 downto 0) := "0000";
    signal hh1: UNSIGNED(3 downto 0) := "0000";
    signal hh0: UNSIGNED(3 downto 0) := "0000";
	 
begin

process (clk, reset)
begin
	  if reset ='1' then
			ss1 <= "0000";
			ss0 <= "0000";
			mm1 <= "0000";
			mm0 <= "0000";
			hh1 <= "0000";
			hh0 <= "0000";
	  elsif (clk'event and clk = '1') then 
		 if (enable = '1') then	
			ss0 <= ss0 +1;
			
			if ss0 = 9 then  
			   ss1 <= ss1 + 1;
				ss0 <= "0000";
			end if;
			
			if ss1 = 5 and ss0 = 9 then
            mm0 <= mm0 + 1;
            ss0 <= "0000";
				ss1 <= "0000";
         end if;
         
			if mm0 = 9 and ss1 = 5 and ss0 = 9 then
            mm1 <= mm1 + 1;
				ss0 <= "0000";
				ss1 <= "0000";
            mm0 <= "0000";
         end if;

         if mm1 = 5 and mm0 = 9 and ss1 = 5 and ss0 = 9 then
				hh0 <= hh0 + 1;
            ss0 <= "0000";
				ss1 <= "0000";
				mm0 <= "0000";
				mm1 <= "0000";
         end if;
			
			if hh0 = 9 and mm1 = 5 and mm0 = 9 and ss1 = 5 and ss0 = 9 then
            hh1 <= hh1 + 1;
				ss0 <= "0000";
				ss1 <= "0000";
				mm0 <= "0000";
				mm1 <= "0000";
            hh0 <= "0000";
       end if;

        if hh1 = 2 and hh0 = 4 and mm1 = 5 and mm0 = 9 and ss1 = 5 and ss0 = 9 then
            ss1 <= "0000";
				ss0 <= "0000";
				mm1 <= "0000";
				mm0 <= "0000";
				hh1 <= "0000";
				hh0 <= "0000";
         end if;
			end if;
	  end if;
end process; 

			S1 <= STD_LOGIC_VECTOR(ss1);
			S0 <= STD_LOGIC_VECTOR(ss0);
			M1 <= STD_LOGIC_VECTOR(mm1);
			M0 <= STD_LOGIC_VECTOR(mm0);
			H1 <= STD_LOGIC_VECTOR(hh1);
			H0 <= STD_LOGIC_VECTOR(hh0);

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SCM is

port(
	clk : in std_logic;
	rst : in std_logic;
	SCM_data : in std_logic_vector(1 downto 0);
	SCM_cp : in std_logic_vector(1 downto 0);
	SCM_rst : out std_logic;
	SCM_vsw : out std_logic;
	--SCM_vsw : out std_logic_vector (0 downto 0);
	SCM_c_msm : out std_logic_vector(2 downto 0);
	SCM_user : out std_logic_vector (1 downto 0)
);

end SCM;

architecture Behavioral of SCM is

type states is (s0,s1,s2,s3,s4,s5,s6,s7,s8); 
signal present_state, next_state: states;

begin

--===================
-- Present State
--===================

process(clk,rst)
begin
if (rst = '1') then
	present_state<=s0;
elsif(clk'event and clk='1')then
	
	if(SCM_data = "01" or SCM_data = "11")then
		present_state <= next_state;
		SCM_rst<='1';
	else
		present_state<=present_state;
		SCM_rst<='0';
	end if;
--	if(SCM_data /= "01")then
--		present_state<=present_state;
--		SCM_rst<='0';
--	elsif(SCM_data = "01" or SCM_data = "11")then
--		present_state<=next_state;
--		SCM_rst<='1';
--	end if;
end if;
end process;  

--===================
-- Next state logic
--===================

process(present_state,SCM_cp)
begin
case present_state is
	when s0 => 
		case SCM_cp is
			when "01" => next_state <= s1; --A
			when others => next_state <= s0;
		end case;
		
	when s1 =>
		case SCM_cp is
			when "11" => next_state <= s0; --B
			when "01" => next_state <= s2; --A				
			when others => next_state <= s1;
		end case;
			
	when s2 =>
		case SCM_cp is
			when "01" => next_state <= s3; --A
			when others => next_state <= s2;
		end case;
	
	when s3 =>
		case SCM_cp is
			when "01" => next_state <= s4; --A
			when others => next_state <= s3;
		end case;

	when s4 =>
		case SCM_cp is
			when "11" => next_state <= s3; --B
			when "01" => next_state <= s5; --A				
			when others => next_state <= s4;
		end case;
	
	when s5 =>
		case SCM_cp is
			when "01" => next_state <= s6; --A
			when others => next_state <= s5;
		end case;
	
	when s6 =>
		case SCM_cp is
			when "11" => next_state <= s7; --B
			when "01" => next_state <= s3; --A				
			when others => next_state <= s6;
		end case;
	
	when s7 =>
		case SCM_cp is
			when "01" => next_state <= s8; --A
			when others => next_state <= s7;
		end case;
	
when s8 =>
		case SCM_cp is
			when "01" => next_state <= s0; --A
			when others => next_state <= s8;
		end case;
		
end case;
end process;

--===================
-- Output logic
--===================

process(present_state)
begin
case present_state is
	when s0 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "001";---------------id
		SCM_user <= "00";
	when s1 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "011";---------------concatenation
		SCM_user <= "01";
	when s2 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "100";---------------sent
		SCM_user <= "00";
	when s3 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "101";---------------code
		SCM_user <= "00";
	when s4 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "011";---------------concatenation
		SCM_user <= "01";
	when s5 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "100";---------------sent
		SCM_user <= "00";
	when s6 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "110";---------------question
		SCM_user <= "00";
	when s7 =>
		SCM_vsw <= '1';--(others => '1');
		SCM_c_msm <= "111";---------------finish
		SCM_user <= "00";
	when s8 =>
		SCM_vsw <= '0';--(others => '0');
		SCM_c_msm <= "000";---------------error
		SCM_user <= "00";
end case;
end process;  

end Behavioral;

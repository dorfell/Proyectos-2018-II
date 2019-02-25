library ieee;  
 use ieee.std_logic_1164.all;  
 use ieee.numeric_std.all;  
 entity kb_test is  
 port (  
 clk, reset: in std_logic;  
 
 ps2d, ps2c: in std_logic;  
 got_code : out std_logic;
 ascii_code2 : out std_logic_vector (7 downto 0);
 anode2: out STD_LOGIC_VECTOR(3 DOWNTO 0);
 tecla_nueva: out STD_LOGIC;
 ascii_actual:  out STD_LOGIC_VECTOR(7 DOWNTO 0);
 ascii_anterior: out STD_LOGIC_VECTOR(7 DOWNTO 0)
 
	);  
 end kb_test;  
 
 architecture arch of kb_test is  
 
 type state_type is (s0,s1);
	signal state_reg, state_next: state_type;
	
 signal scan_data, w_data: std_logic_vector ( 7 downto 0) ;  
 signal kb_not_empty , kb_buf_empty : std_logic;  
 signal key_code, ascii_code : std_logic_vector (7 downto 0 ) ;  
 signal anode: STD_LOGIC_VECTOR(3 DOWNTO 0);
 signal ascii_partial: std_logic_vector (7 downto 0 ); 
 signal ascii_partial_state: std_logic_vector (7 downto 0 ); 
 signal ascii_actual_aux:  STD_LOGIC_VECTOR(7 DOWNTO 0);
 signal ascii_anterior_aux: STD_LOGIC_VECTOR(7 DOWNTO 0);
 
 signal got_code_internal: std_logic;
 
 begin  
 kb_code_unit : entity work.kb_code(arch)  
 port map(clk=>clk, reset=>reset , 
				ps2d=>ps2d, ps2c=>ps2c,  
				rd_key_code=>kb_not_empty, 
				key_code=>key_code,  
				kb_buf_empty=>kb_buf_empty,
				got_code => got_code_internal,
				ascii_partial => ascii_partial);
 
-- uart_unit : entity work.uart (str_arch)  
-- port map(clk=>clk, reset=>reset , rd_uart=>'0',  
-- wr_uart=>kb_not_empty, rx=>'1',  
-- w_data=> ascii_code , tx_full =>open ,  
-- rx_empty=>open, r_data=>open, tx=>tx);  

process(clk,reset)
begin
	if(reset = '1') then 
		state_reg <= s0;
	elsif(rising_edge(clk)) then
		state_reg <= state_next;
	end if;
end process;

process(state_reg, got_code_internal)
begin
	case state_reg is
		when s0=>
			if got_code_internal = '1' then
				state_next <= s1;
				ascii_partial_state<="11101110";--A
			elsif got_code_internal = '0' then
				state_next <= s0;
				ascii_partial_state<="01100000";--C
				tecla_nueva<='1';
			end if;
		when s1=>
			if got_code_internal = '1' then
				state_next <= s0;
				ascii_partial_state<="00111110";--B
			elsif got_code_internal = '0' then
				state_next <= s1;
				ascii_partial_state<="11111100";--D
				tecla_nueva <= '0';
			end if;
		end case;
end process;



 
 key2a_actual_unit : entity work. key2ascii(arch)  
 port map(key_code=>ascii_partial,
			ascii_code=>ascii_actual_aux);  
 kb_not_empty <= not kb_buf_empty;  
 got_code <= got_code_internal;
 
 key2a_anterior_unit : entity work. key2ascii(arch)  
 port map(key_code=>key_code,
			ascii_code=>ascii_anterior_aux);  
 kb_not_empty <= not kb_buf_empty;  
 
 got_code <= got_code_internal;
 
 ascii_code2<= ascii_actual_aux ;
 ascii_actual <= not(not( ascii_actual_aux));
 ascii_anterior <= not(not(ascii_anterior_aux));
 anode2 <= "0000";
 end arch;  
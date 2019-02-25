library ieee;  
 use ieee.std_logic_1164.all;  
 use ieee.numeric_std.all;  
 entity kb_code is  
 generic (W_SIZE : integer :=1) ; -- 2 A W_SIZE w o rd s i n FIFO  
 port (  
 clk, reset: in std_logic;  
 ps2d, ps2c: in std_logic;  
 rd_key_code : in std_logic ;  
 kb_buf_empty: out std_logic;  
 key_code : out std_logic_vector (7 downto 0 );
 got_code: out std_logic;
 ascii_partial: out  std_logic_vector (7 downto 0 ) 
 ) ;  
 end kb_code;  
 architecture arch of kb_code is  
 constant BRK : std_logic_vector ( 7 downto 0 ):= "11110000";  
 -- FO ( b r e a k c o d e )  
 type statetype is (wait_brk, get_code) ;  
 signal state_reg , state_next : statetype;  
 signal scan_done_tick , got_code_tick: std_logic;  
 signal scan_out , w_data: std_logic_vector (7 downto 0 ) ;  
 
 signal partial: std_logic;

 
 begin  
  -- i n s t a n t i a t i o n  
 ps2_rx_unit: entity work.ps2_rx(arch)  
		port map ( clk => clk , reset => reset , rx_en => '1' ,  
						ps2d => ps2d , ps2c => ps2c ,  
						rx_done_tick=>scan_done_tick,  
						dout => scan_out ) ;  
 ggfifo_key_unit : entity work.fifo ( arch )  
		generic map(B=>8, W=>W_SIZE)  
		port map( clk => clk , reset => reset , rd => rd_key_code ,  
					wr => got_code_tick , w_data => scan_out ,  
					empty=>kb_buf_empty, full => open ,  
					r_data => key_code ) ;  
 
 -- FSM t o g e t t h e s c a n c o d e a f t e r FO r e c e i v e d  
 process ( clk , reset )  
 begin  
		if reset = '1' then  
			state_reg <= wait_BRK ;  
		elsif ( clk'event and clk = '1' ) then  
			state_reg <= state_next ;  
		end if ;  
 end process ;  
 
 process ( state_reg , scan_done_tick ,scan_out)  
 begin  
		got_code_tick <= '0' ;  
		state_next <= state_reg ;  
			case state_reg is  
				when wait_BRK => -- wait f o r F0 of brak code  
					if scan_done_tick = '1' and scan_out= BRK then  
						state_next <= get_code;  
					end if ;
				when get_code => -- g e t t h e following scan code  
					if scan_done_tick = '1' then  
						got_code_tick <= '1' ;  
						state_next <= wait_BRK ;  
					end if ;  
			end case ;  
 end process ; 
	
	partial<=rd_key_code;
	got_code<=got_code_tick;
	ascii_partial <= scan_out;
 end arch ;  
 
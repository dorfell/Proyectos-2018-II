library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 use ieee.numeric_std.all;  
 entity ps2_rx is  
  port (  
 clk, reset: in std_logic;  
 ps2d, ps2c: in std_logic; -- k e y d a t a , k e y c l o c k  
 rx_en : in std_logic ;  
 rx_done_tick: out std_logic;  
 dout: out std_logic_vector (7 downto 0)  
 ) ;  
 end ps2_rx;  
 architecture arch of ps2_rx is  
 type statetype is (idle, dps, load);  
 signal state_reg , state_next : statetype;  
 signal filter_reg , filter_next : std_logic_vector (7 downto 0 ) ;  
 signal f_ps2c_reg, f_ps2c_next : std_logic ;  
 signal n_reg , n_next : unsigned (3 downto 0) ;  
 signal fall_edge : std_logic ;  
 signal b_reg , b_next : std_logic_vector (10 downto 0 ) ;  
 begin  
 --______________________________________________________________________________________-_-_--_-_--_ __  
 -- f i l t e r and f a l l i n g e d g e t i c k g e n e r a t i o n f o r ps2c  
 process ( clk , reset )  
 begin  
 if reset = '1' then  
 filter_reg <= ( others => '0' ) ;  
 f_ps2c_reg <= '0' ;  
 elsif ( clk'event and clk = '1' ) then  
 filter_reg <= filter_next ;  
 f_ps2c_reg <= f_ps2c_next ;  
 end if ;  
 end process ;  
 filter_next <= ps2c & filter_reg ( 7 downto 1);  
 f_ps2c_next <= '1' when filter_reg = "11111111" else  
			'0' when filter_reg = "00000000" else  
								  f_ps2c_reg ;  
 fall_edge <= f_ps2c_reg and ( not f_ps2c_next ) ;  
 --______-_______-_-_-_-_-_-_-__-_---_--_------_--_--- --------------  
 --45 -- f s m d t o e x t r a c t t h e 8 - b i t d a t a  
 --____ _-______-______-_-________________________-_-______-____-_-__-_--------------- ---------_-_------  
 ---_ r e g is t e r s  
 process ( clk , reset )  
 begin  
 if reset = '1' then  
 state_reg <= idle ;  
 n_reg <= ( others => '0' ) ;  
 b_reg <= ( others => '0' ) ;  
 elsif ( clk'event and clk = '1' ) then  
 state_reg <= state_next ;  
 n_reg <= n_next ;  
 b_reg <= b_next ;  
 end if ;  
 end process ;  
 -- n e x t - s t a t e l o g i c  
 process ( state_reg , n_reg,b_reg, fall_edge , rx_en , ps2d )  
 begin  
 rx_done_tick <= '0' ;  
 state_next <= state_reg ;  
 n_next <= n_reg ;  
 b_next <= b_reg ;  
 case state_reg is  
 when idle =>  
 if fall_edge = '1' and rx_en = '1' then  
 --s h if t i n s t a r t b i t  
 b_next <= ps2d & b_reg ( 10 downto 1);  
 n_next <= "1001" ;  
 state_next <= dps ;  
 end if ;  
 when dps => -- 8 d a t a + I p a r i t y + 1 s t o p  
 if fall_edge = '1' then  
 b_next <= ps2d & b_reg ( 10 downto 1 ) ;  
 if n_reg = 0 then  
 state_next <= load ;  
 else  
 n_next <= n_reg - 1;  
 end if ;  
 end if ;  
 when load =>  
 -- I e x t r a c l o c k t o c o m p l e t e f h e l a s t s h if t  
 state_next <= idle ;  
 rx_done_tick <='1';  
 end case ;  
 end process ;  
 -- o u t p u t  
 dout <= b_reg ( 8 downto 1); -- d a t a b i t s  
 end arch ;  
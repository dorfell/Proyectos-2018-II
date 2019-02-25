----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:08:16 02/17/2019 
-- Design Name: 
-- Module Name:    Texto - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Texto is
		port(
			clk, reset: in STD_LOGIC;
			pixel_x,pixel_y: in STD_LOGIC_VECTOR(9 downto 0);
			text_on: out STD_LOGIC_VECTOR(8 downto 0);
			text_rgb: out STD_LOGIC_VECTOR(7 downto 0);
			Placa1: in STD_LOGIC_VECTOR(6 downto 0);
			Placa2: in STD_LOGIC_VECTOR(6 downto 0)
			);
end Texto;

architecture Behavioral of Texto is
	signal pix_x, pix_y: unsigned(9 downto 0);
	signal rom_addr: STD_LOGIC_VECTOR(10 downto 0);
	signal char_addr, char_addr_s, char_addr_l, char_addr_r,
			 char_addr_o, char_addr_L1, char_addr_L2,
			 char_addr_A1,char_addr_A2,char_addr_A3: STD_LOGIC_VECTOR(6 downto 0);
	signal row_addr, row_addr_s, row_addr_l, row_addr_r,
			 row_addr_o, row_addr_L1, row_addr_L2,
			 row_addr_A1,row_addr_A2,row_addr_A3: STD_LOGIC_VECTOR(3 downto 0);
	signal bit_addr, bit_addr_s, bit_addr_l, bit_addr_r,
			 bit_addr_o, bit_addr_L1, bit_addr_L2,
			 bit_addr_A1,bit_addr_A2,bit_addr_A3: STD_LOGIC_VECTOR(2 downto 0);			 
	signal font_word: STD_LOGIC_VECTOR(7 downto 0);
	signal font_bit: std_logic;
	
	-- ojo cambiar
	signal score_on, logo_on, rule_on, over_on, 
			L1_on, L2_on, A1_on, A2_on, A3_on: STD_LOGIC;
	signal rule_rom_addr: unsigned(5 downto 0);
		
	begin
	
		pix_x <= unsigned(pixel_x);
		pix_y <= unsigned(pixel_y);
		
		font_unit: entity work.Font_ROM
				port map(clk=>clk, addr=>rom_addr, data=>font_word);
	
	
	over_on <=
		'1' when pix_y(9 downto 6) = 0 and
		    5 <= pix_x(9 downto 5) and 
				   pix_x(9 downto 5) <= 14 else
						  '0';
   row_addr_o <= STD_LOGIC_VECTOR(pix_y(5 downto 2));
   bit_addr_o <= STD_LOGIC_VECTOR(pix_x(4 downto 2));	
	
	with pix_x(8 downto 5) select
		char_addr_o <=
			"1000010" when "0101", --B
			"1001001" when "0110", --I
			"1000101" when "0111", --E
			"1001110" when "1000", --N
			"1010110" when "1001", --V
			"1000101" when "1010", --E
			"1001110" when "1011", --N
			"1001001" when "1100", --I
			"1000100" when "1101", --D
			"1001111" when others; --O
			
			
	score_on<=
		'1' when pix_y(9 downto 5) = 3 and
					12<= pix_x(9 downto 4) and 
						  pix_x(9 downto 4) <= 26 else
						  '0';
		
	row_addr_s <= STD_LOGIC_VECTOR(pix_y(4 downto 1));
	bit_addr_s <= STD_LOGIC_VECTOR(pix_x(3 downto 1));
	with pix_x(7 downto 4) select
		char_addr_s<=
			"1000100" when "1100", --D
			"1001001" when "1101", --i
			"1000111" when "1110", --g
			"1001001" when "1111", --i
			"1010100" when "0000", --t
			"1000101" when "0001", --e
			"0100000" when "0010", -- 
			"1010011" when "0011", --s
			"1010101" when "0100", --u
			"0100000" when "0101", -- 
			"1010000" when "0110", --p
			"1001100" when "0111", --l
			"1000001" when "1000", --a
			"1000011" when "1001", --c
			"1000001" when others; --a
----Aviso 1 (ocupado)
   A1_on<=
		'1' when pix_y(9 downto 5) = 8 and
					12<= pix_x(9 downto 4) and 
						  pix_x(9 downto 4) <= 26 else
						  '0';
		
	row_addr_A1 <= STD_LOGIC_VECTOR(pix_y(4 downto 1));
	bit_addr_A1 <= STD_LOGIC_VECTOR(pix_x(3 downto 1));
	with pix_x(7 downto 4) select
		char_addr_A1<=
			"1000100" when "1100", --D
			"1001001" when "1101", --i
			"1000111" when "1110", --g
			"1001001" when "1111", --i
			"1010100" when "0000", --t
			"1000101" when "0001", --e
			"0100000" when "0010", -- 
			"1010011" when "0011", --s
			"1010101" when "0100", --u
			"0100000" when "0101", -- 
			"1010000" when "0110", --p
			"1001100" when "0111", --l
			"1000001" when "1000", --a
			"1000011" when "1001", --c
			"1000001" when others; --a
--- Aviso 2 (Disponible)		
	A2_on<=
		'1' when pix_y(9 downto 5) = 8 and
					12<= pix_x(9 downto 4) and 
						  pix_x(9 downto 4) <= 26 else
						  '0';
		
	row_addr_A2 <= STD_LOGIC_VECTOR(pix_y(4 downto 1));
	bit_addr_A2 <= STD_LOGIC_VECTOR(pix_x(3 downto 1));
	with pix_x(7 downto 4) select
		char_addr_A2<=
			"1000100" when "1100", --D
			"1001001" when "1101", --i
			"1000111" when "1110", --g
			"1001001" when "1111", --i
			"1010100" when "0000", --t
			"1000101" when "0001", --e
			"0100000" when "0010", -- 
			"1010011" when "0011", --s
			"1010101" when "0100", --u
			"0100000" when "0101", -- 
			"1010000" when "0110", --p
			"1001100" when "0111", --l
			"1000001" when "1000", --a
			"1000011" when "1001", --c
			"1000001" when others; --a
--- Aviso 3 (No hay parq)

	A3_on<=
		'1' when pix_y(9 downto 5) = 8 and
					12<= pix_x(9 downto 4) and 
						  pix_x(9 downto 4) <= 26 else
						  '0';
		
	row_addr_A3 <= STD_LOGIC_VECTOR(pix_y(4 downto 1));
	bit_addr_A3 <= STD_LOGIC_VECTOR(pix_x(3 downto 1));
	with pix_x(7 downto 4) select
		char_addr_A3<=
			"1000100" when "1100", --D
			"1001001" when "1101", --i
			"1000111" when "1110", --g
			"1001001" when "1111", --i
			"1010100" when "0000", --t
			"1000101" when "0001", --e
			"0100000" when "0010", -- 
			"1010011" when "0011", --s
			"1010101" when "0100", --u
			"0100000" when "0101", -- 
			"1010000" when "0110", --p
			"1001100" when "0111", --l
			"1000001" when "1000", --a
			"1000011" when "1001", --c
			"1000001" when others; --a			
			
	L1_on <=
		'1' when pix_y(9 downto 7) = 1 and
				  (pix_x(9 downto 6) = 4 ) else
					'0';
						
	row_addr_L1 <= STD_LOGIC_VECTOR(pix_y(6 downto 3));
   bit_addr_L1 <= STD_LOGIC_VECTOR(pix_x(5 downto 3));	
			
	with pix_x(8 downto 6) select
		char_addr_L1 <=
			Placa1 when "100", --4
			"0100000" when others; --
			
	L2_on <=
		'1' when pix_y(9 downto 7) = 1 and
				  (pix_x(9 downto 6) = 5 ) else
					'0';
						
	row_addr_L2 <= STD_LOGIC_VECTOR(pix_y(6 downto 3));
   bit_addr_L2 <= STD_LOGIC_VECTOR(pix_x(5 downto 3));	
		
	with pix_x(8 downto 6) select
		char_addr_L2 <=
			Placa2 when "101", --5
			"0100000" when others; --
			
	rule_on <=
		'1' when pix_y(9 downto 6) = 6 and
				  (pix_x(9 downto 5) = 5 or
				   pix_x(9 downto 5) = 8 or
					pix_x(9 downto 5) = 11 or
					pix_x(9 downto 5) = 14 ) else
					'0';
						
	row_addr_r <= STD_LOGIC_VECTOR(pix_y(5 downto 2));
   bit_addr_r <= STD_LOGIC_VECTOR(pix_x(4 downto 2));	
			
	with pix_x(8 downto 5) select
		char_addr_r <=
			"0110001" when "0101", --1
			"0110010" when "1000", --2
			"0110011" when "1011", --3
			"0110100" when others; --4
			
			
	process(score_on,logo_on, rule_on, L1_on, L2_on, A1_on,A2_on,A3_on, pix_x, pix_y, font_bit,
			char_addr_s, char_addr_l, char_addr_r, char_addr_o,char_addr_L1,char_addr_L2,char_addr_A1,char_addr_A2,char_addr_A3,
			row_addr_s, row_addr_l, row_addr_r, row_addr_o,row_addr_L1,row_addr_L2,row_addr_A1,row_addr_A2,row_addr_A3,
			bit_addr_s, bit_addr_l, bit_addr_r, bit_addr_o,bit_addr_L1,bit_addr_L2,bit_addr_A1,bit_addr_A2,bit_addr_A3)
	begin
		text_rgb <="11111111";
		if score_on='1' then
			char_addr <= char_addr_s;
			row_addr <= row_addr_s;
			bit_addr <= bit_addr_s;
			if font_bit = '1' then
				text_rgb<= "00100000";
			end if;
		elsif A1_on = '1' then
			char_addr <= char_addr_A1;
			row_addr <= row_addr_A1;
			bit_addr <= bit_addr_A1;
			if font_bit = '1' then
				text_rgb<= "00000000";
			end if;
		elsif A2_on = '1' then
			char_addr <= char_addr_A2;
			row_addr <= row_addr_A2;
			bit_addr <= bit_addr_A2;
			if font_bit = '1' then
				text_rgb<= "00000000";
			end if;
		elsif A3_on = '1' then
			char_addr <= char_addr_A3;
			row_addr <= row_addr_A3;
			bit_addr <= bit_addr_A3;
			if font_bit = '1' then
				text_rgb<= "00000000";
			end if;
		elsif over_on = '1' then
			char_addr <= char_addr_o;
			row_addr <= row_addr_o;
			bit_addr <= bit_addr_o;
			if font_bit = '1' then
				text_rgb<= "00000000";
			end if;
		elsif L1_on = '1' then
			char_addr <= char_addr_L1;
			row_addr <= row_addr_L1;
			bit_addr <= bit_addr_L1;
			if font_bit = '1' then
				text_rgb<= "00101100";
			end if;
		elsif L2_on = '1' then
			char_addr <= char_addr_L2;
			row_addr <= row_addr_L2;
			bit_addr <= bit_addr_L2;
			if font_bit = '1' then
				text_rgb<= "00101100";
			end if;
		elsif rule_on = '1' then
			char_addr <= char_addr_r;
			row_addr <= row_addr_r;
			bit_addr <= bit_addr_r;
			if font_bit = '1' then
				text_rgb<= "00000000";
			end if;
		end if;
	end process;
	
	
		
	text_on <= score_on & logo_on & rule_on & over_on & L1_on & L2_on & A1_on & A2_on & A3_on;
	
	rom_addr <= char_addr & row_addr;
	font_bit <= font_word(to_integer(unsigned(not bit_addr)));

end Behavioral;


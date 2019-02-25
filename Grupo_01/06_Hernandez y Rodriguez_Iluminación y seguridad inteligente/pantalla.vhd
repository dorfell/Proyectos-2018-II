----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:32:48 11/06/2018 
-- Design Name: 
-- Module Name:    Pantalla - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pantalla is
   Port ( CLK : in  STD_LOGIC;
          RST : in  STD_LOGIC;
          HSYNC : out  STD_LOGIC;
          VSYNC : out  STD_LOGIC;
          RGB : out  STD_LOGIC_VECTOR (7 downto 0);
			 hora2 : in std_logic_vector(3 downto 0);
			 hora1 : in std_logic_vector(3 downto 0);
			 min2 : in std_logic_vector(3 downto 0);
			 min1 : in std_logic_vector(3 downto 0);
			 led : in std_logic_vector(6 downto 0)
			  );
end Pantalla;

	architecture Behavioral of Pantalla is
	signal clk25 : std_logic := '0';
	signal clk50 : std_logic := '0';
		
	constant HD : integer := 639;  --  639   Horizontal Display (640)
	constant HFP : integer := 16;         --   16   Right border (front porch)
	constant HSP : integer := 96;       --   96   Sync pulse (Retrace)
	constant HBP : integer := 48;        --   48   Left boarder (back porch)
	
	constant VD : integer := 479;   --  479   Vertical Display (480)
	constant VFP : integer := 10;       	 --   10   Right border (front porch)
	constant VSP : integer := 2;				 --    2   Sync pulse (Retrace)
	constant VBP : integer := 33;       --   33   Left boarder (back porch)
	
	signal hPos : integer := 0;
	signal vPos : integer := 0;
	
	signal videoOn : std_logic := '0';
begin
clk_div:process(CLK)
begin
	if(CLK'event and CLK = '1')then
		clk25 <= not clk25 ;
	end if;
end process;


clk_div2:process(clk25)
begin
	if(clk25'event and clk25 = '1')then
		clk50 <= not clk50 ;
	end if;
end process;


Horizontal_position_counter:process(clk50, RST)
begin
	if(RST = '1')then
		hpos <= 0;
	elsif(clk50'event and clk50 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk50, RST, hPos)
begin
	if(RST = '1')then
		vPos <= 0;
	elsif(clk50'event and clk50 = '1')then
		if(hPos = (HD + HFP + HSP + HBP))then
			if (vPos = (VD + VFP + VSP + VBP)) then
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk50, RST, hPos)
begin
	if(RST = '1')then
		HSYNC <= '0';
	elsif(clk50'event and clk50 = '1')then
		if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk50, RST, vPos)
begin
	if(RST = '1')then
		VSYNC <= '0';
	elsif(clk50'event and clk50 = '1')then
		if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;

video_on:process(clk50, RST, hPos, vPos)
begin
	if(RST = '1')then
		videoOn <= '0';
	elsif(clk50'event and clk50 = '1')then
		if(hPos <= HD and vPos <= VD)then
			videoOn <= '1';
		else
			videoOn <= '0';
		end if;
	end if;
end process;

	
draw:process(clk50, RST, hPos, vPos, videoOn)

  
begin
	if(RST = '1')then
		RGB <= "00000000";
	elsif(clk50'event and clk50 = '1')then
		if(videoOn = '1')then
		  if((((hPos >= 120 and hPos <= 130) and (vPos >= 90 and vPos <= 390))or
			 ((vPos >= 380 and vPos <= 390) and (hPos >= 170 and hPos <= 520))or
			 ((hPos >= 510 and hPos <= 520) and (vPos >= 380 and vPos <= 390))or
			 ((vPos >= 90 and vPos <= 100) and (hPos >= 120 and hPos <= 520))or
			 ((hPos >= 220 and hPos <= 230) and (vPos >= 90 and vPos <= 250))or
			 ((vPos >= 250 and vPos <= 240) and (hPos >= 220 and hPos <= 380))or
			 ((hPos >= 340 and hPos <= 350)and (vPos >= 90 and vPos <= 250))or
			 ((hPos >= 510 and hPos <= 520)and (vPos >= 90 and vPos <= 390))or
			 ((hPos >= 400 and hPos <= 410)and (vPos >= 220 and vPos <= 250))or 
			 ((vPos >= 240 and vPos <= 250) and (hPos >=230  and hPos <=290))or
			 ((vPos >= 220 and vPos <= 230) and (hPos >=410  and hPos <=460))or
			 ((hPos >= 250 and hPos <= 260)and (vPos >= 300 and vPos <= 380))or
			 ((vPos >= 300 and vPos <= 310) and (hPos >=300  and hPos <=400))or
			 ((hPos >= 400 and hPos <= 410)and (vPos >= 290 and vPos <= 320))or
			 ((vPos >= 320 and vPos <= 330) and (hPos >=400  and hPos <=520))or
			 
			 --numeros
			 ((((hPos >= 540 and hPos <= 541)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 559 and hPos <= 560)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 540 and hPos <= 560)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 540 and hPos <= 560)and (vPos >= 429 and vPos <= 430)))and hora2= "0000")--0
or
			   ((((hPos >= 559 and hPos <= 560)and (vPos >= 410 and vPos <= 430)))and hora2="0001")--1
or
          ((((hPos >= 540 and hPos <= 541)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 559 and hPos <= 560)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 540 and hPos <= 560)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 540 and hPos <= 560)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 540 and hPos <= 560)and (vPos >= 420 and vPos <= 420)))and hora2="0010") --2  			 
     		 )--Primera posicion
			 
			 or
			 
			 (
			 
			   ((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430)))and hora1="0000")--0
			 or
			   ((((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430)))and(hora1="0001"))--1
			 or
			   ((((hPos >= 565 and hPos <= 566)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and(hora1="0010"))--2
			 or
			   ((((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and hora1="0011")--3
				or
				((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and(hora1="0100"))--4
			 or
			 ((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and(hora1="0101"))--5
			 or
			   ((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and(hora1="0110"))--6
			 or
			 ((((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411)))and hora1="0111")--7
			 or
			   ((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and hora1="1000")--8
			 or
			   ((((hPos >= 565 and hPos <= 566)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 584 and hPos <= 585)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 565 and hPos <= 585)and (vPos >= 420 and vPos <= 420)))and hora1="1001")--9
			 
			 )--Segunda posicion
			 
			 or
			 (((hPos >= 590 and hPos <= 590)and (vPos >= 417 and vPos <= 417))or
			 ((hPos >= 590 and hPos <= 590)and (vPos >= 423 and vPos <= 423)))--:
			 or
			 
			 (
			 
			   ((((hPos >= 595 and hPos <= 596)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 614 and hPos <= 615)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 429 and vPos <= 430)))and min2="0000")--0
		 or
			   ((((hPos >= 614 and hPos <= 615)and (vPos >= 410 and vPos <= 430)))and min2="0001")--1
			or 
			   ((((hPos >= 595 and hPos <= 596)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 614 and hPos <= 615)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 420 and vPos <= 420)))and min2="0010")--2
			 or
			   ((((hPos >= 614 and hPos <= 615)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 420 and vPos <= 420))) and min2="0011")--3
			 or
			   ((((hPos >= 595 and hPos <= 596)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 614 and hPos <= 615)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 420 and vPos <= 420)))and min2="0100")--4
				or
          ((((hPos >= 595 and hPos <= 596)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 614 and hPos <= 615)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 595 and hPos <= 615)and (vPos >= 420 and vPos <= 420))) and min2="0101")--5
          
			 
			 )--tercera posicion
			 or
			 (
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430)))and min1="0000")--0
			 or
			   ((((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))) and min1="0001")--1
			 or
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="0010")--2
			 or
			   ((((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="0011")--3
				or
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="0100")--4
				or
          ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="0101")--5
				or
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 420 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="0110")--6
			 or
			   ((((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411)))and min1="0111")--7
			 or
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 429 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="1000")--8
			 or
			   ((((hPos >= 620 and hPos <= 621)and (vPos >= 410 and vPos <= 420))or
			 ((hPos >= 639 and hPos <= 640)and (vPos >= 410 and vPos <= 430))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 410 and vPos <= 411))or
			 ((hPos >= 620 and hPos <= 640)and (vPos >= 420 and vPos <= 420)))and min1="1001")--9
			 
			 )--Cuarta posicion 
			 
			 )then
			RGB <= "11111111";
         elsif(
			((((hPos >= 170 and hPos <= 180) AND (vPos >= 170 and vPos <= 180))and led(0) = '1')
			   or
				((hPos >= 185 and hPos <= 195) AND (vPos >=320 and vPos <= 330)and led(1)= '1')
				or
				((hPos >= 280 and hPos <= 290) AND (vPos >= 170 and vPos <= 180)and led(2)= '1')
				or
				((hPos >= 430 and hPos <= 440) AND (vPos >= 150 and vPos <= 160)and led(3)= '1')
				or
				((hPos >= 310 and hPos <= 320) AND (vPos >= 270 and vPos <= 280)and led(4)= '1')
				or
				((hPos >= 450 and hPos <= 460) AND (vPos >= 270 and vPos <= 280)and led(5)= '1')
				or
				((hPos >= 340 and hPos <= 350) AND (vPos >= 340 and vPos <= 350)and led(6)= '1')
				))then	
				RGB<="11111100";
		  else
		   RGB<="00000000";
		  end if;
		  else
		   RGB<="00000000";
		 end if; 
			
		end if;
	
	end process; 
	

	
end Behavioral;


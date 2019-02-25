
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity vga_driver is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (7 downto 0);
			  color: in  STD_LOGIC_VECTOR(2 downto 0);
			  texto: in  STD_LOGIC_VECTOR(1 downto 0)
			  );
		
end vga_driver;

 architecture Behavioral of vga_driver is

	signal clk25 : std_logic := '0';
	
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
		clk25 <= not clk25;
	end if;
end process;

Horizontal_position_counter:process(clk25, RST)
begin
	if(RST = '1')then
		hpos <= 0;
	elsif(clk25'event and clk25 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		vPos <= 0;
	elsif(clk25'event and clk25 = '1')then
		if(hPos = (HD + HFP + HSP + HBP))then
			if (vPos = (VD + VFP + VSP + VBP)) then
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		HSYNC <= '0';
	elsif(clk25'event and clk25 = '1')then
		if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk25, RST, vPos)
begin
	if(RST = '1')then
		VSYNC <= '0';
	elsif(clk25'event and clk25 = '1')then
		if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;

video_on:process(clk25, RST, hPos, vPos)
begin
	if(RST = '1')then
		videoOn <= '0';
	elsif(clk25'event and clk25 = '1')then
		if(hPos <= HD and vPos <= VD)then
			videoOn <= '1';
		else
			videoOn <= '0';
		end if;
	end if;
end process;


draw:process(clk25, RST, hPos, vPos, videoOn, color, texto)

  
begin
	if(RST = '1')then
		RGB <= "00000000";
	elsif(clk25'event and clk25 = '1')then
		if(videoOn = '1')then
			if(texto<="00")then
					if(((hPos >= 1 and hPos <= 10) AND (vPos >= 5 and vPos <= 235))or --C1
				((hPos >= 210 and hPos <= 220) AND (vPos >= 5 and vPos <= 235))or --C2
				((hPos >= 420 and hPos <= 430) AND (vPos >= 5 and vPos <= 235))or --C3
				((hPos >= 630 and hPos <= 640) AND (vPos >= 5 and vPos <= 235))or --C4
				((hPos >= 95 and hPos <= 105) AND (vPos >= 120 and vPos <= 200))or --1V
				((hPos >= 75 and hPos <= 125) AND (vPos >= 190 and vPos <= 200)))or --1H
				((hPos >= 285 and hPos <= 335) AND (vPos >= 120 and vPos <= 130))or --2h1
				((hPos >= 285 and hPos <= 335) AND (vPos >= 155 and vPos <= 165))or --2h2
				((hPos >= 285 and hPos <= 335) AND (vPos >= 190 and vPos <= 200))or --2h3
				((hPos >= 325 and hPos <= 335) AND (vPos >= 120 and vPos <= 165))or --2v1
				((hPos >= 285 and hPos <= 295) AND (vPos >= 160 and vPos <= 200))or --2v2
				((hPos >= 495 and hPos <= 545) AND (vPos >= 120 and vPos <= 130))or --3h1
				((hPos >= 495 and hPos <= 545) AND (vPos >= 155 and vPos <= 165))or --3h2
				((hPos >= 495 and hPos <= 545) AND (vPos >= 190 and vPos <= 200))or --3h3
				((hPos >= 535 and hPos <= 545) AND (vPos >= 120 and vPos <= 200))then --3v1
						RGB <= "00000000";
				 elsif( (hPos>=5 and hPos<=635) AND (vPos>=235 and vPos<=300) ) or ( (hPos>=5 and hPos<=215) AND (vPos>=235 and vPos<=440) ) then
        RGB<="00000001";
  elsif( ( (hPos>=7 and hPos<=33) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=7 and hPos<=33) AND (vPos>=452 and vPos<= 458) )  or ( (hPos>=7 and hPos<=33) AND (vPos>=463 and vPos<= 468) )  or ((hPos>=7 and hPos<=12) AND (vPos>=442 and vPos<= 468) ) )then --E
        RGB<="00010001";
  elsif( ( (hPos>=37 and hPos<=63) AND (vPos>=442 and vPos<=447) ) or ( (hPos>=37 and hPos<=42) AND (vPos>=442 and vPos<= 468) ) or ( (hPos>=58 and hPos<=63) AND (vPos>=442 and vPos<= 468) ) ) then --n
        RGB<="00010001";
  elsif( ( (hPos>=67 and hPos<=93) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=78 and hPos<=83) AND (vPos>=442 and vPos<= 468) ) )then --T
        RGB<="00010001";
  elsif( ( (hPos>=97 and hPos<=117) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=97 and hPos<=117) AND (vPos>=452 and vPos<= 458) ) or ( (hPos>=97 and hPos<=102) AND (vPos>=442 and vPos<= 468) ) or ( (hPos>=117 and hPos<=123) AND (vPos>=447 and vPos<= 457) ) or ( (hPos>=117 and hPos<=123) AND (vPos>=463 and vPos<= 468) ) or ( (hPos>=112 and hPos<=117) AND (vPos>=458 and vPos<= 463) ) )then --R
        RGB<="00010001";
  elsif( ( (hPos>=127 and hPos<=153) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=127 and hPos<=153) AND (vPos>=452 and vPos<= 457) ) or ( (hPos>=127 and hPos<=133) AND (vPos>=442 and vPos<= 468) ) or ( (hPos>=147 and hPos<=153) AND (vPos>=442 and vPos<= 468) ) ) then --A
       RGB<="00010001";  
  elsif( ( (hPos>=157 and hPos<=178) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=157 and hPos<=178) AND (vPos>=463 and vPos<= 468) ) or ( (hPos>=162 and hPos<=167) AND (vPos>=442 and vPos<= 468) ) or ( (hPos>=178 and hPos<=183) AND (vPos>=447 and vPos<= 463) ) ) then --D
       RGB<="00010001";
  elsif( ( (hPos>=187 and hPos<=213) AND (vPos>=442 and vPos<= 447) ) or ( (hPos>=187 and hPos<=213) AND (vPos>=452 and vPos<= 457) ) or ( (hPos>=187 and hPos<=193) AND (vPos>=442 and vPos<= 468) ) or ( (hPos>=207 and hPos<=213) AND (vPos>=442 and vPos<= 468) ) ) then --A
       RGB<="00010001";
  elsif( (hPos>=5 and hPos<=215) AND (vPos>=440 and vPos<=470))then
        RGB<="11111111"; --Cuadro blanco de entrada
elsif   (((hPos >= 478 and hPos <= 525) AND (vPos >= 245 and vPos <=288 )))then 
				RGB<="11111111";--Vidrio
elsif	(((hPos >= 482 and hPos <= 568) AND (vPos >= 374 and vPos <= 460)))then 
				RGB<="00000000";--Llanta derecha
elsif	(((hPos >= 307 and hPos <= 393) AND (vPos >= 374 and vPos <= 460)))then 
				RGB<="00000000";--Llanta 
elsif	(((hPos >= 265 and hPos <= 285) AND (vPos >= 288 and vPos <= 314)))then 
				RGB<="10000000";-- Luz atras
elsif	(((hPos >= 352 and hPos <= 525 ) AND (vPos >= 245 and vPos <= 288)))then 
				RGB<="00010001";--Lata superior
elsif	(((hPos >= 265 and hPos <= 610) AND  (vPos >= 288  and vPos <= 374)))then 
			        RGB<="00010001";-- Lata Inferior
		else
	RGB <= "11111111";		
		  
		  
	if(color <= "000")then
		if((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then 
		RGB <= "11000000";
		elsif((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
			RGB <= "11000000";		 
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		 RGB <= "11000000";
		 end if;
	elsif(color <= "001")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		end if;
	elsif(color <= "010")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		end if;
		
	elsif(color <= "011")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		end if;
		
	elsif(color <= "100")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		end if;
		
	elsif(color <= "101")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		end if;
		
	elsif(color <= "110")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "11000000";
		end if;
	elsif(color <= "111")then	
		if ((hPos >= 10 and hPos <= 210) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif ((hPos >= 220 and hPos <= 420) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		elsif((hPos >= 430 and hPos <= 630) AND (vPos >= 5 and vPos <= 235)) then
		RGB <= "00001000";
		end if;		
			end if;
			end if;
			end if;
			end if;
			end if;
	
end process;


end Behavioral;


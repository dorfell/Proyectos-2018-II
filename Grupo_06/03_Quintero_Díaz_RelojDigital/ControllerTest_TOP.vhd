
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		rst          : inout  std_logic;
		datos        : in std_logic;		
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		led			 : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end ControllerTest_TOP;

architecture Behavioral of ControllerTest_TOP is

	COMPONENT clock
	PORT(
		clk50mhz : IN std_logic;
		reset : IN std_logic;          
		hd : OUT INTEGER;
		hu : OUT INTEGER;
		md : OUT INTEGER;
		mu : OUT INTEGER;
		sd : OUT INTEGER;
		su : OUT INTEGER;
		led : OUT std_logic
		);
	END COMPONENT;


	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : IN    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
	END COMPONENT;
	
	signal hd : INTEGER;
	signal hu : INTEGER;
	signal md : INTEGER;
	signal mu : INTEGER;
	signal sd : INTEGER;
	signal su : INTEGER;
	
signal x_a : std_logic_vector(7 downto 0);
signal x_b : std_logic_vector(7 downto 0);
signal x_c : std_logic_vector(7 downto 0);
signal x_d : std_logic_vector(7 downto 0);
signal x_e : std_logic_vector(7 downto 0);
signal x_f : std_logic_vector(7 downto 0);	
	signal top_line : std_logic_vector(127 downto 0);
	signal bottom_line : std_logic_vector(127 downto 0) := x"486f6c612070726f6665736f72212121";
--546520416d6f203c3320536861726920
--436f73697461204c696e6461203a3320


begin

	Inst_clock: clock PORT MAP(
		clk50mhz => clk,
		reset => rst,
		hd => hd,
		hu => hu,
		md => md,
		mu => mu,
		sd => sd,
		su => su,
		led => led
	);

LCD: lcd_controller port map(
	clk => clk,
	reset_n => rst,
	e => lcd_e,
	rs => lcd_rs,
	rw => lcd_rw,
	lcd_data => lcd_db,
	line1_buffer => top_line,
	line2_buffer => bottom_line 
);



process(hd, hu, md, mu, sd, su)
begin
rst<='1';
top_line <= x"20686f7261" & x_a & x_b & x"3a" & x_c & x_d & x"3a" & x_e & x_f & x"202020"; --prueba

	case hd is
		when 1 => x_a <= x"31";
		when 2 => x_a <= x"32";
		when 3 => x_a <= x"33";
		when 4 => x_a <= x"34";
		when 5 => x_a <= x"35";
		when 6 => x_a <= x"36";
		when 7 => x_a <= x"37";
		when 8 => x_a <= x"38";
		when 9 => x_a <= x"39";
		when 0 => x_a <= x"30";
		when others => x_a <= x"00";
	end case;

	case hu is
		when 1 => x_b <= x"31";
		when 2 => x_b <= x"32";
		when 3 => x_b <= x"33";
		when 4 => x_b <= x"34";
		when 5 => x_b <= x"35";
		when 6 => x_b <= x"36";
		when 7 => x_b <= x"37";
		when 8 => x_b <= x"38";
		when 9 => x_b <= x"39";
		when 0 => x_b <= x"30";
		when others => x_b <= x"00";
	end case;

	case md is
		when 1 => x_c <= x"31";
		when 2 => x_c <= x"32";
		when 3 => x_c <= x"33";
		when 4 => x_c <= x"34";
		when 5 => x_c <= x"35";
		when 6 => x_c <= x"36";
		when 7 => x_c <= x"37";
		when 8 => x_c <= x"38";
		when 9 => x_c <= x"39";
		when 0 => x_c <= x"30";
		when others => x_c <= x"00";
	end case;

	case mu is
		when 1 => x_d <= x"31";
		when 2 => x_d <= x"32";
		when 3 => x_d <= x"33";
		when 4 => x_d <= x"34";
		when 5 => x_d <= x"35";
		when 6 => x_d <= x"36";
		when 7 => x_d <= x"37";
		when 8 => x_d <= x"38";
		when 9 => x_d <= x"39";
		when 0 => x_d <= x"30";
		when others => x_d <= x"00";
	end case;
	
		case sd is
		when 1 => x_e <= x"31";
		when 2 => x_e <= x"32";
		when 3 => x_e <= x"33";
		when 4 => x_e <= x"34";
		when 5 => x_e <= x"35";
		when 6 => x_e <= x"36";
		when 7 => x_e <= x"37";
		when 8 => x_e <= x"38";
		when 9 => x_e <= x"39";
		when 0 => x_e <= x"30";
		when others => x_e <= x"00";
	end case;
	
		case su is
		when 1 => x_f <= x"31";
		when 2 => x_f <= x"32";
		when 3 => x_f <= x"33";
		when 4 => x_f <= x"34";
		when 5 => x_f <= x"35";
		when 6 => x_f <= x"36";
		when 7 => x_f <= x"37";
		when 8 => x_f <= x"38";
		when 9 => x_f <= x"39";
		when 0 => x_f <= x"30";
		when others => x_f <= x"00";
	end case;

end process;



end Behavioral;


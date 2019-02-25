library ieee;
use IEEE.std_logic_1164.all;

entity Main is
port (clk : in std_logic;
      reset : inout std_logic;
		senso1: in std_logic;
		senso2: in std_logic;
		--servo1: out std_logic_vector (1 downto 0);
		--servo2: out std_logic_vector (1 downto 0);
		LCD_an: out std_logic;
		--FSM: out std_logic_vector (2 downto 0);
		key1: in std_logic;
		key2: in std_logic;
		lote1: in std_logic;
		lote2: in std_logic;
		lote3: in std_logic;
		lote4: in std_logic;
		lcd_e : out std_logic;
		lcd_rs: out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0);
--		key :  in  STD_LOGIC_VECTOR (1 downto 0); 
      PWM1 :  out  STD_LOGIC;
		PWM2 :  out  STD_LOGIC;
		prueba :  out  STD_LOGIC
		--prueba2 : out std_logic_vector (1 downto 0)
      --salida1 : out std_logic;
		--salida2 : out std_logic
  );
end Main;

architecture behavioral of Main is

COMPONENT Servo_controller 
	  PORT(
		clk :  in  STD_LOGIC;
      selector :  in  STD_LOGIC_VECTOR (1 downto 0);
      PWM :  out  STD_LOGIC);
END COMPONENT;

COMPONENT Servo_controller2 
	  PORT(
		clk :  in  STD_LOGIC;
      selector :  in  STD_LOGIC_VECTOR (1 downto 0);
      PWM :  out  STD_LOGIC);
END COMPONENT;

COMPONENT LCD_Main 
	  PORT(
		clk          : in  std_logic;
		FSM          : in    STD_LOGIC_VECTOR(2 downto 0);
		rst          : inout  std_logic;		
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT Sensor 
	  PORT(
		entrada : in std_logic;
      salida : out std_logic);
END COMPONENT;

--COMPONENT Sensor2
--	  PORT(
--		entrada : in std_logic;
--      salida : out std_logic);
--END COMPONENT;

type state_type is (s0,s1,s2,s3, s4);  --type of state machine.
signal  current_s,next_s: state_type;  --current and next state declaration.
signal texto: std_logic_vector (2 downto 0);
signal servo1, servo2, servo3: std_logic_vector (1 downto 0);
signal salida1, salida2: std_logic;
--signal pwm1, pwm2: std_logic_vector (1 downto 0);
begin

LCD: LCD_Main port map(
	 
	   clk => clk,
		FSM => texto,
		rst => reset,
		lcd_e => lcd_e,
		lcd_rs => lcd_rs,
		lcd_rw => lcd_rw, 
		lcd_db => lcd_db 
);


Serv: Servo_controller port map(
	 
	   clk => clk,
      selector => servo1, 
      PWM => PWM1
);

Serv2: Servo_controller2 port map(
	 
	   clk => clk,
      selector => servo2, 
      PWM => PWM2
);



Sen: Sensor port map(
	 
	   entrada => senso1,
      salida => salida1 
      
);

--Sen2: Sensor2 port map(
--	 
--	   entrada => senso2,
--      salida => salida2 
--      
--);

process (clk,reset)
begin
 if (reset='1') then
  current_s <= s0;  --default state on reset.
elsif (rising_edge(clk)) then
  current_s <= next_s;   --state change.
end if;
end process;

--state machine process.
process (current_s,senso1,salida1)
begin
  case current_s is
     when s0 =>        --when current state is "s0"
     if(salida1 ='1') then
	   LCD_an<='1';
      next_s <= s1;
    else
      servo1<= "00";
		LCD_an<='0';
      next_s <= s0;
     end if;   

    when s1 =>        --when current state is "s1"
		texto<="000";
	 if(key1='1') then
      next_s <= s2;
    elsif (key2='1') then
	    texto<="110";
	    next_s<= s4;
    else
	   next_s<=s1;
	 end if;
--process (key)
--begin
--	case key is
--      when "01" => 
--		next_s <= s2;
--		when "10" => 
--		texto<="110";
--		next_s <= s2;
--      when others => next_s<=s1;
--   end case;
--end process;

	 when s2 =>       --when current state is "s2"
    if(lote1='0') then
      texto<="001";
      next_s <= s3;
    elsif(lote2='0') then
      texto<="010";
      next_s <= s3;
	 elsif(lote3 ='0') then
      texto<="011";
      next_s <= s3;
	 elsif(lote4 ='0') then
      texto<="100";
      next_s <= s3;
	 else
	   texto<="101";
--		wait for 10000 ms;
		next_s<=s4;
    end if;

  when s3 =>         --when current state is "s3"
	  servo1<="10";
--	  wait for 50000 ms;
     next_s <= s0;
    
	when s4 =>
     texto<="110";	
	if(salida1='1') then
	  next_s <= s4;
	else 
	  next_s <= s0;
	end if;
	
  end case;
   
end process;

--process (salida2,senso2)
--begin
--	if (salida2='1') then
--	  servo2<="10";
----	  wait for 10000 ms;
----	  servo2<="00";
--	end if;  
--end process;

prueba<=key1 and key2 and lote1 and lote2 and lote3 and lote4;



end behavioral;
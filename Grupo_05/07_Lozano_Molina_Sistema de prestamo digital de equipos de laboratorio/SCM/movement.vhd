library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use work.phrases.ALL;

package movement is

function type_msm(
c_msm : std_logic_vector(2 downto 0)
)return integer;

impure function mod1(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector;

impure function mod2(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector;

impure function mod3(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector;

impure function mod4(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector;

impure function dot(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic; 

constant id :integer :=81;
constant sent :integer :=37;
constant code : integer :=61;
constant question :integer :=114;
constant finish :integer :=170;
constant error :integer :=29;
constant concatenation :integer :=235;

type palabra_8 is array ( 0 to 234) of std_logic_vector (7 downto 0);
type user is array ( 0 to 4) of std_logic_vector (7 downto 0);
type user_in is array ( 0 to 3) of user;
type MRAM is record
	print_msm : palabra_8;
end record;

end movement;

package body movement is



function type_msm(
c_msm : std_logic_vector(2 downto 0)
)return integer is
begin
case c_msm is
	when "001" => return id;
	when "100" => return sent;
	when "101" => return code;
	when "110" => return question;
	when "111" => return finish;
	when "011" => return concatenation;
	when others => return error;
end case;
end type_msm;

impure function mod1(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector is

begin
	return dot(c_msm(2 downto 0), user(1 downto 0),j-31,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-30,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-29,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-28,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-27,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-26,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-25,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-24,d,q);
	
end mod1;

impure function mod2(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector is

begin
	return dot(c_msm(2 downto 0), user(1 downto 0),j-23,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-22,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-21,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-20,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-19,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-18,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-17,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-16,d,q);
	
end mod2;

impure function mod3(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector is

begin
	return dot(c_msm(2 downto 0), user(1 downto 0),j-15,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-14,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-13,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-12,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-11,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-10,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-9,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-8,d,q);
	
end mod3;

impure function mod4(
c_msm : std_logic_vector (2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic_vector is

begin
	return dot(c_msm(2 downto 0), user(1 downto 0),j-7,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-6,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-5,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-4,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-3,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j-2,d,q)
			&dot(c_msm(2 downto 0), user(1 downto 0),j-1,d,q)&dot(c_msm(2 downto 0), user(1 downto 0),j,d,q);
	
end mod4;

impure function dot(
c_msm : std_logic_vector(2 downto 0);
user : std_logic_vector (1 downto 0);
j : integer;
d : integer;
q : integer
) return std_logic is
variable print : MRAM;
begin
--print.print_msm:=(others=>"00000000");
	case user is
		when "00" =>
			case c_msm is
				when "001" => --digite documento
					if(j<0 or j > q)then
						return '0';
					else
						return w_id(j)(d);
					end if;
				when "100" => --enviado
					if(j<0 or j > q)then
						return '0';
					else
						return w_sent(j)(d);
					end if;
				when "101" => --digite codigo del equipo
					if(j<0 or j > q)then
						return '0';
					else
						return w_code(j)(d);
					end if;
				when "110" => --¿seguir con prestamo? S-N
					if(j<0 or j > q)then
						return '0';
					else
						return w_question(j)(d);
					end if;
				when "111" => --prestamo realizado, espere llamado
					if(j<0 or j > q)then
						return '0';
					else
						return w_finish(j)(d);
					end if;
				when others => -- msms de error
					if(j<0 or j > q)then
						return '0';
					else
						return w_error(j)(d);
					end if;
			end case;
		when "01" => -- msm de usuario
			if(j<0 or j > q)then
						return '0';
					else
						return print.print_msm(j)(d);
					end if;
--		when "10" => --	
--		return w_check(j)(d);
		when others =>
			return w_error(j)(d);
	end case;
	return '0';
end dot;

end movement;

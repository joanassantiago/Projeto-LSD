library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTemperature is
	port(
		  reset		  : in  std_logic;
		  clk			  : in  std_logic;
		  tempVal	  : in  std_logic_vector(7 downto 0);
		  heating     : in  std_logic;
		  cooling     : in  std_logic;
		  heatingDone : out std_logic;
		  coolingDone : out std_logic;
		  disp_1      : out std_logic_vector(3 downto 0);
		  disp_2      : out std_logic_vector(3 downto 0);
		  disp_3      : out std_logic_vector(3 downto 0));
end TimerTemperature;

architecture Behavioral of TimerTemperature is

	signal s_counter : unsigned(7 downto 0) := (others => '0');
	signal s_heatDone, s_coolDone,s_coolStart : std_logic := '0';
	signal temp1, temp2, temp3 : unsigned(3 downto 0) := (others => '0');

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= to_unsigned(20,8);
				s_coolStart <= '0';
			else
				if heating = '1' then -- heating ativo faz a contagem crescente
					if (s_counter < unsigned(tempVal)) then
						s_counter <= s_counter + 10;  
					else
						s_heatDone <= '1';
					end if;
				end if;
					if cooling = '1' then -- cooling ativo faz a contagem decrescente
						if(s_coolStart = '0') then
							s_counter <= unsigned(tempVal);
							s_coolStart <= '1';
						else
							if(s_counter > to_unsigned(20, 8)) then
								s_counter <= s_counter - 10;
							else 
								s_coolDone <= '1';
							end if;
						end if;
					end if;
			end if;
		end if;
	end process;
	
	process(s_counter)
	begin
		temp1 <= to_unsigned(to_integer(s_counter) mod 10, 4); -- unidades
		temp2 <= to_unsigned((to_integer(s_counter) / 10) mod 10, 4); -- dezenas
		temp3 <= to_unsigned((to_integer(s_counter) / 100) mod 10, 4); -- centenas
	end process;
	
	disp_1 <= std_logic_vector(temp1);
	disp_2 <= std_logic_vector(temp2);
	disp_3 <= std_logic_vector(temp3);
	heatingDone <= s_heatDone;
	coolingDone <= s_coolDone;
end Behavioral;
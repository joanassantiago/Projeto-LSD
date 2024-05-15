library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Temp is
	port( clock  : in  std_logic;
			timerUpDown : in  std_logic;
			blink : in std_logic;
			tempFinal  : out std_logic_vector(15 downto 0)	
	);
end Temp;

architecture Behavioral of Temp is
	signal s_temp : unsigned(15 downto 0) := to_unsigned(20, 16);
begin
	process(clock, timerUpDown)
	begin
		if(rising_edge(clk)) then
			if (timerUpDown = '1') then
				if s_temp > to_unsigned(20,16) then
					s_temp <= s_temp + 10;
				end if;
			else
				if s_temp < to_unsigned(200,16) then
					s_temp <= s_temp - 10;
				end if;
			end if;
		end if;
	end process;
	tempFinal <= std_logic_vector(s_temp);
end Behavioral;
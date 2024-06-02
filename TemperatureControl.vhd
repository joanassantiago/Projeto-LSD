library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TemperatureControl is
    Port (
        clk           : in  std_logic;
        reset         : in  std_logic;
        temp_up       : in  std_logic;
		  temp_down     : in  std_logic;
		  temp_set      : out std_logic_vector(7 downto 0)
    );
end TemperatureControl;

architecture Behavioral of TemperatureControl is
    signal temperature : unsigned(7 downto 0) := to_unsigned(20, 8);  -- Temperatura inicial de 20ºC

begin
    process(clk, reset)
    begin
        if reset = '1' then
            temperature <= to_unsigned(20, 8);  
        elsif rising_edge(clk) then
				if temp_up = '1' then
					if temperature < "11111010" then -- Temperatura só pode chegar aos 250ºC
						temperature <= temperature + 1;
					end if;
				elsif temp_down = '1' then
					if temperature > "00010100" then -- Temperatura minima de 20ºC
						temperature <= temperature - 1;
					end if;
				end if;
	       end if;
    end process;

    temp_set <= std_logic_vector(temperature);
end Behavioral;
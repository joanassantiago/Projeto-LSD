library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TemperatureControl is
    Port (
        clk           : in  std_logic;
        reset         : in  std_logic;
        heating       : in  std_logic;
        cooling       : in  std_logic;
        target_temp   : in  std_logic_vector(7 downto 0);
        current_temp  : out std_logic_vector(7 downto 0);
        temp_reached  : out std_logic
    );
end TemperatureControl;

architecture Behavioral of TemperatureControl is
    signal temp : unsigned(7 downto 0) := to_unsigned(20, 8);  -- Initial temperature 20°C
    signal counter : unsigned(25 downto 0) := (others => '0'); -- Counter for 1 second timing

begin
    process(clk, reset)
    begin
        if reset = '1' then
            temp <= to_unsigned(20, 8);  -- Reset temperature to 20°C
            counter <= (others => '0');
        elsif rising_edge(clk) then
            if temp = to_unsigned(250, 8) then  
                temp <= (others => '0');
			   elsif heating = '1' and temp < unsigned(target_temp) then
				    temp <= temp + 10;  
			   elsif cooling = '1' and temp > to_unsigned(20, 8) then
				    temp <= temp - 10;  
			   end if;
        end if;
    end process;

    current_temp <= std_logic_vector(temp);
    temp_reached <= '1' when temp = unsigned(target_temp) else '0';
end Behavioral;
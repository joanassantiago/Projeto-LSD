library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TimeControl is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
		  enable      : in  std_logic;
        time_up     : in  std_logic;
        time_down   : in  std_logic;
        time_preheat: out std_logic_vector(7 downto 0);
		  time_cook   : out std_logic_vector(7 downto 0)
    );
end TimeControl;

architecture Behavioral of TimeControl is
    signal timepreheat, timecook : unsigned(7 downto 0) := to_unsigned(0, 8);
begin
    process (clk, reset)
    begin
        if reset = '1' then
				timepreheat <= to_unsigned(0, 8);
            timecook <= to_unsigned(0, 8);
        elsif rising_edge(clk) then
				if enable = '0' then 
					if time_up = '1' then
						 timepreheat <= timepreheat + 1;
					elsif time_down = '1' then
						 timepreheat <= timepreheat - 1;
					end if;
				else
					if time_up = '1' then
						 timecook <= timecook + 1;
					elsif time_down = '1' then
						 timecook <= timecook - 1;
					end if;
				end if;
        end if;
    end process;
    time_preheat <= std_logic_vector(timepreheat);
	 time_cook <= std_logic_vector(timecook);
end Behavioral;
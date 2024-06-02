library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TimeControl is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
		  phORcook    : in  std_logic;
        time_up     : in  std_logic;
        time_down   : in  std_logic;
        time_preheat: out std_logic_vector(7 downto 0);
		  time_cook   : out std_logic_vector(7 downto 0)
    );
end TimeControl;

architecture Behavioral of TimeControl is
    signal timepreheat, timecook : unsigned(7 downto 0) := to_unsigned(0, 8); -- Tempo inicial de 0s
begin
    process (clk, reset)
    begin
        if reset = '1' then
				timepreheat <= to_unsigned(0, 8);
            timecook <= to_unsigned(0, 8);
        elsif rising_edge(clk) then
				if phORcook = '0' then -- Um switch que quando está a 0 define o tempo de pré-aquecimento
					if time_up = '1' then
						if timepreheat < "00110010" then -- Defini um tempo limite de 50s
							timepreheat <= timepreheat + 1;
						end if;
					elsif time_down = '1' then
						if timepreheat > "00000001" then
							timepreheat <= timepreheat - 1;
						end if;
					end if;
				else -- Quando está a 1 define o tempo de cocção
					if time_up = '1' then
						if timecook < "00110010" then
							timecook <= timecook + 1;
						end if;
					elsif time_down = '1' then
						if timecook > "00000001" then
							timecook <= timecook - 1;
						end if;
					end if;
				end if;
        end if;
    end process;
    time_preheat <= std_logic_vector(timepreheat);
	 time_cook <= std_logic_vector(timecook);
end Behavioral;
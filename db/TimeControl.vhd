library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TimeControl is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        time_up     : in  STD_LOGIC;
        time_down   : in  STD_LOGIC;
        time_set    : out INTEGER range 0 to 255
    );
end TimeControl;

architecture Behavioral of TimeControl is
    signal current_time : INTEGER range 0 to 255 := 0;
begin
    process (clk, reset)
    begin
        if reset = '1' then
            current_time <= 0;
        elsif rising_edge(clk) then
            if time_up = '1' then
                current_time <= current_time + 1;
            elsif time_down = '1' then
                current_time <= current_time - 1;
            end if;
        end if;
    end process;
    time_set <= current_time;
end Behavioral;
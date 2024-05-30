library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTime is
    port(
        reset            : in  std_logic;
        clk              : in  std_logic;
        preheat_time_val : in  std_logic_vector(7 downto 0);
        cook_time_val    : in  std_logic_vector(7 downto 0);
        preheat_done     : out std_logic;
        cook_done        : out std_logic;
		  --preheatzero
		  --cookactive
        disp_1   : out std_logic_vector(3 downto 0);
        disp_2   : out std_logic_vector(3 downto 0)
    );
end TimerTime;

architecture Behavioral of TimerTime is
    signal counter : unsigned(7 downto 0) := (others => '0');
    signal preheat_zero, cook_zero   : std_logic := '0';
    signal time1, time2 : unsigned(3 downto 0) := (others => '0');
    signal preheat_active  : std_logic := '1';
    signal cook_active     : std_logic := '0';
	 signal start : std_logic := '0';

begin
    process(clk)
    begin	
        if rising_edge(clk) then
            if reset = '1' then
                preheat_zero <= '0';
                cook_zero <= '0';
                preheat_active <= '1';
                cook_active <= '0';
            else
                if preheat_active = '1' then
----						if start = '0' then
						  counter <= unsigned(preheat_time_val);
----						  start <= '1';
----						else
                    if counter = "00000000" then
                        preheat_zero <= '1';
                        preheat_active <= '0';
                        cook_active <= '1';
--								start <= '0';
                    else
                        counter <= counter - 1;
                        preheat_zero <= '0';
                    end if;
--						end if;
                elsif cook_active = '1' then
----						if start = '0' then
						  counter <= unsigned(cook_time_val);
----						  start <= '1';
----						else
                    if counter = "00000000" then
                        cook_zero <= '1';
                        cook_active <= '0';
--								start <= '0';
                    else
                        counter <= counter - 1;
                        cook_zero <= '0';
                    end if;
----						end if;
                end if;
            end if;
        end if;
    end process;

    process(counter)
    begin
        time1 <= to_unsigned((to_integer(counter)) / 10, 4); -- dezenas
        time2 <= to_unsigned(to_integer(counter) mod 10, 4); -- unidades
    end process;
	 
	 disp_1 <= std_logic_vector(time1);
    disp_2 <= std_logic_vector(time2);
	 preheat_done <= preheat_zero;
    cook_done <= cook_zero;
	 --preheatzero<= preheat_zero;
	 --cookActive <= 
end Behavioral;

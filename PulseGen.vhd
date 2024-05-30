library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PulseGen is
    generic(N: Positive := 50000000);
     port(clk   : in  std_logic;
          reset : in  std_logic;
          pulse : out std_logic);
end PulseGen;

architecture Behavioral of PulseGen is

	signal s_counter : natural range 0 to N-1;
	
begin

	count_proc : process(clk)
		begin
         if (rising_edge(clk)) then
                pulse <= '0';
              if (reset = '1') then
                    s_counter <= 0;
               else
                    s_counter <= s_counter + 1;
						  if (s_counter = N - 1) then
								s_counter <= 0;
								pulse <= '1';
							end if;
					end if;
			end if;
		end process;

end Behavioral;
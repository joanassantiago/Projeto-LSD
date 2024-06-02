library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTime is
    port(
        reset       : in  std_logic;
        clk         : in  std_logic;
		  phactive    : in std_logic;
		  cookactive  : in std_logic;
        preheat_val : in  std_logic_vector(7 downto 0);
        cook_val    : in  std_logic_vector(7 downto 0);
        phdone      : out std_logic;
        cookdone    : out std_logic;
        disp_1      : out std_logic_vector(3 downto 0);
        disp_2      : out std_logic_vector(3 downto 0)
    );
end TimerTime;

architecture Behavioral of TimerTime is
    signal counter : unsigned(7 downto 0) := (others => '0');
    signal preheat_zero, cook_zero   : std_logic := '0';
    signal time1, time2 : unsigned(3 downto 0) := (others => '0');
	 signal start : std_logic := '0';

begin
    process(clk)
    begin	
        if rising_edge(clk) then
            if reset = '1' then
                preheat_zero <= '0';
                cook_zero <= '0';
					 counter <= "00000000";
            else
                if phactive = '1' then -- quando phactive estiver ativo faz o countdown do tempo do pré-aquecimento
						if start = '0' then
						  counter <= unsigned(preheat_val);
						  preheat_zero <= '0';
						  start <= '1';
						else
                    if counter = "00000000" then
                        preheat_zero <= '1';
								start <= '0';
                    else
                        counter <= counter - 1;

                    end if;
						end if;
                elsif cookactive = '1' then -- quando cookactive estiver ativo faz o countdown do tempo do cocção
						if start = '0' then
						  counter <= unsigned(cook_val);
						  cook_zero <= '0';
						  start <= '1';
						else
                    if counter = "00000000" then
                        cook_zero <= '1';
								start <= '0';
                    else
                        counter <= counter - 1;
                    end if;
						end if;
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
	 phdone <= preheat_zero;
    cookdone <= cook_zero;
end Behavioral;

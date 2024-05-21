library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AirfryerFSM is
    Port (
        clk              : in  std_logic;
        reset            : in  std_logic;
        start            : in  std_logic;
        open_oven        : in  std_logic;
        temp_reached     : in  std_logic;
        time_done        : in  std_logic;
        cool_done        : in  std_logic;
        program_select   : in  std_logic_vector(2 downto 0);
        user_temp        : in  std_logic_vector(7 downto 0);
        user_preheat_time: in  std_logic_vector(7 downto 0);
        user_cook_time   : in  std_logic_vector(7 downto 0);
        state            : out std_logic_vector(2 downto 0);
        heating          : out std_logic;
        cooling          : out std_logic;
        food_in          : out std_logic;
        temp_set         : out std_logic_vector(7 downto 0);
        cook_time_set    : out std_logic_vector(7 downto 0)
    );
end AirfryerFSM;

architecture Behavioral of AirfryerFSM is
    type state_type is (IDLE, PreHEAT, COOK, FINISH, COOL);
    signal current_state, next_state: state_type;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, start, open_oven, temp_reached, time_done, cool_done, program_select, user_temp, user_preheat_time, user_cook_time)
    begin
        next_state <= current_state;
        heating <= '0';
        cooling <= '0';
        food_in <= '0';
        
        case current_state is
            when IDLE =>
                if start = '1' then
                    case program_select is
                        when "000" =>
                            temp_set <= std_logic_vector(to_unsigned(200, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(18, 8));
                        when "001" =>
                            temp_set <= user_temp;
                            cook_time_set <= user_cook_time;
                        when "010" =>
                            temp_set <= std_logic_vector(to_unsigned(180, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(15, 8));
                        when "011" =>
                            temp_set <= std_logic_vector(to_unsigned(200, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(20, 8));
                        when "100" =>
                            temp_set <= std_logic_vector(to_unsigned(170, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(20, 8));
                        when "101" =>
                            temp_set <= std_logic_vector(to_unsigned(170, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(20, 8));
                        when others =>
                            temp_set <= std_logic_vector(to_unsigned(200, 8));
                            cook_time_set <= std_logic_vector(to_unsigned(18, 8));
                    end case;
                    next_state <= PreHEAT;
                end if;
            
            when PreHEAT =>
                heating <= '1';
                if temp_reached = '1' then
                    next_state <= FINISH;
                end if;
                
            when FINISH =>
                food_in <= '1';
                if open_oven = '1' then
                    next_state <= COOK;
                end if;
                
            when COOK =>
                if time_done = '1' then
                    next_state <= COOL;
                end if;
                
            when COOL =>
                cooling <= '1';
                if cool_done = '1' then
                    next_state <= IDLE;
                end if;
                
            when others =>
                next_state <= IDLE;
        end case;
    end process;

    --state <= std_logic_vector(to_unsigned(current_state, 3));

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AirfryerFSM is
    Port (
        clk              : in  std_logic;
        reset            : in  std_logic;
        run              : in  std_logic;
        open_oven        : in  std_logic;
		  on_off      		 : in  std_logic;
        time_donePH      : in  std_logic;
        time_done        : in  std_logic;
        cool_done        : in  std_logic;
		  --preheatzero;
		  --cookactive
        program_select   : in  std_logic_vector(2 downto 0);
        user_temp        : in  std_logic_vector(7 downto 0);
        user_preheat_time: in  std_logic_vector(7 downto 0);
        user_cook_time   : in  std_logic_vector(7 downto 0);
        state            : out std_logic_vector(2 downto 0);
        heating          : out std_logic;
        cooling          : out std_logic;
        food_in          : out std_logic;
        temp_set         : out std_logic_vector(7 downto 0);
        cook_time_set    : out std_logic_vector(7 downto 0);
		  preheat_set      : out std_logic_vector(7 downto 0)
    );
end AirfryerFSM;

architecture Behavioral of AirfryerFSM is
    type state_type is (IDLE, PreHEAT, COOK, FINISH, COOL);
    signal current_state, next_state: state_type;
	 signal openOven_last : std_logic;
begin

--guardar o valor anterior do open oven
	process(clk)
    begin
         if rising_edge(clk) then
              openOven_last <= open_oven;
         end if;
    end process;
--
    sync_proc: process(clk, reset)
    begin
	
		if rising_edge(clk) then
        if reset = '1' then
            current_state <= IDLE;
        else
            current_state <= next_state;
        end if;
		end if;
    end process;

--    comb_proc: process(current_state, on_off, run, open_oven, time_donePH, time_done, cool_done, program_select, user_temp, user_preheat_time, user_cook_time)
    comb_proc: process(current_state)
	 begin
        heating <= '0';
        cooling <= '0';
        food_in <= '0';
--	
		if on_off = '1' then  
			state <= "000";
		else
			state <= "111";
--			  case (current_state) is
--					when IDLE =>
--						 state <= "000";
--						 if run = '1' then
--							
--							  case program_select is
--									
--									when "000" => -- default
--										 temp_set <= std_logic_vector(to_unsigned(200, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(18, 8));
--										 preheat_set <= std_logic_vector(to_unsigned(0, 8));
--										 next_state <= COOK;
--										 
--									when "001" => -- user
--										 temp_set <= user_temp;
--										 cook_time_set <= user_cook_time;
--										 preheat_set <= user_preheat_time;
--										 next_state <= PreHEAT;
--										 
--									when "010" => -- rissoes
--										 temp_set <= std_logic_vector(to_unsigned(180, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(15, 8));
--										 preheat_set <= std_logic_vector(to_unsigned(3, 8));
--										 --heating <= '1'; --em todos
--										 --if () then
--											next_state <= PreHEAT;
--											
--										 --end if;
--										 
--									when "011" => -- batatas
--										 temp_set <= std_logic_vector(to_unsigned(200, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
--										 preheat_set <= std_logic_vector(to_unsigned(5, 8));
--										 next_state <= PreHEAT;
--										 
--									when "100" => -- filete de peixe
--										 temp_set <= std_logic_vector(to_unsigned(170, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
--										 preheat_set <= std_logic_vector(to_unsigned(3, 8));
--										 next_state <= PreHEAT;
--										 
--									when "101" => -- hamburguer
--										 temp_set <= std_logic_vector(to_unsigned(170, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
--										 preheat_set <= std_logic_vector(to_unsigned(5, 8));
--										 next_state <= PreHEAT;
--										 
--									when others =>
--										 temp_set <= std_logic_vector(to_unsigned(200, 8));
--										 cook_time_set <= std_logic_vector(to_unsigned(18, 8));
--										 next_state <= COOK;
--							  end case;
--						 end if;
--					
--					when PreHEAT =>
--						 state <= "001";
--						 heating <= '1';
--						 if time_donePH = '1' then
--							  next_state <= COOK;
--						 end if;
--						 
--				-- when PreHEAT =>
--	--					   state <= "010";
--	--                --mudar nome do en para preHeatDone
--	--                if time_donePH = '0' then
--						--		 food_in <= '1';
--	--                    next_state <= COOK;
--	--                end if;
--
--	--				 when COOK =>
--	--					 state <= "011";
--							 --food_in <= '1';
--		--					 if (openOven_last = '1' and openOven = '0') then
--						--	 	cook_active = '1';
--							--	if time_done = '1' then
--		--                 	next_state <= FINISH;
--		--              	end if;
--			--			    end if;
--					--  end if;
--	--              
--
--	--				when FINISH =>
--	--					 state <= "100";
--	--                if open_oven = '1' then
--	--                    next_state <= COOL;
--	--                end if;
--	
--	--				 when COOL =>
--	--					 state <= "101";
--					--  cooling <=  '1';
--	--                if cool_done = '1' then
--	--                    next_state <= IDLE;
--	--                end if;
--						 
--					when COOK =>
--						 state <= "010";
--						 if time_done = '1' then
--							  next_state <= FINISH;
--						 end if;
--						 
--					when FINISH =>
--						 state <= "011";
--						 if open_oven = '1' then
--							  next_state <= COOL;
--						 end if;	
--						 
--					when COOL =>
--						 state <= "100";
--						 cooling <= '1';
--						 if cool_done = '1' then
--							  next_state <= IDLE;
--						 end if;
--						 
--					when others =>
--						 next_state <= IDLE;
--						 
--			  end case;
		end if;
    end process;

end Behavioral;

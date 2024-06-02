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
        preheatDone      : in  std_logic;
        coolingDone      : in  std_logic;
        cookingDone      : in  std_logic;
		  heatingDone      : in  std_logic;
        program_select   : in  std_logic_vector(2 downto 0);
        user_temp        : in  std_logic_vector(7 downto 0);
        user_preheat_time: in  std_logic_vector(7 downto 0);
        user_cook_time   : in  std_logic_vector(7 downto 0);
        state            : out std_logic_vector(2 downto 0);
        heating          : out std_logic;
        cooling          : out std_logic;
		  cooking          : out std_logic;
		  preheating		 : out std_logic;
        food_in          : out std_logic;
        tempSet          : out std_logic_vector(7 downto 0);
        cookSet          : out std_logic_vector(7 downto 0);
		  preheatSet       : out std_logic_vector(7 downto 0)
    );
end AirfryerFSM;

architecture Behavioral of AirfryerFSM is
    type state_type is (IDLE, PreHEAT, COOK, FINISH, COOL);
    signal current_state, next_state: state_type;
	 signal openOven_last, s_enable : std_logic; -- openOven_last serve para guardar o último valor de open_oven
	 signal s_states : std_logic_vector(2 downto 0) := (others => '0');
	 signal temp_set, cook_time_set, preheat_set : std_logic_vector(7 downto 0) := (others => '0');
begin

    sync_proc: process(clk, reset)
    begin
	
		if rising_edge(clk) then
			if on_off = '1' then
				current_state <= next_state;
				openOven_last <= open_oven;
			else
				current_state <= IDLE;
				openOven_last <= '0';
			end if;
		end if;
    end process;

    comb_proc: process(current_state, on_off, run, open_oven, preheatDone, cookingDone, coolingDone, heatingDone, program_select, user_temp, user_preheat_time, user_cook_time,openOven_last,temp_set, cook_time_set, preheat_set,s_states, next_state)
	 begin
      
		  heating <= '0';
        cooling <= '0';
        food_in <= '0';
		  
		  temp_set <= temp_set;
		  cook_time_set <= cook_time_set;
		  preheat_set <= preheat_set;
		  next_state <= current_state;
		  preheating <= '0';
		  cooking <= '0';
		if s_enable = '0' then  
			s_states <= "000";
		else
			s_states <= "111";
			  case (current_state) is
					when IDLE =>
						 s_states <= "001";
						 if run = '1' then
							  case program_select is
									
									when "000" => -- default
										 temp_set <= std_logic_vector(to_unsigned(200, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(18, 8));
										 preheat_set <= std_logic_vector(to_unsigned(0, 8));

										 if(heatingDone = '1') then
											next_state <= COOK;
										 else
											heating <= '1';
										 end if;
										 
									when "001" => -- user
										 temp_set <= user_temp;
										 cook_time_set <= user_cook_time;
										 preheat_set <= user_preheat_time;
										 
										 if(heatingDone = '1') then
											next_state <= PreHEAT;
										 else
											heating <= '1';
										 end if;
										 
									when "010" => -- rissoes
										 temp_set <= std_logic_vector(to_unsigned(180, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(15, 8));
										 preheat_set <= std_logic_vector(to_unsigned(3, 8));
										 
										 if(heatingDone = '1') then
											next_state <= PreHEAT;
										 else
											heating <= '1';
										 end if;
										 
									when "011" => -- batatas
										 temp_set <= std_logic_vector(to_unsigned(200, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
										 preheat_set <= std_logic_vector(to_unsigned(5, 8));
										 
										 if(heatingDone = '1') then
											next_state <= PreHEAT;
										 else
											heating <= '1';
										 end if;
										 
									when "100" => -- filete de peixe
										 temp_set <= std_logic_vector(to_unsigned(170, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
										 preheat_set <= std_logic_vector(to_unsigned(3, 8));
										 
										 if(heatingDone = '1') then
											next_state <= PreHEAT;
										 else
											heating <= '1';
										 end if;
										 
									when "101" => -- hamburguer
										 temp_set <= std_logic_vector(to_unsigned(170, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(20, 8));
										 preheat_set <= std_logic_vector(to_unsigned(5, 8));
										 
										 if(heatingDone = '1') then
											next_state <= PreHEAT;
										 else
											heating <= '1';
										 end if;
										 
									when others =>
										 temp_set <= std_logic_vector(to_unsigned(200, 8));
										 cook_time_set <= std_logic_vector(to_unsigned(18, 8));
										 
										 if(heatingDone = '1') then
											next_state <= COOK;
										 else
											heating <= '1';
										 end if;
							  end case;
						 end if;
					
					when PreHEAT =>
						s_states <= "010";
						preheating <= '1';
	               if preheatDone = '1' then
							food_in <= '1';
	                  next_state <= COOK;
	               end if;

					when COOK =>
						s_states <= "011";
						if (openOven_last = '1') and (open_oven = '0') then -- só pode começar a cozinhar quando abre a cuba e fecha a cuba, por isso openOven_last é para indicar que abriu porque está a 1
							cooking <= '1';
						end if;
						if cookingDone = '1' then
							next_state <= FINISH;
						end if;
	          
					when FINISH =>
						 s_states <= "100";
	                if open_oven = '1' then
	                    next_state <= COOL;
	                end if;
	
					when COOL =>
						s_states <= "101";
						cooling <=  '1';
	               if coolingDone = '1' then
							next_state <= IDLE;
	               end if;
						 
					when others =>
						next_state <= IDLE;
						 
			  end case;
		end if;
		
		state <= s_states;
		tempSet <= temp_set;
		cookSet <= cook_time_set;
		preheatSet <= preheat_set;
		
    end process;

end Behavioral;

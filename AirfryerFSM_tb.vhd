library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AirfryerFSM_tb is
end AirfryerFSM_tb;

architecture Behavioral of AirfryerFSM_tb is

    signal clk               : std_logic := '0';
    signal reset             : std_logic := '0';
    signal run               : std_logic := '0';
    signal open_oven         : std_logic := '0';
    signal on_off            : std_logic := '0';
    signal preheatDone       : std_logic := '0';
    signal coolingDone       : std_logic := '0';
    signal cookingDone       : std_logic := '0';
    signal heatingDone       : std_logic := '0';
    signal program_select    : std_logic_vector(2 downto 0) := (others => '0');
    signal user_temp         : std_logic_vector(7 downto 0) := (others => '0');
    signal user_preheat_time : std_logic_vector(7 downto 0) := (others => '0');
    signal user_cook_time    : std_logic_vector(7 downto 0) := (others => '0');
    signal state             : std_logic_vector(2 downto 0);
    signal heating           : std_logic;
    signal cooling           : std_logic;
    signal cooking           : std_logic;
    signal preheating        : std_logic;
    signal food_in           : std_logic;
    signal tempSet           : std_logic_vector(7 downto 0);
    signal cookSet           : std_logic_vector(7 downto 0);
    signal preheatSet        : std_logic_vector(7 downto 0);

    -- Clock generation
    constant clk_period : time := 10 ns;
    constant rissoes_temp : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(180, 8));
    constant rissoes_cook_time : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(15, 8));
    constant rissoes_preheat_time : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(3, 8));
    
begin

    uut: entity work.AirfryerFSM
        port map (
            clk => clk,
            reset => reset,
            run => run,
            open_oven => open_oven,
            on_off => on_off,
            preheatDone => preheatDone,
            coolingDone => coolingDone,
            cookingDone => cookingDone,
            heatingDone => heatingDone,
            program_select => program_select,
            user_temp => user_temp,
            user_preheat_time => user_preheat_time,
            user_cook_time => user_cook_time,
            state => state,
            heating => heating,
            cooling => cooling,
            cooking => cooking,
            preheating => preheating,
            food_in => food_in,
            tempSet => tempSet,
            cookSet => cookSet,
            preheatSet => preheatSet
        );

    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        -- Inicializar inputs
        reset <= '1';
        run <= '0';
        on_off <= '0';
        open_oven <= '0';
        preheatDone <= '0';
        coolingDone <= '0';
        cookingDone <= '0';
        heatingDone <= '0';
        program_select <= "010";  -- Seleção do programa rissoes
        
        wait for 20 ns;
        
        reset <= '0';
        wait for 20 ns;
        
        -- Ligar a airfryer
        on_off <= '1';
        wait for 20 ns;

        -- Começar o processo de aquecimento
        run <= '1';
        wait for 50 ns;
        
        -- Aquecimento pronto
        heatingDone <= '1';
        wait for 20 ns;

        -- Pré-aquecimento pronto
        preheatDone <= '1';
        wait for 50 ns;

        -- Cocção pronta 
        cookingDone <= '1';
        wait for 50 ns;
        
        -- Abrir a cuba para acabar o processo 
        open_oven <= '1';
        wait for 50 ns;
        
        -- Arrefecimento pronto
        coolingDone <= '1';
        wait for 50 ns;
        
        -- Desligar a airfryer
        on_off <= '0';
        wait for 50 ns;

        wait;
    end process;

end Behavioral;

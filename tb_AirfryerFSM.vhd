library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_AirfryerFSM is
end tb_AirfryerFSM;

architecture Behavioral of tb_AirfryerFSM is

    -- Component declaration for the Unit Under Test (UUT)
    component AirfryerFSM
        Port (
            clk              : in  std_logic;
            reset            : in  std_logic;
            run              : in  std_logic;
            open_oven        : in  std_logic;
            on_off           : in  std_logic;
            en               : in  std_logic;
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
            cook_time_set    : out std_logic_vector(7 downto 0);
            preheat_set      : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signal declarations to connect to UUT
    signal clk              : std_logic := '0';
    signal reset            : std_logic := '0';
    signal run              : std_logic := '0';
    signal open_oven        : std_logic := '0';
    signal on_off           : std_logic := '0';
    signal en               : std_logic := '0';
    signal time_done        : std_logic := '0';
    signal cool_done        : std_logic := '0';
    signal program_select   : std_logic_vector(2 downto 0) := (others => '0');
    signal user_temp        : std_logic_vector(7 downto 0) := (others => '0');
    signal user_preheat_time: std_logic_vector(7 downto 0) := (others => '0');
    signal user_cook_time   : std_logic_vector(7 downto 0) := (others => '0');
    signal state            : std_logic_vector(2 downto 0);
    signal heating          : std_logic;
    signal cooling          : std_logic;
    signal food_in          : std_logic;
    signal temp_set         : std_logic_vector(7 downto 0);
    signal cook_time_set    : std_logic_vector(7 downto 0);
    signal preheat_set      : std_logic_vector(7 downto 0);

    -- Clock generation process
    constant clk_period : time := 10 ns;
    begin
        clk_process : process
        begin
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end process;

    -- Instantiate the Unit Under Test (UUT)
    uut: AirfryerFSM
        Port map (
            clk              => clk,
            reset            => reset,
            run              => run,
            open_oven        => open_oven,
            on_off           => on_off,
            en               => en,
            time_done        => time_done,
            cool_done        => cool_done,
            program_select   => program_select,
            user_temp        => user_temp,
            user_preheat_time=> user_preheat_time,
            user_cook_time   => user_cook_time,
            state            => state,
            heating          => heating,
            cooling          => cooling,
            food_in          => food_in,
            temp_set         => temp_set,
            cook_time_set    => cook_time_set,
            preheat_set      => preheat_set
        );

    -- Test stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        reset <= '1';
        run <= '0';
        open_oven <= '0';
        on_off <= '0';
        en <= '0';
        time_done <= '0';
        cool_done <= '0';
        program_select <= "000";
        user_temp <= (others => '0');
        user_preheat_time <= (others => '0');
        user_cook_time <= (others => '0');
        wait for 20 ns;

        -- Apply reset
        reset <= '0';
        wait for 20 ns;

        -- Start simulation
        -- Test default program
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test user program
        program_select <= "001";
        user_temp <= std_logic_vector(to_unsigned(180, 8));
        user_preheat_time <= std_logic_vector(to_unsigned(5, 8));
        user_cook_time <= std_logic_vector(to_unsigned(25, 8));
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test rissoes program
        program_select <= "010";
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test batatas program
        program_select <= "011";
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test filete de peixe program
        program_select <= "100";
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test hamburguer program
        program_select <= "101";
        run <= '1';
        wait for 20 ns;
        run <= '0';
        wait for 100 ns;

        -- Test COOL state
        time_done <= '1';
        wait for 20 ns;
        time_done <= '0';
        cool_done <= '1';
        wait for 20 ns;
        cool_done <= '0';

        -- End simulation
        wait;
    end process;

end Behavioral;

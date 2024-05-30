library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_AirfryerFSM is
end tb_AirfryerFSM;

architecture Behavioral of tb_AirfryerFSM is

    -- Component declaration for the Unit Under Test (UUT)
    component AirfryerFSM is
        Port (
            clk              : in  std_logic;
            reset            : in  std_logic;
            run              : in  std_logic;
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
            cook_time_set    : out std_logic_vector(7 downto 0);
            preheat_set      : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals for simulating inputs and outputs
    signal clk              : std_logic := '0';
    signal reset            : std_logic := '0';
    signal run              : std_logic := '0';
    signal open_oven        : std_logic := '0';
    signal temp_reached     : std_logic := '0';
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

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: AirfryerFSM
        Port map (
            clk => clk,
            reset => reset,
            run => run,
            open_oven => open_oven,
            temp_reached => temp_reached,
            time_done => time_done,
            cool_done => cool_done,
            program_select => program_select,
            user_temp => user_temp,
            user_preheat_time => user_preheat_time,
            user_cook_time => user_cook_time,
            state => state,
            heating => heating,
            cooling => cooling,
            food_in => food_in,
            temp_set => temp_set,
            cook_time_set => cook_time_set,
            preheat_set => preheat_set
        );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- Initialize inputs
        program_select <= "001";
        user_temp <= std_logic_vector(to_unsigned(180, 8));
        user_preheat_time <= std_logic_vector(to_unsigned(5, 8));
        user_cook_time <= std_logic_vector(to_unsigned(20, 8));

        -- Test case: Start cooking process
        run <= '1';
        wait for 20 ns;
        run <= '0';
        
        -- Wait and check preheating state
        wait for 100 ns;
        temp_reached <= '1';
        wait for 20 ns;
        temp_reached <= '0';
        
        -- Wait and check cooking state
        open_oven <= '1';
        wait for 20 ns;
        open_oven <= '0';
        
        -- Simulate end of cooking
        wait for 300 ns;
        time_done <= '1';
        wait for 20 ns;
        time_done <= '0';

        -- Wait and check cooling state
        wait for 100 ns;
        cool_done <= '1';
        wait for 20 ns;
        cool_done <= '0';

        -- Wait for some time and finish simulation
        wait for 200 ns;
        assert false report "End of Simulation" severity failure;
    end process;

end Behavioral;

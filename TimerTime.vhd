library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTime is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  newTime	: in  std_logic;
		  timeVal	: in  std_logic_vector(7 downto 0);
		  timeExp	: out std_logic;
		  data_out  : out std_logic_vector(7 downto 0);
		  disp_1    : out std_logic_vector(3 downto 0);
		  disp_2    : out std_logic_vector(3 downto 0));
end TimerTime;

architecture Behavioral of TimerTime is

	signal s_counter : unsigned(7 downto 0) := (others => '0');
	signal s_cntZero : std_logic := '0';
	signal time1, time2: unsigned(3 downto 0) := (others => '0');

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (others => '1');
				s_cntZero <= '0';
			elsif (newTime = '1') then
				s_counter <= unsigned(timeVal);
				s_cntZero <= '0';
			else
				if (s_counter = "00000000") then
					s_cntZero <= '1';
				else
					s_counter <= s_counter - 1;
					s_cntZero <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process(s_counter)
	begin
		time1 <= to_unsigned((to_integer(s_counter) mod 100) / 10, 4);
		time2 <= to_unsigned(to_integer(s_counter) mod 10, 4);
	end process;
	
	disp_1 <= std_logic_vector(time1);
	disp_2 <= std_logic_vector(time2);
	timeExp <= s_cntZero;
	data_out <= std_logic_vector(s_counter);
end Behavioral;
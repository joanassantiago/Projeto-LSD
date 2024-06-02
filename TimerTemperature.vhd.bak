library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTemperature is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  timeVal	: in  std_logic_vector(7 downto 0);
		  heating   : in  std_logic;
		  cooling   : in  std_logic;
		  timeExp	: out std_logic;
		  disp_1    : out std_logic_vector(3 downto 0);
		  disp_2    : out std_logic_vector(3 downto 0);
		  disp_3    : out std_logic_vector(3 downto 0));
end TimerTemperature;

architecture Behavioral of TimerTemperature is

	signal s_counter : unsigned(7 downto 0) := (others => '0');
	signal s_cntZero : std_logic := '0';
	signal temp1, temp2, temp3 : unsigned(3 downto 0) := (others => '0');

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (others => '0');
				s_cntZero <= '0';
			else
			-- tirar isto
				s_counter <= unsigned(timeVal);
				s_cntZero <= '0';
				if (s_counter = "00000000") then
					s_cntZero <= '1';
				else 
					if heating = '1' and s_counter < unsigned(timeVal) then
						s_counter <= s_counter + 10;  
						-- criar um output
					elsif cooling = '1' and s_counter > to_unsigned(20, 8) then
						s_counter <= s_counter - 10; 
					end if;
					s_cntZero <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process(s_counter)
	begin
		temp1 <= to_unsigned((to_integer(s_counter) mod 100) / 10, 4); -- unidades
		temp2 <= to_unsigned(to_integer(s_counter) mod 10, 4); -- dezenas
		temp3 <= to_unsigned((to_integer(s_counter) / 100), 4); -- centenas
	end process;
	
	disp_1 <= std_logic_vector(temp1);
	disp_2 <= std_logic_vector(temp2);
	disp_3 <= std_logic_vector(temp3);
	timeExp <= s_cntZero;
end Behavioral;
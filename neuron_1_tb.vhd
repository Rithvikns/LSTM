library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity neuron_1_tb is
end neuron_1_tb;

architecture sim of neuron_1_tb is
    -- Component Declaration
    component neuron_1 is
        port (           
				clk : in std_logic;
            num : in integer;
            x : in STD_LOGIC_VECTOR(15 downto 0);
            c_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
				h_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
				h_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0);
				c_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0)
    );
    end component;

    -- Signals for Test Bench
    signal clk_tb : std_logic := '0';
	 signal num_tb : integer := 1;
    signal x_tb : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	 signal c_t_minus_in_tb : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	 signal h_t_minus_in_tb : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	 signal c_t_minus_5_tb : STD_LOGIC_VECTOR(15 downto 0) ;
    signal h_t_minus_5_tb : STD_LOGIC_VECTOR(15 downto 0);

    constant CLK_PERIOD : time := 10 ns; -- Define clock period

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT : neuron_1
    port map (
        clk => clk_tb,
        num => num_tb,
        x => x_tb,
        c_t_minus_in => c_t_minus_in_tb,
		  h_t_minus_in => h_t_minus_in_tb,
		  c_t_minus_5 => c_t_minus_5_tb,
		  h_t_minus_5 => h_t_minus_5_tb
    );
	 
	     clk_process: process
    begin
        while now < 1000 ns loop -- Run for 1000 ns
            clk_tb <= '0';
            wait for CLK_PERIOD / 2;
            clk_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus Process
    stimulus: process
    begin
	        wait for CLK_PERIOD * 1; -- Wait for one clock cycle before applying inputs
        num_tb <= 1; -- Example value for 'num'
        x_tb <= "0000000011010110"; -- Example value for 'x'
		  c_t_minus_in_tb <= "0000000000000000";
		  h_t_minus_in_tb <= "0000000000000000";
        wait for CLK_PERIOD * 10; -- Wait for 10 clock cycles
        -- Add more stimuli if needed
        wait;
    end process;
	 
	     check_output: process
    begin
        wait for CLK_PERIOD * 5; -- Wait for 5 clock cycles before checking outputs
        assert false report "Output mismatch" severity error; -- Add appropriate checks
        wait;
    end process;

end sim;

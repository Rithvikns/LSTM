library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity neuron_1 is
    port (
        clk : in std_logic;
		  num : in integer;
        x : in STD_LOGIC_VECTOR(15 downto 0);
		  c_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
		  h_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
        h_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0);
		  c_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end neuron_1;

architecture Behavioral of neuron_1 is
    signal comp_c_t_minus_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal comp_h_t_minus_2 : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal f_t_1 : STD_LOGIC_VECTOR(15 downto 0);
    signal i_t_1 : STD_LOGIC_VECTOR(15 downto 0);
    signal o_t_1 : STD_LOGIC_VECTOR(15 downto 0);
    signal c_t_1 : STD_LOGIC_VECTOR(15 downto 0);
    signal f_t_2 : STD_LOGIC_VECTOR(15 downto 0);
    signal i_t_2 : STD_LOGIC_VECTOR(15 downto 0);
    signal o_t_2 : STD_LOGIC_VECTOR(15 downto 0);
    signal c_t_2 : STD_LOGIC_VECTOR(15 downto 0);
component forget_1 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		f_t_1 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component forget_2 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		f_t_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component input_1 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		i_t_1 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component input_2 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		i_t_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;component comp_1 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_1 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component comp_2 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component output_1 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_1 : in STD_LOGIC_VECTOR(15 downto 0);
		o_t_1 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component output_2 is
		port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		o_t_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component c_t_minus_1 is
port (clk : in std_logic;
		c_t_minus : in STD_LOGIC_VECTOR(15 downto 0);
		f_t_1 : in STD_LOGIC_VECTOR(15 downto 0);
		i_t_1 : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_1 : in STD_LOGIC_VECTOR(15 downto 0);
		o_t_1: in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_o_1 : out STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_1 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
component c_t_minus_2 is
port (clk : in std_logic;
		c_t_minus : in STD_LOGIC_VECTOR(15 downto 0);
		f_t_2 : in STD_LOGIC_VECTOR(15 downto 0);
		i_t_2 : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_2 : in STD_LOGIC_VECTOR(15 downto 0);
		o_t_2: in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_o_2 : out STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;
begin

    ut1_forget_1: forget_1 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_1 => c_t_minus_in,
        h_t_minus_1 => h_t_minus_in,
        f_t_1 => f_t_1
    );

    ut1_input_1: input_1 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_1 => c_t_minus_in,
        h_t_minus_1 => h_t_minus_in,
        i_t_1 => i_t_1
    );

    ut1_comp_1: comp_1 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_1 => c_t_minus_in,
        h_t_minus_1 => h_t_minus_in,
        c_t_1 => c_t_1
    );

    ut1_output_1: output_1 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_1 => c_t_minus_in,
        h_t_minus_1 => h_t_minus_in,
        o_t_1 => o_t_1
    );

    ut1_c_t_minus_1: c_t_minus_1 port map(
        clk => clk,
        c_t_minus => c_t_minus_in,
        f_t_1 => f_t_1,
        i_t_1 => i_t_1,
        c_t_1 => c_t_1,
        o_t_1 => o_t_1,
        c_t_minus_o_1 => comp_c_t_minus_2,
        h_t_minus_1 => comp_h_t_minus_2
    );

    ut1_forget_2: forget_2 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_2 => comp_c_t_minus_2,
        h_t_minus_2 => comp_h_t_minus_2,
        f_t_2 => f_t_2
    );

    ut1_input_2: input_2 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_2 => comp_c_t_minus_2,
        h_t_minus_2 => comp_h_t_minus_2,
        i_t_2 => i_t_2
    );

    ut1_comp_2: comp_2 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_2 => comp_c_t_minus_2,
        h_t_minus_2 => comp_h_t_minus_2,
        c_t_2 => c_t_2
    );

    ut1_output_2: output_2 port map(
        clk => clk,
        num => num,
        x => x,
        c_t_minus_2 => comp_c_t_minus_2,
        h_t_minus_2 => comp_h_t_minus_2,
        o_t_2 => o_t_2
    );

    ut1_c_t_minus_2: c_t_minus_2 port map(
        clk => clk,
        c_t_minus => comp_c_t_minus_2,
        f_t_2 => f_t_2,
        i_t_2 => i_t_2,
        c_t_2 => c_t_2,
        o_t_2 => o_t_2,
        c_t_minus_o_2 => c_t_minus_5,
        h_t_minus_2 => h_t_minus_5
    );

end Behavioral;

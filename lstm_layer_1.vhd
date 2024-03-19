library IEEE;use IEEE.STD_LOGIC_1164.ALL;-- Layer 1

entity lstm_layer_1 is

    port (

        clk : in std_logic;

        x_0 : in STD_LOGIC_VECTOR(15 downto 0);

        x_1 : in STD_LOGIC_VECTOR(15 downto 0);

        x_2 : in STD_LOGIC_VECTOR(15 downto 0);

        x_3 : in STD_LOGIC_VECTOR(15 downto 0);

        x_4 : in STD_LOGIC_VECTOR(15 downto 0);

        x_5 : in STD_LOGIC_VECTOR(15 downto 0);

        x_6 : in STD_LOGIC_VECTOR(15 downto 0);

        x_7 : in STD_LOGIC_VECTOR(15 downto 0);

        x_8 : in STD_LOGIC_VECTOR(15 downto 0);

        x_9 : in STD_LOGIC_VECTOR(15 downto 0);

        x_10 : in STD_LOGIC_VECTOR(15 downto 0);

        x_11 : in STD_LOGIC_VECTOR(15 downto 0);

        x_12 : in STD_LOGIC_VECTOR(15 downto 0);

        x_13 : in STD_LOGIC_VECTOR(15 downto 0);

        x_14 : in STD_LOGIC_VECTOR(15 downto 0);

        x_15 : in STD_LOGIC_VECTOR(15 downto 0);

        x_16 : in STD_LOGIC_VECTOR(15 downto 0);

        x_17 : in STD_LOGIC_VECTOR(15 downto 0);

        x_18 : in STD_LOGIC_VECTOR(15 downto 0);

        x_19 : in STD_LOGIC_VECTOR(15 downto 0);

        x_20 : in STD_LOGIC_VECTOR(15 downto 0);

        x_21 : in STD_LOGIC_VECTOR(15 downto 0);

        x_22 : in STD_LOGIC_VECTOR(15 downto 0);

        x_23 : in STD_LOGIC_VECTOR(15 downto 0);

        x_24 : in STD_LOGIC_VECTOR(15 downto 0);

        x_25 : in STD_LOGIC_VECTOR(15 downto 0);

        x_26 : in STD_LOGIC_VECTOR(15 downto 0);

        x_27 : in STD_LOGIC_VECTOR(15 downto 0);

        y_0 : out STD_LOGIC_VECTOR(15 downto 0);

        y_1 : out STD_LOGIC_VECTOR(15 downto 0);

        y_2 : out STD_LOGIC_VECTOR(15 downto 0);

        y_3 : out STD_LOGIC_VECTOR(15 downto 0);

        y_4 : out STD_LOGIC_VECTOR(15 downto 0);

        y_5 : out STD_LOGIC_VECTOR(15 downto 0);

        y_6 : out STD_LOGIC_VECTOR(15 downto 0);

        y_7 : out STD_LOGIC_VECTOR(15 downto 0);

        y_8 : out STD_LOGIC_VECTOR(15 downto 0);

        y_9 : out STD_LOGIC_VECTOR(15 downto 0);

        y_10 : out STD_LOGIC_VECTOR(15 downto 0);

        y_11 : out STD_LOGIC_VECTOR(15 downto 0);

        y_12 : out STD_LOGIC_VECTOR(15 downto 0);

        y_13 : out STD_LOGIC_VECTOR(15 downto 0);

        y_14 : out STD_LOGIC_VECTOR(15 downto 0);

        y_15 : out STD_LOGIC_VECTOR(15 downto 0);

        y_16 : out STD_LOGIC_VECTOR(15 downto 0);

        y_17 : out STD_LOGIC_VECTOR(15 downto 0);

        y_18 : out STD_LOGIC_VECTOR(15 downto 0);

        y_19 : out STD_LOGIC_VECTOR(15 downto 0);

        y_20 : out STD_LOGIC_VECTOR(15 downto 0);

        y_21 : out STD_LOGIC_VECTOR(15 downto 0);

        y_22 : out STD_LOGIC_VECTOR(15 downto 0);

        y_23 : out STD_LOGIC_VECTOR(15 downto 0);

        y_24 : out STD_LOGIC_VECTOR(15 downto 0);

        y_25 : out STD_LOGIC_VECTOR(15 downto 0);

        y_26 : out STD_LOGIC_VECTOR(15 downto 0);

        y_27 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end lstm_layer_1;



architecture Behavioral of lstm_layer_1 is

component neuron_1 is

    port (
        clk : in std_logic;
		  num : in integer;
        x : in STD_LOGIC_VECTOR(15 downto 0);
		  c_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
		  h_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
		  c_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0) ;
        h_t_minus_5 : out STD_LOGIC_VECTOR(15 downto 0)
    );

end component;
signal sig_c_t_minus_1_0 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_h_t_minus_1_0 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sig_c_t_minus_1_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_7 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_8 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_9 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_10 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_11 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_12 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_13 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_14 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_15 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_16 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_17 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_18 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_19 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_20 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_21 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_22 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_23 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_24 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_25 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_26 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_27 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_c_t_minus_1_28 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_7 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_8 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_9 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_10 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_11 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_12 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_13 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_14 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_15 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_16 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_17 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_18 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_19 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_20 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_21 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_22 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_23 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_24 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_25 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_26 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_27 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sig_h_t_minus_1_28 : STD_LOGIC_VECTOR(15 downto 0) ;




begin



ut0_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 0,
        x => x_0,
		  c_t_minus_in => sig_c_t_minus_1_0,
		  h_t_minus_in => sig_h_t_minus_1_0,
		  c_t_minus_5 => sig_c_t_minus_1_1,
        h_t_minus_5 =>sig_h_t_minus_1_1
    );
ut1_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 1,
        x => x_1,
		  c_t_minus_in => sig_c_t_minus_1_1,
		  h_t_minus_in => sig_h_t_minus_1_1,
		  c_t_minus_5 => sig_c_t_minus_1_2,
        h_t_minus_5 =>sig_h_t_minus_1_2
    );
ut2_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 2,
        x => x_2,
		  c_t_minus_in => sig_c_t_minus_1_2,
		  h_t_minus_in => sig_h_t_minus_1_2,
		  c_t_minus_5 => sig_c_t_minus_1_3,
        h_t_minus_5 =>sig_h_t_minus_1_3
    );
ut3_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 3,
        x => x_3,
		  c_t_minus_in => sig_c_t_minus_1_3,
		  h_t_minus_in => sig_h_t_minus_1_3,
		  c_t_minus_5 => sig_c_t_minus_1_4,
        h_t_minus_5 =>sig_h_t_minus_1_4
    );
ut4_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 4,
        x => x_4,
		  c_t_minus_in => sig_c_t_minus_1_4,
		  h_t_minus_in => sig_h_t_minus_1_4,
		  c_t_minus_5 => sig_c_t_minus_1_5,
        h_t_minus_5 =>sig_h_t_minus_1_5
    );
ut5_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 5,
        x => x_5,
		  c_t_minus_in => sig_c_t_minus_1_5,
		  h_t_minus_in => sig_h_t_minus_1_5,
		  c_t_minus_5 => sig_c_t_minus_1_6,
        h_t_minus_5 =>sig_h_t_minus_1_6
    );
ut6_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 6,
        x => x_6,
		  c_t_minus_in => sig_c_t_minus_1_6,
		  h_t_minus_in => sig_h_t_minus_1_6,
		  c_t_minus_5 => sig_c_t_minus_1_7,
        h_t_minus_5 =>sig_h_t_minus_1_7
    );
ut7_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 7,
        x => x_7,
		  c_t_minus_in => sig_c_t_minus_1_7,
		  h_t_minus_in => sig_h_t_minus_1_7,
		  c_t_minus_5 => sig_c_t_minus_1_8,
        h_t_minus_5 =>sig_h_t_minus_1_8
    );
ut8_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 8,
        x => x_8,
		  c_t_minus_in => sig_c_t_minus_1_8,
		  h_t_minus_in => sig_h_t_minus_1_8,
		  c_t_minus_5 => sig_c_t_minus_1_9,
        h_t_minus_5 =>sig_h_t_minus_1_9
    );
ut9_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 9,
        x => x_9,
		  c_t_minus_in => sig_c_t_minus_1_9,
		  h_t_minus_in => sig_h_t_minus_1_9,
		  c_t_minus_5 => sig_c_t_minus_1_10,
        h_t_minus_5 =>sig_h_t_minus_1_10
    );
ut10_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 10,
        x => x_10,
		  c_t_minus_in => sig_c_t_minus_1_10,
		  h_t_minus_in => sig_h_t_minus_1_10,
		  c_t_minus_5 => sig_c_t_minus_1_11,
        h_t_minus_5 =>sig_h_t_minus_1_11
    );
ut11_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 11,
        x => x_11,
		  c_t_minus_in => sig_c_t_minus_1_11,
		  h_t_minus_in => sig_h_t_minus_1_1,
		  c_t_minus_5 => sig_c_t_minus_1_12,
        h_t_minus_5 =>sig_h_t_minus_1_12
    );
ut12_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 12,
        x => x_12,
		  c_t_minus_in => sig_c_t_minus_1_12,
		  h_t_minus_in => sig_h_t_minus_1_12,
		  c_t_minus_5 => sig_c_t_minus_1_13,
        h_t_minus_5 =>sig_h_t_minus_1_13
    );
ut13_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 13,
        x => x_13,
		  c_t_minus_in => sig_c_t_minus_1_13,
		  h_t_minus_in => sig_h_t_minus_1_13,
		  c_t_minus_5 => sig_c_t_minus_1_14,
        h_t_minus_5 =>sig_h_t_minus_1_14
    );
ut14_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 14,
        x => x_14,
		  c_t_minus_in => sig_c_t_minus_1_14,
		  h_t_minus_in => sig_h_t_minus_1_14,
		  c_t_minus_5 => sig_c_t_minus_1_15,
        h_t_minus_5 =>sig_h_t_minus_1_15
    );
ut15_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 15,
        x => x_15,
		  c_t_minus_in => sig_c_t_minus_1_15,
		  h_t_minus_in => sig_h_t_minus_1_15,
		  c_t_minus_5 => sig_c_t_minus_1_16,
        h_t_minus_5 =>sig_h_t_minus_1_16
    );
ut16_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 16,
        x => x_16,
		  c_t_minus_in => sig_c_t_minus_1_16,
		  h_t_minus_in => sig_h_t_minus_1_16,
		  c_t_minus_5 => sig_c_t_minus_1_17,
        h_t_minus_5 =>sig_h_t_minus_1_17
    );
ut17_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 17,
        x => x_17,
		  c_t_minus_in => sig_c_t_minus_1_17,
		  h_t_minus_in => sig_h_t_minus_1_17,
		  c_t_minus_5 => sig_c_t_minus_1_18,
        h_t_minus_5 =>sig_h_t_minus_1_18
    );
ut18_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 18,
        x => x_18,
		  c_t_minus_in => sig_c_t_minus_1_18,
		  h_t_minus_in => sig_h_t_minus_1_18,
		  c_t_minus_5 => sig_c_t_minus_1_19,
        h_t_minus_5 =>sig_h_t_minus_1_19
    );
ut19_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 19,
        x => x_19,
		  c_t_minus_in => sig_c_t_minus_1_19,
		  h_t_minus_in => sig_h_t_minus_1_19,
		  c_t_minus_5 => sig_c_t_minus_1_20,
        h_t_minus_5 =>sig_h_t_minus_1_20
    );
ut20_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 20,
        x => x_20,
		  c_t_minus_in => sig_c_t_minus_1_20,
		  h_t_minus_in => sig_h_t_minus_1_20,
		  c_t_minus_5 => sig_c_t_minus_1_21,
        h_t_minus_5 =>sig_h_t_minus_1_21
    );
ut21_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 21,
        x => x_21,
		  c_t_minus_in => sig_c_t_minus_1_21,
		  h_t_minus_in => sig_h_t_minus_1_21,
		  c_t_minus_5 => sig_c_t_minus_1_22,
        h_t_minus_5 =>sig_h_t_minus_1_22
    );
ut22_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 22,
        x => x_22,
		  c_t_minus_in => sig_c_t_minus_1_22,
		  h_t_minus_in => sig_h_t_minus_1_22,
		  c_t_minus_5 => sig_c_t_minus_1_23,
        h_t_minus_5 =>sig_h_t_minus_1_23
    );
ut23_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 23,
        x => x_23,
		  c_t_minus_in => sig_c_t_minus_1_23,
		  h_t_minus_in => sig_h_t_minus_1_23,
		  c_t_minus_5 => sig_c_t_minus_1_24,
        h_t_minus_5 =>sig_h_t_minus_1_24
    );

ut24_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 24,
        x => x_24,
		  c_t_minus_in => sig_c_t_minus_1_24,
		  h_t_minus_in => sig_h_t_minus_1_24,
		  c_t_minus_5 => sig_c_t_minus_1_25,
        h_t_minus_5 =>sig_h_t_minus_1_25
    );
	ut25_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 25,
        x => x_25,
		  c_t_minus_in => sig_c_t_minus_1_25,
		  h_t_minus_in => sig_h_t_minus_1_25,
		  c_t_minus_5 => sig_c_t_minus_1_26,
        h_t_minus_5 =>sig_h_t_minus_1_26
    );
ut26_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 26,
        x => x_26,
		  c_t_minus_in => sig_c_t_minus_1_26,
		  h_t_minus_in => sig_h_t_minus_1_26,
		  c_t_minus_5 => sig_c_t_minus_1_27,
        h_t_minus_5 =>sig_h_t_minus_1_27
    );
ut27_neuron_1: neuron_1 port map(
	     clk => clk,
        num => 27,
        x => x_27,
		  c_t_minus_in => sig_c_t_minus_1_27,
		  h_t_minus_in => sig_h_t_minus_1_27,
		  c_t_minus_5 => sig_c_t_minus_1_28,
        h_t_minus_5 =>sig_h_t_minus_1_28
    );


end Behavioral;




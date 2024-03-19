library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity fully_connected_layer_3 is

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

        y_0 : out STD_LOGIC_VECTOR(15 downto 0);

        y_1 : out STD_LOGIC_VECTOR(15 downto 0);

        y_2 : out STD_LOGIC_VECTOR(15 downto 0);

        y_3 : out STD_LOGIC_VECTOR(15 downto 0);

        y_4 : out STD_LOGIC_VECTOR(15 downto 0);

        y_5 : out STD_LOGIC_VECTOR(15 downto 0);

        y_6 : out STD_LOGIC_VECTOR(15 downto 0);

        y_7 : out STD_LOGIC_VECTOR(15 downto 0);

        y_8 : out STD_LOGIC_VECTOR(15 downto 0);

        y_9 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end fully_connected_layer_3 ;

architecture Behavioral of fully_connected_layer_3 is

component fully_connected_layer_3_0  is

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

        y_0 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_1  is

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

        y_1 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_2  is

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

        y_2 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_3  is

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

        y_3 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_4  is

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

        y_4 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_5  is

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

        y_5 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_6  is

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

        y_6 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_7  is

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

        y_7 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_8  is

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

        y_8 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

component fully_connected_layer_3_9  is

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

        y_9 : out STD_LOGIC_VECTOR(15 downto 0)

    );

end component ;

begin

ut0_fully_connected_layer_3_0: fully_connected_layer_3_0 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_0 => y_0 

    );

ut1_fully_connected_layer_3_1: fully_connected_layer_3_1 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_1 => y_1 

    );

ut2_fully_connected_layer_3_2: fully_connected_layer_3_2 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_2 => y_2 

    );

ut3_fully_connected_layer_3_3: fully_connected_layer_3_3 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_3 => y_3 

    );

ut4_fully_connected_layer_3_4: fully_connected_layer_3_4 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_4 => y_4 

    );

ut5_fully_connected_layer_3_5: fully_connected_layer_3_5 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_5 => y_5 

    );

ut6_fully_connected_layer_3_6: fully_connected_layer_3_6 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_6 => y_6 

    );

ut7_fully_connected_layer_3_7: fully_connected_layer_3_7 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_7 => y_7 

    );

ut8_fully_connected_layer_3_8: fully_connected_layer_3_8 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_8 => y_8 

    );

ut9_fully_connected_layer_3_9: fully_connected_layer_3_9 port map(

clk => clk,

x_0 => x_0 ,

x_1 => x_1 ,

x_2 => x_2 ,

x_3 => x_3 ,

x_4 => x_4 ,

x_5 => x_5 ,

x_6 => x_6 ,

x_7 => x_7 ,

x_8 => x_8 ,

x_9 => x_9 ,

y_9 => y_9 

    );

end Behavioral;

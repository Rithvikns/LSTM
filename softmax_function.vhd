library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity softmax_Function is

    port (

        clk : in std_logic;

        x_0 : in std_logic_vector(15 downto 0);

        x_1 : in std_logic_vector(15 downto 0);

        x_2 : in std_logic_vector(15 downto 0);

        x_3 : in std_logic_vector(15 downto 0);

        x_4 : in std_logic_vector(15 downto 0);

        x_5 : in std_logic_vector(15 downto 0);

        x_6 : in std_logic_vector(15 downto 0);

        x_7 : in std_logic_vector(15 downto 0);

        x_8 : in std_logic_vector(15 downto 0);

        x_9 : in std_logic_vector(15 downto 0);

        y : out integer  -- Output index of the highest number

    );

end softmax_Function;



architecture Behavioral of softmax_Function is

    signal x_val : int_array(0 to 9);  -- Array to hold converted integer values of inputs

    signal max_index : integer range 0 to 9 := 0;  -- Signal to hold the index of the highest number found



begin

    process(clk)

    begin

        if rising_edge(clk) then

            -- Convert inputs to integers and store in array

            x_val(0) <= to_integer(unsigned(x_0(7 downto 0)));

            x_val(1) <= to_integer(unsigned(x_1(7 downto 0)));

            x_val(2) <= to_integer(unsigned(x_2(7 downto 0)));

            x_val(3) <= to_integer(unsigned(x_3(7 downto 0)));

            x_val(4) <= to_integer(unsigned(x_4(7 downto 0)));

            x_val(5) <= to_integer(unsigned(x_5(7 downto 0)));

            x_val(6) <= to_integer(unsigned(x_6(7 downto 0)));

            x_val(7) <= to_integer(unsigned(x_7(7 downto 0)));

            x_val(8) <= to_integer(unsigned(x_8(7 downto 0)));

            x_val(9) <= to_integer(unsigned(x_9(7 downto 0)));



            -- Find the index of the maximum number in the array

            max_index <= 0;  -- Initialize max_index with 0

            for i in 1 to 9 loop

                if x_val(i) > x_val(max_index) then

                    max_index <= i;

                end if;

            end loop;



            -- Output the index of the highest number

            y <= max_index;

        end if;

    end process;

end Behavioral;

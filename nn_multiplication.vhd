library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity nn_multiplication is

    Port (

        clk : in std_logic;

        inputx : in STD_LOGIC_VECTOR(15 downto 0);

        inputy : in STD_LOGIC_VECTOR(15 downto 0);

        output : out STD_LOGIC_VECTOR(15 downto 0)

    );

end nn_multiplication;



architecture Behavioral of nn_multiplication is

  function to_unsigned_16(input : STD_LOGIC_VECTOR) return UNSIGNED is
        variable temp : UNSIGNED(15 downto 0);
    begin
        temp := UNSIGNED(input);
        return temp;
    end to_unsigned_16;
	 
	     function to_signed_16(input : UNSIGNED) return STD_LOGIC_VECTOR is
        variable temp : STD_LOGIC_VECTOR(15 downto 0);
    begin
        temp := STD_LOGIC_VECTOR(input);
        return temp;
    end to_signed_16;

    signal unsigned_A, unsigned_B : UNSIGNED(15 downto 0);
	 signal unsigned_x, unsigned_y : UNSIGNED(14 downto 0);
	 signal mul_out : STD_LOGIC_VECTOR(32 downto 0);
	 signal mul_result : INTEGER;
	 

begin
    process(clk)
    begin
        if rising_edge(clk) then
            unsigned_A <= to_unsigned_16(inputx);
            unsigned_B <= to_unsigned_16(inputy);
				unsigned_x <= unsigned_A(14 downto 0);
            unsigned_y <= unsigned_B(14 downto 0);

            -- Check if either input is zero

            if inputx = "0000000000000000" or inputy = "0000000000000000" then

                output <= "0000000000000000";

             else
                -- Perform multiplication
                mul_result <= to_integer(unsigned_y) * to_integer(unsigned_x);

					mul_out <= std_logic_vector(shift_right(to_unsigned(mul_result, mul_out'length), 8));
					output(15)<= inputx(15) xor inputy(15) ;
					output(14 downto 0) <= mul_out(14 downto 0);




        end if;
		  end if ;

    end process;



end Behavioral;

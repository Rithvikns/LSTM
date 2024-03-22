----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:10:58 02/29/2024 
-- Design Name: 
-- Module Name:    multiplication - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- Add this line
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nn_addition is
	Port (
		clk : in std_logic;
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end nn_addition;

architecture Behavioral of nn_addition is

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
	 signal sum_out : STD_LOGIC_VECTOR(32 downto 0);
	 signal sign_bit : std_logic ;
	 signal subtract_result : INTEGER;
	 signal subtract_result_0 : INTEGER;
	 signal subtract_result_1 : INTEGER;
	 signal subtract_result_2 : INTEGER;
	 signal res1 : INTEGER;
	 signal res2 : INTEGER;
	 

begin
    unsigned_A <= to_unsigned_16(inputx);
    unsigned_B <= to_unsigned_16(inputy);
	 unsigned_x <= unsigned_A(14 downto 0);
    unsigned_y <= unsigned_B(14 downto 0);
	 res1 <= to_integer(unsigned_x);
	 res2 <= to_integer(unsigned_y);
	 sign_bit <= '1' when (unsigned_x > unsigned_y) else '0' ;
	 
	 subtract_result_0 <= to_integer(unsigned_x) + to_integer(unsigned_y);
	 subtract_result_1 <= to_integer(unsigned_x) - to_integer(unsigned_y);
	 subtract_result_2 <= to_integer(unsigned_y) - to_integer(unsigned_x);
	 
	 subtract_result <= subtract_result_0 when (inputx(15) = inputy(15)) else
                  subtract_result_1 when (unsigned_x > unsigned_y) else
                  subtract_result_2;
	 
	 output(15) <= '1' when ((sign_bit = '1' and inputx(15) = '1' ) or (sign_bit = '0' and inputy(15) = '1')) else '0';
	  
	 
	 sum_out <= std_logic_vector(to_unsigned(subtract_result, sum_out'length));
	output(14 downto 0) <= sum_out(14 downto 0);


	 
   

end Behavioral;

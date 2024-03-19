
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input_2 is
	port (clk : in std_logic;
		num:in integer ;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		c_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		h_t_minus_2 : in STD_LOGIC_VECTOR(15 downto 0);
		i_t_2 : out STD_LOGIC_VECTOR(15 downto 0)
		);
end input_2;

architecture Behavioral of input_2 is
signal ui_2 : STD_LOGIC_VECTOR(15 downto 0):= "0000000010000111";
signal bi_2 : STD_LOGIC_VECTOR(15 downto 0):= "1000000010100101";
signal wf1 :STD_LOGIC_VECTOR(15 downto 0);
signal wf2 :STD_LOGIC_VECTOR(15 downto 0);
signal wf3 :STD_LOGIC_VECTOR(15 downto 0);
signal wf4 :STD_LOGIC_VECTOR(15 downto 0);
signal y1 :STD_LOGIC_VECTOR(15 downto 0);
type memo_array is array (0 to 65535) of std_logic_vector (15 downto 0); 
signal sigmoid : memo_array := (

0 to 4 => "0000000010000000",

5 to 8 => "0000000010000001",

9 to 12 => "0000000010000010",

13 to 16 => "0000000010000011",

17 to 20 => "0000000010000100",

21 to 24 => "0000000010000101",

25 to 28 => "0000000010000110",

29 to 32 => "0000000010000111",

33 to 36 => "0000000010001000",

37 to 40 => "0000000010001001",

41 to 44 => "0000000010001010",

45 to 48 => "0000000010001011",

49 to 52 => "0000000010001100",

53 to 56 => "0000000010001101",

57 to 60 => "0000000010001110",

61 to 64 => "0000000010001111",

65 to 68 => "0000000010010000",

69 to 72 => "0000000010010001",

73 to 76 => "0000000010010010",

77 to 80 => "0000000010010011",

81 to 84 => "0000000010010100",

85 to 88 => "0000000010010101",

89 to 93 => "0000000010010110",

94 to 97 => "0000000010010111",

98 to 101 => "0000000010011000",

102 to 105 => "0000000010011001",

106 to 109 => "0000000010011010",

110 to 113 => "0000000010011011",

114 to 118 => "0000000010011100",

119 to 122 => "0000000010011101",

123 to 126 => "0000000010011110",

127 to 130 => "0000000010011111",

131 to 135 => "0000000010100000",

136 to 139 => "0000000010100001",

140 to 143 => "0000000010100010",

144 to 147 => "0000000010100011",

148 to 152 => "0000000010100100",

153 to 156 => "0000000010100101",

157 to 161 => "0000000010100110",

162 to 165 => "0000000010100111",

166 to 169 => "0000000010101000",

170 to 174 => "0000000010101001",

175 to 178 => "0000000010101010",

179 to 183 => "0000000010101011",

184 to 188 => "0000000010101100",

189 to 192 => "0000000010101101",

193 to 197 => "0000000010101110",

198 to 201 => "0000000010101111",

202 to 206 => "0000000010110000",

207 to 211 => "0000000010110001",

212 to 215 => "0000000010110010",

216 to 220 => "0000000010110011",

221 to 225 => "0000000010110100",

226 to 230 => "0000000010110101",

231 to 235 => "0000000010110110",

236 to 240 => "0000000010110111",

241 to 245 => "0000000010111000",

246 to 250 => "0000000010111001",

251 to 255 => "0000000010111010",

256 to 260 => "0000000010111011",

261 to 265 => "0000000010111100",

266 to 270 => "0000000010111101",

271 to 275 => "0000000010111110",

276 to 281 => "0000000010111111",

282 to 286 => "0000000011000000",

287 to 292 => "0000000011000001",

293 to 297 => "0000000011000010",

298 to 303 => "0000000011000011",

304 to 308 => "0000000011000100",

309 to 314 => "0000000011000101",

315 to 320 => "0000000011000110",

321 to 325 => "0000000011000111",

326 to 331 => "0000000011001000",

332 to 337 => "0000000011001001",

338 to 343 => "0000000011001010",

344 to 349 => "0000000011001011",

350 to 356 => "0000000011001100",

357 to 362 => "0000000011001101",

363 to 368 => "0000000011001110",

369 to 375 => "0000000011001111",

376 to 381 => "0000000011010000",

382 to 388 => "0000000011010001",

389 to 395 => "0000000011010010",

396 to 402 => "0000000011010011",

403 to 409 => "0000000011010100",

410 to 416 => "0000000011010101",

417 to 424 => "0000000011010110",

425 to 431 => "0000000011010111",

432 to 439 => "0000000011011000",

440 to 447 => "0000000011011001",

448 to 455 => "0000000011011010",

456 to 463 => "0000000011011011",

464 to 471 => "0000000011011100",

472 to 480 => "0000000011011101",

481 to 489 => "0000000011011110",

490 to 498 => "0000000011011111",

499 to 507 => "0000000011100000",

508 to 516 => "0000000011100001",

517 to 526 => "0000000011100010",

527 to 536 => "0000000011100011",

537 to 547 => "0000000011100100",

548 to 558 => "0000000011100101",

559 to 569 => "0000000011100110",

570 to 580 => "0000000011100111",

581 to 592 => "0000000011101000",

593 to 605 => "0000000011101001",

606 to 618 => "0000000011101010",

619 to 631 => "0000000011101011",

632 to 646 => "0000000011101100",

647 to 660 => "0000000011101101",

661 to 676 => "0000000011101110",

677 to 693 => "0000000011101111",

694 to 710 => "0000000011110000",

711 to 729 => "0000000011110001",

730 to 749 => "0000000011110010",

750 to 771 => "0000000011110011",

772 to 794 => "0000000011110100",

795 to 819 => "0000000011110101",

820 to 847 => "0000000011110110",

848 to 879 => "0000000011110111",

880 to 914 => "0000000011111000",

915 to 954 => "0000000011111001",

955 to 1002 => "0000000011111010",

1003 to 1060 => "0000000011111011",

1061 to 1135 => "0000000011111100",

1136 to 1240 => "0000000011111101",

1241 to 1418 => "0000000011111110",

1419 to 32767 => "0000000011111111",

32768 to 32768 => "0000000010000000",

32769 to 32772 => "0000000001111111",

32773 to 32776 => "0000000001111110",

32777 to 32780 => "0000000001111101",

32781 to 32784 => "0000000001111100",

32785 to 32788 => "0000000001111011",

32789 to 32792 => "0000000001111010",

32793 to 32796 => "0000000001111001",

32797 to 32800 => "0000000001111000",

32801 to 32804 => "0000000001110111",

32805 to 32808 => "0000000001110110",

32809 to 32812 => "0000000001110101",

32813 to 32816 => "0000000001110100",

32817 to 32820 => "0000000001110011",

32821 to 32824 => "0000000001110010",

32825 to 32828 => "0000000001110001",

32829 to 32832 => "0000000001110000",

32833 to 32836 => "0000000001101111",

32837 to 32840 => "0000000001101110",

32841 to 32844 => "0000000001101101",

32845 to 32848 => "0000000001101100",

32849 to 32852 => "0000000001101011",

32853 to 32856 => "0000000001101010",

32857 to 32861 => "0000000001101001",

32862 to 32865 => "0000000001101000",

32866 to 32869 => "0000000001100111",

32870 to 32873 => "0000000001100110",

32874 to 32877 => "0000000001100101",

32878 to 32881 => "0000000001100100",

32882 to 32886 => "0000000001100011",

32887 to 32890 => "0000000001100010",

32891 to 32894 => "0000000001100001",

32895 to 32898 => "0000000001100000",

32899 to 32903 => "0000000001011111",

32904 to 32907 => "0000000001011110",

32908 to 32911 => "0000000001011101",

32912 to 32915 => "0000000001011100",

32916 to 32920 => "0000000001011011",

32921 to 32924 => "0000000001011010",

32925 to 32929 => "0000000001011001",

32930 to 32933 => "0000000001011000",

32934 to 32937 => "0000000001010111",

32938 to 32942 => "0000000001010110",

32943 to 32946 => "0000000001010101",

32947 to 32951 => "0000000001010100",

32952 to 32956 => "0000000001010011",

32957 to 32960 => "0000000001010010",

32961 to 32965 => "0000000001010001",

32966 to 32969 => "0000000001010000",

32970 to 32974 => "0000000001001111",

32975 to 32979 => "0000000001001110",

32980 to 32983 => "0000000001001101",

32984 to 32988 => "0000000001001100",

32989 to 32993 => "0000000001001011",

32994 to 32998 => "0000000001001010",

32999 to 33003 => "0000000001001001",

33004 to 33008 => "0000000001001000",

33009 to 33013 => "0000000001000111",

33014 to 33018 => "0000000001000110",

33019 to 33023 => "0000000001000101",

33024 to 33028 => "0000000001000100",

33029 to 33033 => "0000000001000011",

33034 to 33038 => "0000000001000010",

33039 to 33043 => "0000000001000001",

33044 to 33049 => "0000000001000000",

33050 to 33054 => "0000000000111111",

33055 to 33060 => "0000000000111110",

33061 to 33065 => "0000000000111101",

33066 to 33071 => "0000000000111100",

33072 to 33076 => "0000000000111011",

33077 to 33082 => "0000000000111010",

33083 to 33088 => "0000000000111001",

33089 to 33093 => "0000000000111000",

33094 to 33099 => "0000000000110111",

33100 to 33105 => "0000000000110110",

33106 to 33111 => "0000000000110101",

33112 to 33117 => "0000000000110100",

33118 to 33124 => "0000000000110011",

33125 to 33130 => "0000000000110010",

33131 to 33136 => "0000000000110001",

33137 to 33143 => "0000000000110000",

33144 to 33149 => "0000000000101111",

33150 to 33156 => "0000000000101110",

33157 to 33163 => "0000000000101101",

33164 to 33170 => "0000000000101100",

33171 to 33177 => "0000000000101011",

33178 to 33184 => "0000000000101010",

33185 to 33192 => "0000000000101001",

33193 to 33199 => "0000000000101000",

33200 to 33207 => "0000000000100111",

33208 to 33215 => "0000000000100110",

33216 to 33223 => "0000000000100101",

33224 to 33231 => "0000000000100100",

33232 to 33239 => "0000000000100011",

33240 to 33248 => "0000000000100010",

33249 to 33257 => "0000000000100001",

33258 to 33266 => "0000000000100000",

33267 to 33275 => "0000000000011111",

33276 to 33284 => "0000000000011110",

33285 to 33294 => "0000000000011101",

33295 to 33304 => "0000000000011100",

33305 to 33315 => "0000000000011011",

33316 to 33326 => "0000000000011010",

33327 to 33337 => "0000000000011001",

33338 to 33348 => "0000000000011000",

33349 to 33360 => "0000000000010111",

33361 to 33373 => "0000000000010110",

33374 to 33386 => "0000000000010101",

33387 to 33399 => "0000000000010100",

33400 to 33414 => "0000000000010011",

33415 to 33428 => "0000000000010010",

33429 to 33444 => "0000000000010001",

33445 to 33461 => "0000000000010000",

33462 to 33478 => "0000000000001111",

33479 to 33497 => "0000000000001110",

33498 to 33517 => "0000000000001101",

33518 to 33539 => "0000000000001100",

33540 to 33562 => "0000000000001011",

33563 to 33587 => "0000000000001010",

33588 to 33615 => "0000000000001001",

33616 to 33647 => "0000000000001000",

33648 to 33682 => "0000000000000111",

33683 to 33722 => "0000000000000110",

33723 to 33770 => "0000000000000101",

33771 to 33828 => "0000000000000100",

33829 to 33903 => "0000000000000011",

33904 to 34008 => "0000000000000010",

34009 to 34186 => "0000000000000001",

34187 to 65535 => "0000000000000000");
type mem_array is array (0 to 27) of std_logic_vector (15 downto 0);
signal inp_2 : mem_array := (

    0  => "1000000010010011",



1  => "0000000100010111",



2  => "0000000011000111",



3  => "0000000100010010",



4  => "0000000010111010",



5  => "0000000100101110",



6  => "0000000011101011",



7  => "0000000010110101",



8  => "0000000010001001",



9  => "0000000010100001",



10  => "0000000001000110",



11  => "0000000001000110",



12  => "0000000000010000",



13  => "1000000000010010",



14  => "0000000000001000",



15  => "0000000000110011",



16  => "0000000000101000",



17  => "0000000000110010",



18  => "0000000000110110",



19  => "0000000000101110",



20  => "0000000000011001",



21  => "0000000000100110",



22  => "0000000000001011",



23  => "0000000000111111",



24  => "0000000000110100",



25  => "0000000000011000",



26  => "0000000011101100",



27  => "0000000111011100");



component  nn_addition is
	Port (
		clk : in std_logic;
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_addition;

component  nn_multiplication is
	Port (
		clk : in std_logic;
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_multiplication;

		

begin
y1 <= inp_2(num);
ut1_nn_multiplication: nn_multiplication port map(clk, x,y1 , wf1);
ut2_nn_multiplication: nn_multiplication port map(clk, ui_2,h_t_minus_2 , wf2);
ut1_nn_addition: nn_addition port map(clk, wf1,wf2 , wf3);
ut2_nn_addition: nn_addition port map(clk, wf3,bi_2 , wf4);
i_t_2<= sigmoid(to_integer(unsigned(wf4)));
		
end Behavioral;


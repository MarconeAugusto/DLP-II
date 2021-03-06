library ieee;
use ieee.std_logic_1164.all;
entity shift3mode is
   port(
      a: in std_logic_vector(63 downto 0);
      lar: in std_logic_vector(1 downto 0);
      amt: in std_logic_vector(5 downto 0);
      y: out std_logic_vector(63 downto 0)
   );
end shift3mode ;

architecture shared_arch of shift3mode is
   signal shift_in: std_logic_vector(63 downto 0);
begin
   with lar select
      shift_in <= (others=>'0')  when "00",
                  (others=>a(63)) when "01",
                  a              when others;
   with amt select
      	  y <= a                             when "000000",
          shift_in(0) & a(63 downto 1)          when "000001",
          shift_in(1 downto 0) & a(63 downto 2) when "000010",
          shift_in(2 downto 0) & a(63 downto 3) when "000011",
          shift_in(3 downto 0) & a(63 downto 4) when "000100",
          shift_in(4 downto 0) & a(63 downto 5) when "000101",
          shift_in(5 downto 0) & a(63 downto 6) when "000110",
	  shift_in(6 downto 0) & a(63 downto 7) when "000111",
          shift_in(7 downto 0) & a(63 downto 8) when "001000",
          shift_in(8 downto 0) & a(63 downto 9) when "001001",
          shift_in(9 downto 0) & a(63 downto 10) when "001010",
          shift_in(10 downto 0) & a(63 downto 11) when "001011",
          shift_in(11 downto 0) & a(63 downto 12) when "001100",
          shift_in(12 downto 0) & a(63 downto 13) when "001101",
          shift_in(13 downto 0) & a(63 downto 14) when "001110",
          shift_in(14 downto 0) & a(63 downto 15) when "001111",
          shift_in(15 downto 0) & a(63 downto 16) when "010000",
          shift_in(16 downto 0) & a(63 downto 17) when "010001",
          shift_in(17 downto 0) & a(63 downto 18) when "010010",
          shift_in(18 downto 0) & a(63 downto 19) when "010011",
          shift_in(19 downto 0) & a(63 downto 20) when "010100",
          shift_in(20 downto 0) & a(63 downto 21) when "010101",
          shift_in(21 downto 0) & a(63 downto 22) when "010110",
          shift_in(22 downto 0) & a(63 downto 23) when "010111",
          shift_in(23 downto 0) & a(63 downto 24) when "011000",
          shift_in(24 downto 0) & a(63 downto 25) when "011001",
          shift_in(25 downto 0) & a(63 downto 26) when "011010",
          shift_in(26 downto 0) & a(63 downto 27) when "011011",
          shift_in(27 downto 0) & a(63 downto 28) when "011100",
          shift_in(28 downto 0) & a(63 downto 29) when "011101",
          shift_in(29 downto 0) & a(63 downto 30) when "011110",
          shift_in(30 downto 0) & a(63 downto 31) when "011111",
          shift_in(31 downto 0) & a(63 downto 32) when "100000",
          shift_in(32 downto 0) & a(63 downto 33) when "100001",
          shift_in(33 downto 0) & a(63 downto 34) when "100010",
          shift_in(34 downto 0) & a(63 downto 35) when "100011",
          shift_in(35 downto 0) & a(63 downto 36) when "100100",
          shift_in(36 downto 0) & a(63 downto 37) when "100101",
          shift_in(37 downto 0) & a(63 downto 38) when "100110",
          shift_in(38 downto 0) & a(63 downto 39) when "100111",
          shift_in(39 downto 0) & a(63 downto 40) when "101000",
          shift_in(40 downto 0) & a(63 downto 41) when "101001",
          shift_in(41 downto 0) & a(63 downto 42) when "101010",
          shift_in(42 downto 0) & a(63 downto 43) when "101011",
          shift_in(43 downto 0) & a(63 downto 44) when "101100",
          shift_in(44 downto 0) & a(63 downto 45) when "101101",
          shift_in(45 downto 0) & a(63 downto 46) when "101110",
          shift_in(46 downto 0) & a(63 downto 47) when "101111",
          shift_in(47 downto 0) & a(63 downto 48) when "110000",
          shift_in(48 downto 0) & a(63 downto 49) when "110001",
          shift_in(49 downto 0) & a(63 downto 50) when "110010",
          shift_in(50 downto 0) & a(63 downto 51) when "110011",
          shift_in(51 downto 0) & a(63 downto 52) when "110100",
          shift_in(52 downto 0) & a(63 downto 53) when "110101",
          shift_in(53 downto 0) & a(63 downto 54) when "110110",
          shift_in(54 downto 0) & a(63 downto 55) when "110111",
          shift_in(55 downto 0) & a(63 downto 56) when "111000",
          shift_in(56 downto 0) & a(63 downto 57) when "111001",
          shift_in(57 downto 0) & a(63 downto 58) when "111010",
          shift_in(58 downto 0) & a(63 downto 59) when "111011",
          shift_in(59 downto 0) & a(63 downto 60) when "111100",
          shift_in(60 downto 0) & a(63 downto 61) when "111101",
          shift_in(61 downto 0) & a(63 downto 62) when "111110",
          shift_in(62 downto 0) & a(63) when others; -- 111111
			  
end shared_arch;
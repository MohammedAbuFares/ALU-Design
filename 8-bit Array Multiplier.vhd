-- 8-bit Array Multiplier
-- Purpose: Multiply two unsigned 8-bits
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity multi_8bit is
Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
b : in STD_LOGIC_VECTOR (7 downto 0);
p : out STD_LOGIC_VECTOR (15 downto 0));
end multi_8bit;
architecture Behavioral of multi_8bit is
--- Component Declaration
component PP_generation
port(a,b : in std_logic_vector(7 downto 0);
z: out std_logic_vector(63 downto 0));
end component;
component F_adder
port (A,B,C: in std_logic;
SUM, CRY: out std_logic);
end component;
--- Signal Declaration

    signal z :STD_LOGIC_VECTOR (63 downto 0);
signal cf :STD_LOGIC_VECTOR (59 downto 0);
signal S :STD_LOGIC_VECTOR (55 downto 0);
begin
p1: PP_generation port map(a,b,z);
p(0) <= z(0);
fa1: F_adder port map(z(1),z(8),'0',p(1),cf(1));
fa2: F_adder port map(z(2),z(9),cf(1),s(2),cf(2));
fa3: F_adder port map(s(2),z(16),'0',p(2),cf(3));
fa4: F_adder port map(z(3),cf(2),z(10),s(4),cf(4));
fa5: F_adder port map(s(4),cf(3),z(17),s(5),cf(5));
fa6: F_adder port map(s(5),'0',z(24),p(3),cf(6));
fa7: F_adder port map(z(4),cf(4),z(11),s(7),cf(7));
fa8: F_adder port map(s(7),cf(5),z(18),s(8),cf(8));
fa9: F_adder port map(s(8),cf(6),z(25),s(9),cf(9));
fa10: F_adder port map(s(9),'0',z(32),p(4),cf(10));
fa11: F_adder port map(z(5),cf(7),z(12),s(11),cf(11));
fa12: F_adder port map(s(11),cf(8),z(19),s(12),cf(12));
fa13: F_adder port map(s(12),cf(9),z(26),s(13),cf(13));
fa14: F_adder port map(s(13),cf(10),z(33),s(14),cf(14));
fa15: F_adder port map(s(14),'0',z(40),p(5),cf(15));
fa16: F_adder port map(z(6),cf(11),z(13),s(16),cf(16));
fa17: F_adder port map(s(16),cf(12),z(20),s(17),cf(17));
fa18: F_adder port map(s(17),cf(13),z(27),s(18),cf(18));
fa19: F_adder port map(s(18),cf(14),z(34),s(19),cf(19));
fa20: F_adder port map(s(19),cf(15),z(41),s(20),cf(20));
fa21: F_adder port map(s(20),'0',z(48),p(6),cf(21));
fa22: F_adder port map(z(7),cf(16),z(14),s(22),cf(22));
fa23: F_adder port map(s(22),cf(17),z(21),s(23),cf(23));
fa24: F_adder port map(s(23),cf(18),z(28),s(24),cf(24));
fa25: F_adder port map(s(24),cf(19),z(35),s(25),cf(25));
fa26: F_adder port map(s(25),cf(20),z(42),s(26),cf(26));
fa27: F_adder port map(s(26),cf(21),z(49),s(27),cf(27));
fa28: F_adder port map(s(27),'0',z(56),p(7),cf(28));
fa29: F_adder port map('0',cf(22),z(15),s(29),cf(29));
fa30: F_adder port map(s(29),cf(23),z(22),s(30),cf(30));
fa31: F_adder port map(s(30),cf(24),z(29),s(31),cf(31));
fa32: F_adder port map(s(31),cf(25),z(36),s(32),cf(32));
fa33: F_adder port map(s(32),cf(26),z(43),s(33),cf(33));
fa34: F_adder port map(s(33),cf(27),z(50),s(34),cf(34));
fa35: F_adder port map(s(34),cf(28),z(57),p(8),cf(35));
fa36: F_adder port map(cf(29),z(23),cf(30),s(36),cf(36));
fa37: F_adder port map(s(36),cf(31),z(30),s(37),cf(37));
fa38: F_adder port map(s(37),cf(32),z(37),s(38),cf(38));
fa39: F_adder port map(s(38),cf(33),z(44),s(39),cf(39));
fa40: F_adder port map(s(39),cf(34),z(51),s(40),cf(40));
fa41: F_adder port map(s(40),cf(35),z(58),p(9),cf(41));
fa42: F_adder port map(cf(36),z(31),cf(37),s(42),cf(42));
fa43: F_adder port map(s(42),cf(38),z(38),s(43),cf(43));
fa44: F_adder port map(s(43),cf(39),z(45),s(44),cf(44));
fa45: F_adder port map(s(44),cf(40),z(52),s(45),cf(45));
fa46: F_adder port map(s(45),cf(41),z(59),p(10),cf(46));
fa47: F_adder port map(cf(42),z(39),cf(43),s(47),cf(47));
fa48: F_adder port map(s(47),cf(44),z(46),s(48),cf(48));
fa49: F_adder port map(s(48),cf(45),z(53),s(49),cf(49));
fa50: F_adder port map(s(49),cf(46),z(60),p(11),cf(50));
fa51: F_adder port map(cf(47),z(47),cf(48),s(51),cf(51));
fa52: F_adder port map(s(51),cf(49),z(54),s(52),cf(52));
fa53: F_adder port map(s(52),cf(50),z(61),p(12),cf(53));
fa54: F_adder port map(cf(51),z(55),cf(52),s(54),cf(54));
fa55: F_adder port map(s(54),cf(53),z(62),p(13),cf(55));
fa56: F_adder port map(cf(55),z(63),cf(54),p(14),p(15));
end Behavioral;

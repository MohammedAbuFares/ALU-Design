-- Partial Product Generation
-- Purpose: Create partial products using AND gates
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity PP_generation is
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
B : in STD_LOGIC_VECTOR (7 downto 0);
Z : out STD_LOGIC_VECTOR (63 downto 0));
end PP_generation;
architecture Behavioral of PP_generation is
-- component declaration
component and_1
port(a,b : in std_logic; z: out std_logic);
end component;
begin
a0: and_1 port map(a(0),b(0),z(0));a1: and_1 port map(a(1),b(0),z(1));
a2: and_1 port map(a(2),b(0),z(2));a3: and_1 port map(a(3),b(0),z(3));
a4: and_1 port map(a(4),b(0),z(4));a5: and_1 port map(a(5),b(0),z(5));
a6: and_1 port map(a(6),b(0),z(6));a7: and_1 port map(a(7),b(0),z(7));
a8: and_1 port map(a(0),b(1),z(8));a9: and_1 port map(a(1),b(1),z(9));
a10: and_1 port map(a(2),b(1),z(10));a11: and_1 port map(a(3),b(1),z(11));
a12: and_1 port map(a(4),b(1),z(12));a13: and_1 port map(a(5),b(1),z(13));
a14: and_1 port map(a(6),b(1),z(14));a15: and_1 port map(a(7),b(1),z(15));
a16: and_1 port map(a(0),b(2),z(16));a17: and_1 port map(a(1),b(2),z(17));
a18: and_1 port map(a(2),b(2),z(18));a19: and_1 port map(a(3),b(2),z(19));
a20: and_1 port map(a(4),b(2),z(20));a21: and_1 port map(a(5),b(2),z(21));
a22: and_1 port map(a(6),b(2),z(22));a23: and_1 port map(a(7),b(2),z(23));
a24: and_1 port map(a(0),b(3),z(24));a25: and_1 port map(a(1),b(3),z(25));
a26: and_1 port map(a(2),b(3),z(26));a27: and_1 port map(a(3),b(3),z(27));
a28: and_1 port map(a(4),b(3),z(28));a29: and_1 port map(a(5),b(3),z(29));
a30: and_1 port map(a(6),b(3),z(30));a31: and_1 port map(a(7),b(3),z(31));
a32: and_1 port map(a(0),b(4),z(32));a33: and_1 port map(a(1),b(4),z(33));
a34: and_1 port map(a(2),b(4),z(34));a35: and_1 port map(a(3),b(4),z(35));
a36: and_1 port map(a(4),b(4),z(36));a37: and_1 port map(a(5),b(4),z(37));
a38: and_1 port map(a(6),b(4),z(38));a39: and_1 port map(a(7),b(4),z(39));
a40: and_1 port map(a(0),b(5),z(40));a41: and_1 port map(a(1),b(5),z(41));
a42: and_1 port map(a(2),b(5),z(42));a43: and_1 port map(a(3),b(5),z(43));
a44: and_1 port map(a(4),b(5),z(44));a45: and_1 port map(a(5),b(5),z(45));
a46: and_1 port map(a(6),b(5),z(46));a47: and_1 port map(a(7),b(5),z(47));
a48: and_1 port map(a(0),b(6),z(48));a49: and_1 port map(a(1),b(6),z(49));
a50: and_1 port map(a(2),b(6),z(50));a51: and_1 port map(a(3),b(6),z(51));
a52: and_1 port map(a(4),b(6),z(52));a53: and_1 port map(a(5),b(6),z(53));
a54: and_1 port map(a(6),b(6),z(54));a55: and_1 port map(a(7),b(6),z(55));
a56: and_1 port map(a(0),b(7),z(56));a57: and_1 port map(a(1),b(7),z(57));
a58: and_1 port map(a(2),b(7),z(58));a59: and_1 port map(a(3),b(7),z(59));
a60: and_1 port map(a(4),b(7),z(60));a61: and_1 port map(a(5),b(7),z(61));
a62: and_1 port map(a(6),b(7),z(62));a63: and_1 port map(a(7),b(7),z(63));
end Behavioral;

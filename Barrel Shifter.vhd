-- Barrel Shifter
-- Purpose: Shift multiplication result by two bits to the right
library ieee;
use ieee.std_logic_1164.all;
--Entity
entity R_shift2 is
port (
a : in STD_LOGIC_VECTOR (15 downto 0);
Decimal : out STD_LOGIC_VECTOR (1 downto 0);
Rslt : out STD_LOGIC_VECTOR (15 downto 0)
);
end R_shift2;
--Architecture
architecture Behavioral of R_shift2 is
--Components
component Mux_twoToOne
port
(
x, y, selec : in std_logic;
c : out std_logic
);
end component;
--Signals
signal w: STD_LOGIC_VECTOR (15 downto 0);
signal k: STD_LOGIC_VECTOR (15 downto 0);
begin
--Casting the Decimals
Decimal(0) <= A(0);
Decimal(1) <= A(1);
--First row of barrel shifter
MX1: Mux_twoToOne port map (A(0), A(1),'0',w(0));
MX2: Mux_twoToOne port map (A(1), A(2),'0',w(1));
MX3: Mux_twoToOne port map (A(2), A(3),'0',w(2));
MX4: Mux_twoToOne port map (A(3), A(4),'0',w(3));
MX5: Mux_twoToOne port map (A(4), A(5),'0',w(4));
MX6: Mux_twoToOne port map (A(5), A(6),'0',w(5));
MX7: Mux_twoToOne port map (A(6), A(7),'0',w(6));
MX8: Mux_twoToOne port map (A(7), A(8),'0',w(7));
MX9: Mux_twoToOne port map (A(8), A(9),'0',w(8));
MX10: Mux_twoToOne port map (A(9), A(10),'0',w(9));
MX11: Mux_twoToOne port map (A(10), A(11),'0',w(10));
MX12: Mux_twoToOne port map (A(11), A(12),'0',w(11));
MX13: Mux_twoToOne port map (A(12), A(13),'0',w(12));
MX14: Mux_twoToOne port map (A(13), A(14),'0',w(13));
MX15: Mux_twoToOne port map (A(14), A(15),'0',w(14));
MX16: Mux_twoToOne port map (A(15), '0','0',w(15));
--Second row of barrel shifter
MX17: Mux_twoToOne port map ( w(0),w(2), '1',k(0));
MX18: Mux_twoToOne port map ( w(1),w(3), '1',k(1));
MX19: Mux_twoToOne port map ( w(2),w(4), '1',k(2));
MX20: Mux_twoToOne port map ( w(3),w(5), '1',k(3));
MX21: Mux_twoToOne port map ( w(4),w(6), '1',k(4)); MX22: Mux_twoToOne port map ( w(5),w(7), '1',k(5));
MX23: Mux_twoToOne port map ( w(6),w(8), '1',k(6));
MX24: Mux_twoToOne port map ( w(7),w(9), '1',k(7));
MX25: Mux_twoToOne port map ( w(8),w(10), '1',k(8));
MX26: Mux_twoToOne port map ( w(9),w(11), '1',k(9));
MX27: Mux_twoToOne port map ( w(10),w(12), '1',k(10));
MX28: Mux_twoToOne port map ( w(11),w(13), '1',k(11));
MX29: Mux_twoToOne port map ( w(12),w(14), '1',k(12));
MX30: Mux_twoToOne port map ( w(13),w(15), '1',k(13));
MX31: Mux_twoToOne port map ( w(14),'0', '1',k(14));
MX32: Mux_twoToOne port map ( w(15),'0', '1',k(15));
--Third row of barrel shifter
MX33: Mux_twoToOne port map (k(0),k(3),'0',Rslt(0));
MX34: Mux_twoToOne port map (k(1),k(4),'0',Rslt(1));
MX35: Mux_twoToOne port map (k(2),k(5),'0',Rslt(2));
MX36: Mux_twoToOne port map (k(3),k(6),'0',Rslt(3));
MX37: Mux_twoToOne port map (k(4),k(7),'0',Rslt(4));
MX38: Mux_twoToOne port map (k(5),k(8),'0',Rslt(5));
MX39: Mux_twoToOne port map (k(6),k(9),'0',Rslt(6));
MX40: Mux_twoToOne port map (k(7),k(10),'0',Rslt(7));
MX41: Mux_twoToOne port map (k(8),k(11),'0',Rslt(8));
MX42: Mux_twoToOne port map (k(9),k(12),'0',Rslt(9));
MX43: Mux_twoToOne port map (k(10),k(13),'0',Rslt(10));
MX44: Mux_twoToOne port map (k(11),k(14),'0',Rslt(11));
MX45: Mux_twoToOne port map (k(12),k(15),'0',Rslt(12));
MX46: Mux_twoToOne port map (k(13),'0','0',Rslt(13));
MX47: Mux_twoToOne port map (k(14),'0','0',Rslt(14));
MX48: Mux_twoToOne port map (k(15),'0','0',Rslt(15));
end Behavioral;
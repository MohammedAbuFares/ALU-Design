-- Full Adder
-- Purpose: Does addition of 3 bits
library ieee;
use ieee.std_logic_1164.all;
entity F_adder is
port (A,B,C: in std_logic; SUM, CRY: out std_logic);
end F_adder;
-- Body
architecture STRUCTURAL of F_adder is
component Half_adder
port (A,B : in std_logic; SUM,CRY: out std_logic);
end component;
component or_1
port (A,B : in std_logic; Z: out std_logic);
end component;
signal SUM1, CRY1, CRY2: std_logic;
begin
HA1: Half_adder port map (A, B, SUM1, CRY1);
HA2: Half_adder port map (SUM1, C, SUM, CRY2);
O_2: Or_1 port map (CRY1, CRY2, CRY);
end STRUCTURAL;
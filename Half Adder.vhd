-- Half Adder
-- Purpose: Does addition of 2 bits
library ieee;
use ieee.std_logic_1164.all;
entity Half_adder is
port (A,B: in std_logic; SUM, CRY: out std_logic);
end Half_adder;
-- Body
architecture STRUCTURAL of Half_adder is
component xor_1
port (A,B : in std_logic; Z: out std_logic);
end component;
component and_1
port (A,B : in std_logic; Z: out std_logic);
end component;
begin
X1: xor_1 port map (A,B,SUM);
A1: and_1 port map (A,B,CRY);
end STRUCTURAL;
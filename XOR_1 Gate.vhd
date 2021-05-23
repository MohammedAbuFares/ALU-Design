-- XOR_1 Gate
-- Purpose: To implement a two input XOR gate
library ieee;
use ieee.std_logic_1164.all;
entity xor_1 is
port (A,B: in std_logic; Z: out std_logic);
end xor_1;
architecture DataFlow of xor_1 is
begin
Z <= (not A and B) or (A and not(B) );
end DataFlow;
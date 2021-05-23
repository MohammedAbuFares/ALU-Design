-- and_1 Gate
-- Purpose: To implement a two input AND gate
library ieee;
use ieee.std_logic_1164.all;
entity and_1 is
port (A,B: in std_logic; Z: out std_logic);
end and_1;
architecture DataFlow of and_1 is
begin
Z <= A and B;
end DataFlow;
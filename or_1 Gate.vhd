-- or_1 Gate
-- Purpose: To implement a two input OR gate
library ieee;
use ieee.std_logic_1164.all;
entity or_1 is
port (A,B: in std_logic; Z: out std_logic);
end or_1;
architecture DataFlow of or_1 is
begin
Z <= A or B;
end DataFlow;
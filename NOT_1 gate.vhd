-- NOT_1 gate
-- Purpose: Implement the NOT for input
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity NOT_1 is
port
(
inA : in std_logic;
out_put : out std_logic
);
end NOT_1;
-- Begin
architecture DataFlow of NOT_1 is
begin
out_put <= NOT(inA);
end DataFlow;


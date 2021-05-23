-- NAND_2 gate
-- Purpose: Implement 3 inputs NAND gate
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity NAND_2 is
port
(
inA, inB, inC : in std_logic;
out_put : out std_logic
);
end NAND_2;
-- Begin
architecture DataFlow of NAND_2 is
begin
out_put <= NOT (inA and (inB and inC));
end DataFlow;

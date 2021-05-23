-- NAND_1 gate
-- Purpose: To implement two inputs NAND gate
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity NAND_1 is
port
(
inA, inB : in std_logic;
out_put : out std_logic
);
end NAND_1;
-- architecture
architecture DataFlow of NAND_1 is
begin
out_put <= inA nand inB;
end DataFlow;
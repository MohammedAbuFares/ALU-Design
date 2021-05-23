-- Flip Flop
-- Purpose: Store a bit and low reset active
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity DFF_1 is
port
(
input : in std_logic;
clk : in std_logic;
rst : in std_logic;
not_q_out : out std_logic;
q_out : out std_logic
);
end DFF_1;
-- Begin
architecture behavioral of DFF_1 is
--Components
component NAND_1
port
(
inA, inB : in std_logic;
out_put : out std_logic
);
end component;
component NAND_2
port
(
inA, inB, inC : in std_logic;
out_put : out std_logic
);
end component;
-- Signals
signal s, r, not_q, q, t1, t2 : std_logic;
begin
-- Build NANDs
U1: NAND_1 port map (s, not_q, q);
U2: NAND_2 port map (r, q, rst, not_q);
U3: NAND_1 port map (s, t2, t1);
U4: NAND_2 port map (t1, clk, rst, s);
U5: NAND_2 port map (s, clk, t2, r);
U6: NAND_2 port map (r, input, rst, t2);
--Outputs
q_out <= q;
not_q_out <= not_q;
end behavioral;
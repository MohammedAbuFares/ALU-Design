-- 4 bit RCA
-- Purpose: Make the addition of 4-bits using RCA method
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity FourBit_RCA is
port
(
A : in std_logic_vector (3 downto 0);
B : in std_logic ;
CarryIn : in std_logic;
sum : out std_logic_vector (3 downto 0);
CarryOut : out std_logic
);
end FourBit_RCA;
-- Architecture
architecture Behavioral of FourBit_RCA is
-- Components
component F_adder
port
(
A, B, C : in std_logic;
CRY, SUM : out std_logic
);
end component;
-- Signals
signal te_c : std_logic_vector (3 downto 0);
begin
U1: F_adder port map (A(0), '0',CarryIn, te_c(0), SUM(0));
-- Generate full adder sequence
fulladder_generate: for i in 1 to 3 generate
UA: F_adder port map (A(i), '0' , te_c(i-1), te_c(i), SUM(i));
end generate;

-- Get the output
CarryOut <= te_c(3);
end Behavioral;
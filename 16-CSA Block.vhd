-- 16-CSA Block
-- Purpose: Perform the addition of 1 for the shifted result
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Entity
entity Bit16_CSA2 is
port
(
A : in std_logic_vector (15 downto 0);
B : in std_logic;
Z : out std_logic_vector (15 downto 0)
);
end Bit16_CSA2;
-- Architecture
architecture Behavioral of Bit16_CSA2 is
-- Components
component FourBit_CSA
port
(
A : in std_logic_vector (3 downto 0);
B: in std_logic ;
mu_sel : in std_logic;
SU : out std_logic_vector (3 downto 0);
carry_out : out std_logic
);
end component;
component Half_adder
port
(
A : in std_logic;
B : in std_logic;
CRY : out std_logic;
SUM : out std_logic
);
end component;
component F_adder
port
(
A, B, C : in std_logic;
CRY, SUM : out std_logic
);
end component;
-- Signals
signal te_c : std_logic_vector (4 downto 0);
signal te_mxsel : std_logic_vector (1 downto 0);
begin
-- First half adder for sum of first bit
U1: Half_adder port map (A(0),'1', te_c(0), z(0));
-- Create full adders for remaining three bits addition
First_three_FA: for i in 1 to 3 generate
UA: F_adder port map (A(i),'0', te_c(i-1), te_c(i),z(i));
end generate;
-- First 4-bits CSA block
U2: FourBit_CSA port map (A (7 downto 4), '0', te_c(3), z(7 downto 4), te_mxsel(0));
-- Second 4-bits CSA block
U3: FourBit_CSA port map (A (11 downto 8), '0', te_mxsel(0), z(11 downto 8), te_mxsel(1));
-- Third 4-bits CSA block
U4: FourBit_CSA port map (A (15 downto 12), '0', te_mxsel(1), z(15 downto 12));
end Behavioral;
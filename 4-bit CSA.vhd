-- 4-bit CSA
-- Purpose: 4-Bit CSA used to add 4-bits using CSA method and to be used for final CSA
library ieee;
use ieee.std_logic_1164.all;
--Entity
entity FourBit_CSA is
port
(
A : in std_logic_vector (3 downto 0);
B: in std_logic;
mu_sel : in std_logic;
SU : out std_logic_vector (3 downto 0);
carry_out : out std_logic
);
end FourBit_CSA;
--Architecture
architecture Behavioral of FourBit_CSA is
--Components
component FourBit_RCA
port
(
A : in std_logic_vector (3 downto 0);
B : in std_logic;
CarryIn : in std_logic;
sum : out std_logic_vector (3 downto 0);
CarryOut : out std_logic
);
end component;
component Mux_twoToOne
port
(
x, y, selec : in std_logic;
c : out std_logic
);
end component;
--Signals
signal te_s0 : std_logic_vector (3 downto 0);
signal te_s1 : std_logic_vector (3 downto 0);
signal te_c0 : std_logic;
signal te_c1 : std_logic;
begin
-- Generate RCA result for carry possibility of 0
U1: FourBit_RCA port map (A,'0','0', te_s0, te_c0);
-- Generate RCA result for carry possibility of 1
U2: FourBit_RCA port map (A,'0', '1', te_s1, te_c1);
-- Connection of Multiplexers for sum
s_muxs: for i in 3 downto 0 generate
UA: Mux_twoToOne port map (te_s0(i), te_s1(i), mu_sel, SU(i));
end generate;
-- Connection of multiplexer for carry

U3: Mux_twoToOne port map (te_c0, te_c1, mu_sel, carry_out);
end Behavioral;

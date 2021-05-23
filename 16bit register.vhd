-- 16bit register
-- Purpose: Store 16 bit result
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity reg16_2 is
port
(
d_in : in std_logic_vector(15 downto 0);
clk, rst : in std_logic;
d_out : out std_logic_vector(15 downto 0)
);
end reg16_2;
-- Architecture
architecture behavioral of reg16_2 is
-- Signals
signal nt_q : std_logic_vector (15 downto 0);
-- Components
component DFF_1
port
(
input : in std_logic;
clk : in std_logic;
rst : in std_logic;
not_q_out : out std_logic;
q_out : out std_logic
);
end component;
component NOT_1
port
(
inA : in std_logic;
out_put : out std_logic
);
end component;
begin
-- Generate registers
register_generate: for i in 0 to 15 generate
UA: DFF_1 port map (d_in(i), clk, rst, nt_q(i), d_out(i));
end generate;
end behavioral;

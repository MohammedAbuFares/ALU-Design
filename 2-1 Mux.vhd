-- 2-1 Mux
-- Purpose: Choose one output out of two using select signal
library ieee;
use ieee.std_logic_1164.all;
-- Begin entity
entity Mux_twoToOne is
port
(
x, y, selec : in std_logic;
c : out std_logic
);
end Mux_twoToOne;
-- Architecture
architecture Behavioral of Mux_twoToOne is
-- Components
component and_1
port
(
A, B : in std_logic;
Z : out std_logic
);
end component;
component NOT_1
port
(
inA : in std_logic;
out_put : out std_logic
);
end component;
component or_1
port
(
A, B : in std_logic;
Z : out std_logic
);
end component;
-- Signals

signal te0, te1, te2 : std_logic;
begin
-- Connections
U1: and_1 port map(selec, y, te0);
U2: NOT_1 port map (selec, te1);
U3: and_1 port map (te1,x, te2);
U4: or_1 port map (te0, te2, c);
end Behavioral;
-- Final Circuit
-- Purpose: Perform the arithmetic operation
library ieee;
use ieee.std_logic_1164.all;
-- Entity
entity Final_circuit is
port
(
A : in std_logic_vector (7 downto 0);
B : in std_logic_vector (7 downto 0);
load: in std_logic ;
clk: in std_logic;
clr: in std_logic;
Z : out std_logic_vector (15 downto 0);
END_FLAG :out std_logic
);
end Final_circuit;
-- Architecture
architecture Behavioral of Final_circuit is
-- Components
component R_shift2
port ( a : in STD_LOGIC_VECTOR (15 downto 0);
Decimal : out STD_LOGIC_VECTOR (1 downto 0);
Rslt : out STD_LOGIC_VECTOR (15 downto 0)
);
end component;
component reg16_2
port
(
d_in : in std_logic_vector(15 downto 0);
clk, rst : in std_logic;
d_out : out std_logic_vector(15 downto 0)
);
end component;
component reg8_2
port
(
d_in : in std_logic_vector(7 downto 0);
clk, rst : in std_logic;
d_out : out std_logic_vector(7 downto 0)
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
component multi_8bit
Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
b : in STD_LOGIC_VECTOR (7 downto 0);
p : out STD_LOGIC_VECTOR (15 downto 0));
end component;
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
component NOT_1 is
port
(
inA : in std_logic;
out_put : out std_logic
);
end component;
component Bit16_CSA2 is
port
(
A : in std_logic_vector (15 downto 0);
B : in std_logic;
Z : out std_logic_vector (15 downto 0)
);
end component;
-- Signals
signal te_c : std_logic_vector (4 downto 0);
signal te_mxsel : std_logic_vector (1 downto 0);
signal Decimal : std_logic_vector (1 downto 0);
signal Rslt : std_logic_vector (15 downto 0);
signal inv_load: std_logic;
signal inv_clr: std_logic;
signal vld_d, n_vld_d : std_logic;
signal RA : std_logic_vector (7 downto 0);
signal RB : std_logic_vector (7 downto 0);
signal RZ : std_logic_vector (15 downto 0);
signal BT : std_logic;
signal multi_result: std_logic_vector (15 downto 0);
signal final_result: std_logic_vector (15 downto 0);
--Begin
begin
-- Create invert signals
NT0: NOT_1 port map (load, inv_load);
NT1: NOT_1 port map (clr, inv_clr);
--create operand register A and B
REG_RA: reg8_2 port map (A, inv_load, inv_clr, RA);
REG_RB: reg8_2 port map (B, inv_load, inv_clr, RB);
--create multiplication result
MUL: multi_8bit port map (RA,RB, multi_result);
--create Shift result
Shift: R_shift2 port map (multi_result,Decimal,Rslt);
--create CSA result
CSA_res: Bit16_CSA2 port map (Rslt,BT, RZ);
-- create register for final result
RGZ: reg16_2 port map (RZ, clk, inv_clr, final_result);
--create output Z from RZ
z <= final_result;
--create DFF for storing
DFF: DFF_1 port map (inv_load,clk, inv_clr, n_vld_d, vld_d);
--cast the END_FLAG
END_FLAG <= vld_d;
end Behavioral;
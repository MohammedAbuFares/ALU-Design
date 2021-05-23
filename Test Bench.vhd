--Test Bench
--Purpose: Test Bench for Final circuit
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
ENTITY Fin_Circuit_test_bench IS
END Fin_Circuit_test_bench;
ARCHITECTURE behavior OF Fin_Circuit_test_bench IS
COMPONENT final_circuit
PORT(
A : IN std_logic_vector(7 downto 0);
B : IN std_logic_vector(7 downto 0);
Z : OUT std_logic_vector(15 downto 0);
clk : IN std_logic;
clr : IN std_logic;
load: in std_logic;
END_FLAG : OUT std_logic
);
END COMPONENT;
--Inputs
signal A : std_logic_vector(7 downto 0);
signal B : std_logic_vector(7 downto 0);
signal clk : std_logic := '0';
signal clr : std_logic := '0';
signal load: std_logic := '0';
--Outputs
signal Z : std_logic_vector(15 downto 0);
signal END_FLAG : std_logic;
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: final_circuit PORT MAP (
A => A,
B => B,
Z => Z,
clk => clk,
clr => clr,
load => load,
END_FLAG => END_FLAG
);
clk_process :process
begin
clk <= '0';
wait for 325ns;
clk <= '1';
wait for 50ns;
end process;
stim_proc: process
begin
clr <= '1';
wait for 50 ns;
clr <= '0';
wait for 50ns;
load <= '1';
A <= "00000000";
B <="00000000";
wait for 150ns;
load <= '0';
A <= "00000011";
B <="00000011";
wait for 150ns;
clr<='1';
wait for 50ns;
clr <='0';
wait for 50ns;
load <='1';
A <="00000111";
B <="00000111";
wait for 150ns;
load <='0';
wait for 50ns;
wait;
end process;
END;
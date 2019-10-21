--libraries to be used are specified here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--entity declaration with port definitions
entity decoder is
port(    input :        in std_logic_vector(2 downto 0);  --3 bit input
A, B, C, D, E, F, G, H: out std_logic);
end decoder;
--architecture of entity
architecture Behavioral of decoder is

begin
A <= (not input(2)) and (not input(1)) and (not input(0));
B <= (not input(2)) and (not input(1)) and input(0);
C <= (not input(2)) and input(1) and (not input(0));
D <= (not input(2)) and input(1) and input(0);
E <= input(2) and (not input(1)) and (not input(0));
F <= input(2) and (not input(1)) and input(0);
G <= input(2) and input(1) and (not input(0));
H <= input(2) and input(1) and input(0);
end Behavioral;
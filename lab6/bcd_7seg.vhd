library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd_7seg is
Port ( num : in std_logic_vector (3 downto 0);
A,B,C,D,E,F,G : out STD_LOGIC);
end bcd_7seg;
 
architecture Behavioral of bcd_7seg is
 
begin
 
A <= num(0) OR num(2) OR (num(1) AND num(3)) OR (NOT num(1) AND NOT num(3));
B <= (NOT num(1)) OR (NOT num(2) AND NOT num(3)) OR (num(2) AND num(3));
C <= num(1) OR NOT num(2) OR num(3);
D <= (NOT num(1) AND NOT num(3)) OR (num(2) AND NOT num(3)) OR (num(1) AND NOT num(2) AND num(3)) OR (NOT num(1) AND num(2)) OR num(0);
E <= (NOT num(1) AND NOT num(3)) OR (num(2) AND NOT num(3));
F <= num(0) OR (NOT num(2) AND NOT num(3)) OR (num(1) AND NOT num(2)) OR (num(1) AND NOT num(3));
G <= num(0) OR (num(1) AND NOT num(2)) OR ( NOT num(1) AND num(2)) OR (num(2) AND NOT num(3));
 
end Behavioral;

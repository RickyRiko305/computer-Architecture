library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd7seg is
Port ( num : in std_logic_vector (3 downto 0);
A,B,C,D,E,F,G : out STD_LOGIC);
end bcd7seg;
 
architecture Behavioral of bcd7seg is
 
begin
 
A <= num(3) OR num(1) OR (num(2) AND num(0)) OR ((NOT num(2)) AND (NOT num(0)));
B <= (NOT num(2)) OR ((NOT num(1)) AND (NOT num(0))) OR (num(1) AND num(0));
C <= num(2) OR (NOT num(1)) OR num(0);
D <= ((NOT num(2)) AND (NOT num(0))) OR (num(1) AND (NOT num(0))) OR (num(2) AND (NOT num(1)) AND num(0)) OR ((NOT num(2)) AND num(1)) OR num(3);
E <= ((NOT num(2)) AND (NOT num(0))) OR (num(1) AND (NOT num(0)));
F <= num(3) OR ((NOT num(1)) AND (NOT num(0))) OR (num(2) AND (NOT num(1))) OR (num(2) AND (NOT num(0)));
G <= num(3) OR (num(2) AND (NOT num(1))) OR ( (NOT num(2)) AND num(1)) OR (num(1) AND (NOT num(0)));
 
end Behavioral; 

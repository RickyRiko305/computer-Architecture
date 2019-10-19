library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd7seg2 is
Port ( num : in std_logic_vector (3 downto 0);
AA,BB,CC,DD,EE,FF,GG : out STD_LOGIC);
end bcd7seg2;
 
architecture Behavioral of bcd7seg2 is
 
begin
 
AA <= num(3) OR num(1) OR (num(2) AND num(0)) OR ((NOT num(2)) AND (NOT num(0)));
BB <= (NOT num(2)) OR ((NOT num(1)) AND (NOT num(0))) OR (num(1) AND num(0));
CC <= num(2) OR (NOT num(1)) OR num(0);
DD <= ((NOT num(2)) AND (NOT num(0))) OR (num(1) AND (NOT num(0))) OR (num(2) AND (NOT num(1)) AND num(0)) OR ((NOT num(2)) AND num(1)) OR num(3);
EE <= ((NOT num(2)) AND (NOT num(0))) OR (num(1) AND (NOT num(0)));
FF <= num(3) OR ((NOT num(1)) AND (NOT num(0))) OR (num(2) AND (NOT num(1))) OR (num(2) AND (NOT num(0)));
GG <= num(3) OR (num(2) AND (NOT num(1))) OR ( (NOT num(2)) AND num(1)) OR (num(1) AND (NOT num(0)));
 
end Behavioral; 

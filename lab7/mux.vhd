library IEEE;

use IEEE.std_logic_1164.all;

entity mux is
port (sel : in std_logic_vector(2 downto 0);
A,B,C,D,E,F,G,H: in std_logic_vector(31 downto 0);
Y : out std_logic_vector(31 downto 0));
end mux;

architecture mux8 of mux is
begin
process (sel, A,B,C,D,E,F,G,H)
begin
case sel is
when "000" => Y <=A;
when "001" => Y <=B;
when "010" => Y <=C;
when "011" => Y <=D;
when "100" => Y <=E;
when "101" => Y <=F;
when "110" => Y <=G;
when "111" => Y <=H;
when others => Y <=A;
end case;
end process;
end mux8;
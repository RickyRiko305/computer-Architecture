library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALU32 is
port ( A: in std_logic_vector(31 downto 0);
 B: in std_logic_vector(31 downto 0);
 Sel: in std_logic_vector(3 downto 0);
 Y: out std_logic_vector(31 downto 0)
);
end ALU32;
architecture behv of ALU32 is
begin
 process(A,B,Sel)
 begin
 case Sel is
 when "0000" =>
 Y <= A + B;
 when "0001" =>
 Y <= A + (not B) + 1;
 when "0010" =>
 Y <= A + 1;
 when "0011" =>
 Y <= A - 1;
 when "0100" =>
 Y <= B + 1;
 when "0101" =>
 Y <= B - 1;
 when "0110" =>
 Y <= A;
 when "0111" =>
 Y <= B;
 when "1000" =>
 Y <= not A;
 when "1001" =>
 Y <= not B;
 when "1010" =>
 Y <= A and B;
 when "1011" =>
 Y <= A or B;
 when "1100" =>
 Y <= A nand B;
 when "1101" =>
 Y <= A nor B;
 when "1110" =>
 Y <= A xor B;
 when "1111" =>
 Y <= not (A xor B);
 when others =>
 Y <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
 end case;
 end process;
end behv;

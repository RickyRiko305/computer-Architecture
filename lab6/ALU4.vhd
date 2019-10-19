library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALU4 is
port ( A: in std_logic_vector(3 downto 0);
 B: in std_logic_vector(3 downto 0);
 Sel: in std_logic_vector(2 downto 0);
 Y: out std_logic_vector(3 downto 0)
);
end ALU4;
architecture behv of ALU4 is
begin
 process(A,B,Sel)
 begin
 case Sel is

 when "000" =>
 Y <= not A;
 when "001" =>
 Y <= not B;
 when "010" =>
 Y <= A and B;
 when "011" =>
 Y <= A or B;
 when "100" =>
 Y <= A nand B;
 when "101" =>
 Y <= A nor B;
 when "110" =>
 Y <= A xor B;
 when "111" =>
 Y <= not (A xor B);
 when others =>
 Y <= "XXXX";
 end case;
 end process;
end behv;

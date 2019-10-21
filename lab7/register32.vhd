library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY register32 IS PORT(
    d   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ld  : IN STD_LOGIC; 
    clr : IN STD_LOGIC; 
    clk : IN STD_LOGIC; 
    q   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END register32;

ARCHITECTURE description OF register32 IS

BEGIN
    process(clk, clr)
    begin
        if clr = '1' then
            q <= x"00000000";
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
        end if;
    end process;
END description;
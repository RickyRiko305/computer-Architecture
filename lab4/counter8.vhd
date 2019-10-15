library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

ENTITY counter8 IS PORT(
    d   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ld  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
	 inc : IN STD_LOGIC; --inc
    q   : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- output
);
END counter8;

ARCHITECTURE description OF counter8 IS

BEGIN
    process(clk, clr)
    begin
        if clr = '1' then
            q <= x"00";
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
				if inc = '1' then
					q <= q + 1;
				end if;	
        end if;
    end process;
END description;
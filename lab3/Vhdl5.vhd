library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
---------------------------------------------------
entity pc_update is
    port( clk: in std_logic; -- clock
        incH_ldL: in std_logic; -- increment PC = PC + 4 when high,
                                -- load PCInput when low
    PCInput: in std_logic_vector(31 downto 0); -- external input for PC
    InstrAddr: out std_logic_vector(31 downto 0) ); -- instruction address
end entity pc_update;
----------------------------------------------------
architecture pc_update_arch of pc_update is
    component register32 is
        port( clr: in std_logic; -- async. clear
              clk: in std_logic; -- clock
               ld: in std_logic; -- load  
                D: in std_logic_vector(31 downto 0); -- data input
                Q: out std_logic_vector(31 downto 0) ); -- data output
    end component register32;

    component mux2to1_32 is
        port( sel: in std_logic; -- selection bit input
               X0: in std_logic_vector(31 downto 0); -- first input
                X1: in std_logic_vector(31 downto 0); -- second input
                 Y: out std_logic_vector(31 downto 0)); -- output
    end component mux2to1_32;

    signal PC_current: std_logic_vector(31 downto 0); -- the current state of PC reg        
    signal PC_add_4: std_logic_vector(31 downto 0); -- output from the adder 
    signal PC_next: std_logic_vector(31 downto 0); -- output from the MUX

    begin

    PC: register32 Port Map(
        clk, Q, clr, D);    
    MUX: mux2to1_32 Port Map(
        X0,sel,X1,Y);

    process (incH_ldL)
        begin
        wait until (clk = '1');
        if  incH_1dL = '0' then
            InstrAddr <= X0;
        else InstrAddr <= X1;
        end if;
    end process;

end architecture pc_update_arch;
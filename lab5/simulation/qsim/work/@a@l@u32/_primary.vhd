library verilog;
use verilog.vl_types.all;
entity ALU32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Sel             : in     vl_logic_vector(3 downto 0);
        Y               : out    vl_logic_vector(31 downto 0)
    );
end ALU32;

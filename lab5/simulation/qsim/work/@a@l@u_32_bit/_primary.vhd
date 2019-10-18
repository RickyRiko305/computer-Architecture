library verilog;
use verilog.vl_types.all;
entity ALU_32_bit is
    port(
        Y               : out    vl_logic_vector(31 downto 0);
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Sel             : in     vl_logic_vector(3 downto 0)
    );
end ALU_32_bit;

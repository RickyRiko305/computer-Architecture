library verilog;
use verilog.vl_types.all;
entity q1_32 is
    port(
        q               : out    vl_logic_vector(31 downto 0);
        ld              : in     vl_logic;
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(31 downto 0)
    );
end q1_32;

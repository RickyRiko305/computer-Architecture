library verilog;
use verilog.vl_types.all;
entity q1_1 is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        ld              : in     vl_logic;
        clr             : in     vl_logic;
        clk             : in     vl_logic
    );
end q1_1;

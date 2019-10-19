library verilog;
use verilog.vl_types.all;
entity bcd_7_segment is
    port(
        A               : out    vl_logic;
        num             : in     vl_logic_vector(3 downto 0);
        B               : out    vl_logic;
        C               : out    vl_logic;
        D               : out    vl_logic;
        E               : out    vl_logic;
        F               : out    vl_logic;
        G               : out    vl_logic
    );
end bcd_7_segment;

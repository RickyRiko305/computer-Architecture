library verilog;
use verilog.vl_types.all;
entity alu_bcd is
    port(
        xa              : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        xb              : out    vl_logic;
        xc              : out    vl_logic;
        xd              : out    vl_logic;
        xe              : out    vl_logic;
        xf              : out    vl_logic;
        xg              : out    vl_logic;
        ya              : out    vl_logic;
        B               : in     vl_logic_vector(3 downto 0);
        yb              : out    vl_logic;
        yc              : out    vl_logic;
        yd              : out    vl_logic;
        ye              : out    vl_logic;
        yf              : out    vl_logic;
        yg              : out    vl_logic;
        Y               : out    vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0)
    );
end alu_bcd;

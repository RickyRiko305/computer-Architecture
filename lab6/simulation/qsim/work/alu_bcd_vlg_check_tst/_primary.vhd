library verilog;
use verilog.vl_types.all;
entity alu_bcd_vlg_check_tst is
    port(
        xa              : in     vl_logic;
        xb              : in     vl_logic;
        xc              : in     vl_logic;
        xd              : in     vl_logic;
        xe              : in     vl_logic;
        xf              : in     vl_logic;
        xg              : in     vl_logic;
        Y               : in     vl_logic_vector(3 downto 0);
        ya              : in     vl_logic;
        yb              : in     vl_logic;
        yc              : in     vl_logic;
        yd              : in     vl_logic;
        ye              : in     vl_logic;
        yf              : in     vl_logic;
        yg              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end alu_bcd_vlg_check_tst;

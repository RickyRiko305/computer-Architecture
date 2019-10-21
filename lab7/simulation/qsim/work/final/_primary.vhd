library verilog;
use verilog.vl_types.all;
entity final is
    port(
        G_out1          : out    vl_logic_vector(31 downto 0);
        write_enable    : in     vl_logic;
        val             : in     vl_logic_vector(2 downto 0);
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(31 downto 0);
        \Read_sel_1_\   : in     vl_logic_vector(2 downto 0);
        G_out2          : out    vl_logic_vector(31 downto 0);
        \Read_sel_2_\   : in     vl_logic_vector(2 downto 0)
    );
end final;

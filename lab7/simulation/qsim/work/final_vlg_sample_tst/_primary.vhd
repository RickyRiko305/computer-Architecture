library verilog;
use verilog.vl_types.all;
entity final_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        d               : in     vl_logic_vector(31 downto 0);
        \Read_sel_1_\   : in     vl_logic_vector(2 downto 0);
        \Read_sel_2_\   : in     vl_logic_vector(2 downto 0);
        val             : in     vl_logic_vector(2 downto 0);
        write_enable    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end final_vlg_sample_tst;

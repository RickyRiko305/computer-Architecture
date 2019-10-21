library verilog;
use verilog.vl_types.all;
entity final_vlg_check_tst is
    port(
        G_out1          : in     vl_logic_vector(31 downto 0);
        G_out2          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end final_vlg_check_tst;

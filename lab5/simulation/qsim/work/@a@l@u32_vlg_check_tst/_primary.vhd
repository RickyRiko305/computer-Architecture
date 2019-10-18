library verilog;
use verilog.vl_types.all;
entity ALU32_vlg_check_tst is
    port(
        Y               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU32_vlg_check_tst;

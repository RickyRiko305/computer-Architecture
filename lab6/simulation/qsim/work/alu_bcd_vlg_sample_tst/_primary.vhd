library verilog;
use verilog.vl_types.all;
entity alu_bcd_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end alu_bcd_vlg_sample_tst;

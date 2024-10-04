library verilog;
use verilog.vl_types.all;
entity milestone1_vlg_sample_tst is
    port(
        clk_i           : in     vl_logic;
        dime_i          : in     vl_logic;
        nickel_i        : in     vl_logic;
        quarter_i       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end milestone1_vlg_sample_tst;

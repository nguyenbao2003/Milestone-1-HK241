library verilog;
use verilog.vl_types.all;
entity milestone1 is
    port(
        nickel_i        : in     vl_logic;
        dime_i          : in     vl_logic;
        quarter_i       : in     vl_logic;
        clk_i           : in     vl_logic;
        change_o        : out    vl_logic_vector(2 downto 0);
        soda_o          : out    vl_logic
    );
end milestone1;

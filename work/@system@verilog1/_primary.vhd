library verilog;
use verilog.vl_types.all;
entity SystemVerilog1 is
    generic(
        S0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S5              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S10             : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        S15             : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        nickel_i        : in     vl_logic;
        dime_i          : in     vl_logic;
        quarter_i       : in     vl_logic;
        clk_i           : in     vl_logic;
        change_o        : out    vl_logic_vector(2 downto 0);
        soda_o          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S15 : constant is 1;
end SystemVerilog1;

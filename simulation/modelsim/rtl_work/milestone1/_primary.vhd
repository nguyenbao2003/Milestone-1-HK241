library verilog;
use verilog.vl_types.all;
entity milestone1 is
    generic(
        S0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S5              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S10             : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        S15             : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        i_clk           : in     vl_logic;
        i_nickle        : in     vl_logic;
        i_dime          : in     vl_logic;
        i_quarter       : in     vl_logic;
        o_soda          : out    vl_logic;
        o_change        : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S15 : constant is 1;
end milestone1;

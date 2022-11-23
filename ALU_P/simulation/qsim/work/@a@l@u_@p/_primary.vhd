library verilog;
use verilog.vl_types.all;
entity ALU_P is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Alu_Sel         : in     vl_logic_vector(3 downto 0);
        Result          : out    vl_logic_vector(7 downto 0);
        NZVC            : out    vl_logic_vector(3 downto 0)
    );
end ALU_P;

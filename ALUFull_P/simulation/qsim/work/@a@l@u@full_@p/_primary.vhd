library verilog;
use verilog.vl_types.all;
entity ALUFull_P is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Alu_Sel         : in     vl_logic_vector(3 downto 0);
        Sal             : out    vl_logic_vector(3 downto 0);
        Sal1            : out    vl_logic_vector(3 downto 0);
        NZVC            : out    vl_logic_vector(3 downto 0);
        Dis1            : out    vl_logic_vector(6 downto 0);
        Dis2            : out    vl_logic_vector(6 downto 0);
        Dis3            : out    vl_logic_vector(6 downto 0);
        Dis4            : out    vl_logic_vector(6 downto 0)
    );
end ALUFull_P;

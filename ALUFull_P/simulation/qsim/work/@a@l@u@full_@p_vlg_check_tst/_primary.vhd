library verilog;
use verilog.vl_types.all;
entity ALUFull_P_vlg_check_tst is
    port(
        Dis1            : in     vl_logic_vector(6 downto 0);
        Dis2            : in     vl_logic_vector(6 downto 0);
        Dis3            : in     vl_logic_vector(6 downto 0);
        Dis4            : in     vl_logic_vector(6 downto 0);
        NZVC            : in     vl_logic_vector(3 downto 0);
        Sal             : in     vl_logic_vector(3 downto 0);
        Sal1            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALUFull_P_vlg_check_tst;

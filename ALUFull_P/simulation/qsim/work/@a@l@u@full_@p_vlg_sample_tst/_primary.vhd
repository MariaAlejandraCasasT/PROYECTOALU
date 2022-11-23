library verilog;
use verilog.vl_types.all;
entity ALUFull_P_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        Alu_Sel         : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALUFull_P_vlg_sample_tst;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_P is
       port(A , B: in std_logic_vector (7 downto 0);
		      Alu_Sel: in std_logic_vector(3 downto 0);
				Result: out std_logic_vector(7 downto 0);
				NZVC: out std_logic_vector (3 downto 0));    
end ALU_P;


architecture ALU_P_arch of ALU_P is

   type Sal_type is array (0 to 128) of std_logic_vector(7 downto 0);
   signal Sal1 : Sal_type;
	
	begin
	
		ALU_PROCESS : process (A, B, ALU_Sel)
		variable Sum_uns : unsigned(8 downto 0);
		variable Res_uns : unsigned(8 downto 0);
			begin
			if (ALU_Sel = "0000") then --– ADDITION
				            --- Sum Calculation ---------------------------------–
				Sum_uns := unsigned('0' & A) + unsigned('0' & B);
				Result <= std_logic_vector (Sum_uns(7 downto 0));
								--- Negative Flag (N) -------------------------------
				NZVC(3) <= Sum_uns(7);
								--- Zero Flag (Z) ---------------------------------–
				if (Sum_uns(7 downto 0) = x"00") then
						NZVC(2) <= '1';
				else
						NZVC(2) <= '0';
				end if;
				
								--- Overflow Flag (V) -------------------------------
				if ((A(7)='0' and B(7)='0' and Sum_uns(7)='1') or
					  (A(7)='1' and B(7)='1' and Sum_uns(7)='0')) then
						NZVC(1) <= '1';
					else
						NZVC(1) <= '0';
				end if;
								--- Carry Flag (C) ------------------------------------
						NZVC(0) <= Sum_uns(8);
						
		     elsif (ALU_Sel="0001") then 
		      Res_uns := unsigned('0' & A) - unsigned('0' & B);
				Result <= std_logic_vector (Res_uns (7 downto 0));
		            --- Negative Flag (N) -------------------------------
				      NZVC(3) <= Res_uns(7);
								--- Zero Flag (Z) ---------------------------------–
				if (Res_uns(7 downto 0) = x"00") then
						NZVC(2) <= '1';
					else
						NZVC(2) <= '0';
				end if;
								--- Overflow Flag (V) -------------------------------
				if ((A(7)='0' and B(7)='0' and Res_uns(7)='1') or
					  (A(7)='1' and B(7)='1' and Res_uns(7)='0')) then
						NZVC(1) <= '1';
					else
						NZVC(1) <= '0';
				end if;
								--- Carry Flag (C) ------------------------------------
						NZVC(0) <= Res_uns(8);
						
	    end if;
	 end process;
end architecture;
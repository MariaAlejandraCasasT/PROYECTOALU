library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALUFull_P is
    port(A , B: in std_logic_vector (7 downto 0);
		   Alu_Sel: in std_logic_vector(3 downto 0);
			Sal: out std_logic_vector(3 downto 0);
			Sal1: out std_logic_vector(3 downto 0);
			NZVC: out std_logic_vector (3 downto 0);
			Dis1, Dis2, Dis3, Dis4: out std_logic_vector(6 downto 0));
end ALUFull_P;	 

architecture ALUFull_P_arch of ALUFull_P is


   component ALU_P 
       port(A , B: in std_logic_vector (7 downto 0);
		      Alu_Sel: in std_logic_vector(3 downto 0);
				Result : out std_logic_vector(7 downto 0);
				NZVC: out std_logic_vector (3 downto 0));    
   end component;
	
	component BCD 
       port (A, B, C, D: in std_logic;
             F : out std_logic_vector(6 downto 0));
   end component;
		            
	signal Result: std_logic_vector(7 downto 0); 
	signal Flag: std_logic_vector (3 downto 0);
	signal Z3: std_logic_vector(8 downto 0);
	signal z4: std_logic_vector (3 downto 0);

	begin
	
	 Sal<= std_logic_vector (Result(3 downto 0));
	 Sal1<= std_logic_vector (Result(7 downto 4));
	
	 ALU: ALU_P port map (A,B,Alu_Sel,Result,Flag);
	 B1: BCD port map (B(3), B(2), B(1), B(0), Dis1);
	 B2: BCD port map (B(7), B(6), B(5), B(4), Dis2);
	 B3: BCD port map (Result(3), Result(2), Result(1), Result(0), Dis3);
	 B4: BCD port map (Result(7), Result(6), Result(5), Result(4), Dis4);
	 NZVC<=Flag;
		
	
end architecture;
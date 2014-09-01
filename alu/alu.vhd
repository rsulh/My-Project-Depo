
-- Dilara && Resul düzeltilmis kod

----------------------------------
 library ieee;   					 
 use ieee.std_logic_1164.all;				 
 use ieee.std_logic_unsigned.all;			 
 use ieee.std_logic_arith.all;				
----------------------------------
 ENTITY alu IS					
	port(	A, B    : IN  std_logic_vector(1 downto 0);
			secim   : IN  std_logic_vector(1 downto 0);
			cikis   : out std_logic_vector(1 downto 0));
 END alu;	
-----------------------------------
 ARCHITECTURE alu OF alu IS
BEGIN
	WITH secim(1 downto 0) SELECT 
			cikis <= A + B 	 	  WHEN "00",
						A - B   	 	  WHEN "01",
						A OR  B       WHEN "10",
						A AND B       WHEN "11";
						
END alu;
-----------------------------------


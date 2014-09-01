-----------------------------------------
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;
-----------------------------------------
 ENTITY uzayli IS
 PORT (clk,reset		: IN STD_LOGIC;	-- 1 bitlik 2 giris tanýmlanir
		 digit1,digit2	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));  -- 3 bitli 2 cikis tanimlanir.
 END uzayli;
-----------------------------------------
 ARCHITECTURE uzayli OF uzayli IS
 BEGIN
	PROCESS(clk,reset)
		VARIABLE temp1 : INTEGER RANGE 0 TO 7;	       
		VARIABLE temp2 : INTEGER RANGE 0 TO 7;
 BEGIN
 ---------------Uzayli_Sayici-------------
 	IF (reset='1')THEN
		temp1:=0;
		temp2:=0;
	ELSIF(clk'EVENT AND clk='1')THEN
	temp1:=temp1+1;
	IF(temp1=7)THEN -- sayici 8 olunca sýfýrlanir
	temp1:=0;
	temp2:=temp2+1;
	IF(temp2=7)THEN -- sayici 8 olunca sýfýrlanir
	temp2:=0;
	END IF;
    END IF;
  END IF;
-----------------------------------
 		CASE temp1 IS	--temp1 kosulumda sayýcýnýn saymasýný istedigim sayýlarý 3bitlik olarak BCD den Bit karsiligini yazdim
			WHEN 0 =>digit1 <= "000";
			WHEN 1 =>digit1 <= "001";
			WHEN 2 =>digit1 <= "010";
			WHEN 3 =>digit1 <= "011";
			WHEN 4 =>digit1 <= "100";
			WHEN 5 =>digit1 <= "101";
			WHEN 6 =>digit1 <= "110";
			WHEN 7 =>digit1 <= "111";
			when others => null ;
		END CASE;
------------------------------------		
		CASE temp2 IS	--temp2 kosulumda sayýcýnýn saymasýný istedigim sayýlarý 3bitlik olarak BCD den Bit karsiligini yazdim
			WHEN 0 =>digit1 <= "000";
			WHEN 1 =>digit1 <= "001";
			WHEN 2 =>digit1 <= "010";
			WHEN 3 =>digit1 <= "011";
			WHEN 4 =>digit1 <= "100";
			WHEN 5 =>digit1 <= "101";
			WHEN 6 =>digit1 <= "110";
			WHEN 7 =>digit1 <= "111";
			when others => null ;
		END CASE;
	END PROCESS;  --Process imi sonlandýrdým
END uzayli;
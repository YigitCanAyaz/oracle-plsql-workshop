 -- LOOP ... END LOOP
 -- 50'DEN GERÝYE DOÐRU 5'ER 5'ER AZALTARAK POZÝTÝF SAYILARI YAZALIM
 
 DECLARE
    A NUMBER := 50;
    I NUMBER := 0;
 BEGIN
    LOOP
        /*
        IF A < 0 THEN
            EXIT;
        END IF;
        */
        EXIT WHEN A < 0;
        
        I := I + 1;
        DBMS_OUTPUT.PUT_LINE(I || ' Sayý = ' || A);
        A := A - 5;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Son sayý' || ' Sayý = ' || A);
 END;
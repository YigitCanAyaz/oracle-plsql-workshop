 -- LOOP ... END LOOP
 -- 50'DEN GER�YE DO�RU 5'ER 5'ER AZALTARAK POZ�T�F SAYILARI YAZALIM
 
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
        DBMS_OUTPUT.PUT_LINE(I || ' Say� = ' || A);
        A := A - 5;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Son say�' || ' Say� = ' || A);
 END;
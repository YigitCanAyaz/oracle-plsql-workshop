 -- WHILE ... LOOP
 -- 50'DEN GER�YE DO�RU 5'ER 5'ER AZALTARAK POZ�T�F SAYILARI YAZALIM
 
 DECLARE
    a number(2) := 50;
    I number(2) := 0;
 BEGIN
    WHILE A >= 0 LOOP
        I := I + 1;
        DBMS_OUTPUT.PUT_LINE(I || ' Say� = ' || a);
        a := a - 5;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('��k�� de�eri' || ' Say� = ' || a);
 END;
 
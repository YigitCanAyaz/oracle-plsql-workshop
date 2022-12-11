 -- WHILE ... LOOP
 -- 50'DEN GERÝYE DOÐRU 5'ER 5'ER AZALTARAK POZÝTÝF SAYILARI YAZALIM
 
 DECLARE
    a number(2) := 50;
    I number(2) := 0;
 BEGIN
    WHILE A >= 0 LOOP
        I := I + 1;
        DBMS_OUTPUT.PUT_LINE(I || ' Sayý = ' || a);
        a := a - 5;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Çýkýþ deðeri' || ' Sayý = ' || a);
 END;
 
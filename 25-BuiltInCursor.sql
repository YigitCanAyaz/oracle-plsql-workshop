-- FOUND, NOTFOUND, ISOPEN, ROWCOUNT

DECLARE

BEGIN
    -- UPDATE ÖRNEÐÝ
    /*
    UPDATE EMP SET SAL = SAL + 200 where sal = 1;
    
    IF SQL %NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('>> 0 Kayýt update edildi');
    ELSIF SQL%FOUND then
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kayýt update edildi');
    END IF;
    */
    
    -- DELETE ÖRNEÐÝ
    
    /*
    DELETE EMP WHERE EMPNO = 0;
    
    IF SQL %NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('>> Silinecek kayýt bulunamadý');
    ELSIF SQL%FOUND then
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kayýt silindi');
    END IF;
    */
    
    -- INSERT ÖRNEÐÝ
    
    INSERT INTO EMP (EMPNO, ENAME) VALUES (2223, 'Yiðit');
        IF SQL %ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('>> Insert yappýlamadý');
        ELSE 
            DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kayýt eklendi');
    END IF;
END;

rollback;
-- FOUND, NOTFOUND, ISOPEN, ROWCOUNT

DECLARE

BEGIN
    -- UPDATE �RNE��
    /*
    UPDATE EMP SET SAL = SAL + 200 where sal = 1;
    
    IF SQL %NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('>> 0 Kay�t update edildi');
    ELSIF SQL%FOUND then
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kay�t update edildi');
    END IF;
    */
    
    -- DELETE �RNE��
    
    /*
    DELETE EMP WHERE EMPNO = 0;
    
    IF SQL %NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('>> Silinecek kay�t bulunamad�');
    ELSIF SQL%FOUND then
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kay�t silindi');
    END IF;
    */
    
    -- INSERT �RNE��
    
    INSERT INTO EMP (EMPNO, ENAME) VALUES (2223, 'Yi�it');
        IF SQL %ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('>> Insert yapp�lamad�');
        ELSE 
            DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||  ' adet kay�t eklendi');
    END IF;
END;

rollback;
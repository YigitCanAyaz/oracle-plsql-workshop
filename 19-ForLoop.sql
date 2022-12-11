 -- 10'DAN 20'YE
 -- EMP Tablosundaki kayýtlarý listeleyelim

declare
    
begin
    /*
    for A in 10 .. 20 LOOP
        DBMS_OUTPUT.PUT_LINE(A);
    END LOOP;
    */
    
    for A in (SELECT EMPNO, ENAME, SAL FROM EMP) LOOP
        DBMS_OUTPUT.PUT_LINE('EMPNO = ' || A.EMPNO);
        DBMS_OUTPUT.PUT_LINE('ENAME = ' || A.ENAME);
        DBMS_OUTPUT.PUT_LINE('SAL = ' || A.SAL);
    END LOOP;
end;
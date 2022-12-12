DECLARE
    CURSOR C_EMP IS SELECT EMPNO, ENAME FROM EMP; -- Cursor tanýmladýk
    --P_EMPNO EMP.EMPNO%TYPE; -- Deðiþken yarattýk
    --P_ENAME EMP.ENAME%TYPE;
    c_rec c_emp%rowtype; -- direkt tabloyu tanýmlar
BEGIN
    OPEN C_EMP; -- cursoru açmamýz lazým
    
    LOOP
        --FETCH C_EMP INTO P_EMPNO, P_ENAME;
        fetch c_emp into c_rec;
        EXIT WHEN C_EMP%NOTFOUND; -- Kalmadýysa
        --DBMS_OUTPUT.PUT_LINE(P_EMPNO || ' ' || P_ENAME);
        DBMS_OUTPUT.PUT_LINE(c_rec.EMPNO || ' ' || c_rec.ename);
    END LOOP;
    CLOSE C_EMP;
END;

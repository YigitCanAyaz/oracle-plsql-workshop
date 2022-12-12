DECLARE
    CURSOR C_EMP IS SELECT EMPNO, ENAME FROM EMP; -- Cursor tan�mlad�k
    --P_EMPNO EMP.EMPNO%TYPE; -- De�i�ken yaratt�k
    --P_ENAME EMP.ENAME%TYPE;
    c_rec c_emp%rowtype; -- direkt tabloyu tan�mlar
BEGIN
    OPEN C_EMP; -- cursoru a�mam�z laz�m
    
    LOOP
        --FETCH C_EMP INTO P_EMPNO, P_ENAME;
        fetch c_emp into c_rec;
        EXIT WHEN C_EMP%NOTFOUND; -- Kalmad�ysa
        --DBMS_OUTPUT.PUT_LINE(P_EMPNO || ' ' || P_ENAME);
        DBMS_OUTPUT.PUT_LINE(c_rec.EMPNO || ' ' || c_rec.ename);
    END LOOP;
    CLOSE C_EMP;
END;

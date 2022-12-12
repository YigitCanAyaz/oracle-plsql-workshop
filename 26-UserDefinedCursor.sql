DECLARE
    CURSOR C_EMP IS SELECT EMPNO, ENAME FROM EMP; -- Cursor tan�mlad�k
    P_EMPNO EMP.EMPNO%TYPE; -- De�i�ken yaratt�k
    P_ENAME EMP.ENAME%TYPE;
BEGIN
    OPEN C_EMP; -- cursoru a�mam�z laz�m
    
    LOOP
        FETCH C_EMP INTO P_EMPNO, P_ENAME;
        EXIT WHEN C_EMP%NOTFOUND; -- Kalmad�ysa
        DBMS_OUTPUT.PUT_LINE(P_EMPNO || ' ' || P_ENAME);
    END LOOP;
    CLOSE C_EMP;
END;

DESC EMP;
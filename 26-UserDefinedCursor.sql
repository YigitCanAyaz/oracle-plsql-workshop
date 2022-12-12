DECLARE
    CURSOR C_EMP IS SELECT EMPNO, ENAME FROM EMP; -- Cursor tanýmladýk
    P_EMPNO EMP.EMPNO%TYPE; -- Deðiþken yarattýk
    P_ENAME EMP.ENAME%TYPE;
BEGIN
    OPEN C_EMP; -- cursoru açmamýz lazým
    
    LOOP
        FETCH C_EMP INTO P_EMPNO, P_ENAME;
        EXIT WHEN C_EMP%NOTFOUND; -- Kalmadýysa
        DBMS_OUTPUT.PUT_LINE(P_EMPNO || ' ' || P_ENAME);
    END LOOP;
    CLOSE C_EMP;
END;

DESC EMP;
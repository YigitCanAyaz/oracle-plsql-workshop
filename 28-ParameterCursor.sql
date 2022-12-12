DECLARE
    CURSOR cur_DEPT IS SELECT DEPTNO, DNAME FROM DEPT;
    
    CURSOR cur_emp (p_deptno dept.deptno%type) is select empno, ename, sal from emp
    where deptno = p_deptno;
    
    REC_DEPT cur_DEPT%ROWTYPE;
    REC_EMP cur_emp%ROWTYPE;
    TOPLAM_MAAS NUMBER(10,2);
BEGIN
    OPEN cur_DEPT;
    
    loop
        FETCH CUR_DEPT INTO REC_DEPT;
        EXIT WHEN CUR_DEPT%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Bölüm No / Adý ' || REC_DEPT.DEPTNO || '-' || REC_DEPT.DNAME);
        DBMS_OUTPUT.PUT_LINE('---------------------');
        TOPLAM_MAAS := 0;
        OPEN cur_emp(REC_DEPT.DEPTNO);
        LOOP
            fetch CUR_EMP INTO REC_EMP;
            EXIT WHEN CUR_EMP%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('Çalýþan Adý / Maaþý ' || REC_EMP.ename || '' || rec_emp.sal);
            TOPLAM_MAAS := TOPLAM_MAAS + REC_EMP.SAL;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(REC_DEPT.DEPTNO || ' Numaralý Bölümünün Maaþ Toplamý ' || TOPLAM_MAAS);
        DBMS_OUTPUT.PUT_LINE('        ');
        CLOSE cur_emp;
    end loop;
    CLOSE Cur_DEPT;
END;
desc emp;

declare
    v_empno EMP.EMPNO%TYPE;
    v_ename EMP.ENAME%TYPE; -- tipini kopyala
begin
    select empno, ename into v_empno, v_ename from emp where rownum = 1;
    
    DBMS_OUTPUT.PUT_LINE('EMPNO = ' || V_EMPNO || ' ENAME = ' || V_ENAME);
end;

select empno, ename from emp;
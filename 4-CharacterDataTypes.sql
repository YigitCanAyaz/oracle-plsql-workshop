declare
    a char(15) := 'PL/SQL';
    b nchar(15) := '������������';
    c varchar2(15) := 'PL/SQL';
    d nvarchar2(15) := 'PL/SQL';
    e long := 'Bu de�i�ken tipine koskoca bir kitap yaz�s� s��ar.';
begin
    DBMS_OUTPUT.PUT_LINE('A CHAR ' || A || ' ' || LENGTH(A));
    DBMS_OUTPUT.PUT_LINE('B NCHAR ' || B || ' ' ||LENGTH(B));
    DBMS_OUTPUT.PUT_LINE('C VARCHAR2 ' || C || ' ' || LENGTH(C));
    DBMS_OUTPUT.PUT_LINE('D NVARCHAR2 ' || D || ' ' || LENGTH(D));
    DBMS_OUTPUT.PUT_LINE('E LONG ' || E || ' ' || LENGTH(E));
end;

SELECT ROWID, EMPNO, ENAME FROM EMP;
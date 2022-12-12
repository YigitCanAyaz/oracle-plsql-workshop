-- table based records

declare
    emp_rec emp%rowtype;
begin
    -- tek bir kayýt okumazsa hata verir (cursor kullanmazsak)
    select * into emp_rec from emp where rownum = 1;
    dbms_output.put_line(emp_rec.empno || ' ' || emp_rec.ename);
end;

desc emp;
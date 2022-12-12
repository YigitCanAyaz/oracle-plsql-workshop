-- cursor based records

declare
    cursor c_emp is select * from emp;
    c_rec c_emp%rowtype; -- bu record (rowtype)
    p_comm emp.comm%type; -- column based definition
begin
    open c_emp;
    loop
        fetch c_emp into c_rec;
        exit when c_emp%notfound;
        dbms_output.put_line(c_rec.empno || ' ' || c_rec.ename);
    end loop;
    close c_emp; -- kapamamýz gerekiyor
end;
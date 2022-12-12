create or replace procedure
    get_dname (p_deptno in dept.deptno%type, p_dname out dept.dname%type) is   
begin
    select dname into p_dname from dept where deptno = p_deptno;
    
exception
    when no_data_found then
        p_dname := null;
    
end;

declare
    cursor c_emp is select empno, ename, deptno from emp;
    r_emp c_emp%rowtype;
    wdname dept.dname%type;
begin
    -- get_dname(10, wdname);
    -- dbms_output.put_line('10 nolu bölümün adý = ' || wdname);
    -- get_dname(5, wdname);
    -- dbms_output.put_line('5 nolu bölümün adý = ' || wdname);
    
    /*
    open c_emp;
    loop 
        fetch c_emp into r_emp; -- cursor into record
        exit when c_emp%notfound; -- stop when there's no data
        get_dname(r_emp.deptno, wdname);
        dbms_output.put_line('Çalýþan no - adý - bölüm no - bölüm adý ' 
        || r_emp.empno || ' ' || r_emp.ename || ' ' || 
        r_emp.deptno || ' ' || wdname);
    end loop;
    close c_emp;
    */
    
    for i in c_emp loop
        get_dname(i.deptno, wdname);
        dbms_output.put_line('Çalýþan no - adý - bölüm no - bölüm adý ' 
        || r_emp.empno || ' ' || r_emp.ename || ' ' || 
        r_emp.deptno || ' ' || wdname);    
    end loop;
end;
create or replace function get_dname_f(p_deptno in dept.deptno%type) return varchar2 is

wdname dept.dname%type;

begin
    select dname into wdname from dept where deptno = p_deptno;
    
    return(wdname);
    
exception
    when no_data_found then
        return ('****');

end;

--------------------------------------------

select get_dname_f(5) from dual;

select ename, sal, deptno, get_dname_f(deptno) bolum_adi from emp;

---------------------------------------------

-- set serveroutput on;

declare
    cursor oku is select ename, sal, deptno from emp;
    r_oku oku%rowtype;
    wdname dept.dname%type;
begin
    open oku;
    loop
        fetch oku into r_oku;
        exit when oku%notfound;
        wdname := get_dname_f(r_oku.deptno);
        dbms_output.put_line(r_oku.ename || ' ' || r_oku.sal || ' ' || r_oku.deptno || ' ' || wdname);
    end loop;
    close oku;
end;
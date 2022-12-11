DECLARE
    TYPE c_list IS ARRAY(14) OF EMP.ENAME%TYPE;
    name_list c_list := c_list();
    sayac integer := 0;
BEGIN
    for x in (select ename from emp) loop
        name_list.extend;
        sayac := sayac + 1;
        name_list(sayac) := x.ename;
    end loop;
    
    for i in 1 .. name_list.count loop
        dbms_output.put_line(name_list(i));
    end loop;
END;

select count(*) from emp;
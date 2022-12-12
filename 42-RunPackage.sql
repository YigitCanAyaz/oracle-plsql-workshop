execute calisanlar.zam_yap(0.1);

select * from emp;

select calisanlar.bolum_adi(20) from dual;

select ename, deptno, calisanlar.bolum_adi(deptno) from emp

declare 
    cursor oku is select ename, sal, deptno, calisanlar.bolum_adi(deptno) bolum_adi from emp;

    r_oku oku%rowtype;
begin
    open oku;
    loop
        fetch oku into r_oku;
        exit when oku%notfound;
        dbms_output.put_line(r_oku.ename || ' ' || r_oku.sal || ' ' || r_oku.deptno || ' - ' || r_oku.bolum_adi); 
    end loop;
    close oku;
end;
declare
    v_empno emp.empno%type;
    v_ename emp.ename%type;
    a varchar(3);
    c number;
    my_errcode number;
    my_errmesaj varchar2(32000);
begin
    -- select empno, ename into v_empno, v_ename from emp where empno = -5;
    
    -- select empno, ename into v_empno, v_ename from emp;
    
    -- c := 15 / 0;
    
    -- insert into emp(empno, ename) values (7839, 'alp');
    
    -- insert into emp (empno) values ('JSH');
    
    -- c := 'jdsksdk';
    
    a := 'ABCD';

    exception 
        when no_data_found then
            dbms_output.put_line('kayýt bulunamadý');
        when too_many_rows then
            dbms_output.put_line('birden fazla kayýt okundu');
        when zero_divide then 
            dbms_output.put_line('Sýfýrla bölme yapýlamaz');
        when dup_val_on_index then
            update emp set ename = 'Alp' where empno = 7839;
            dbms_output.put_line(sql%rowcount || ' tane kayýt update edildi');
        when invalid_number then
            dbms_output.put_line('Sayýsal alana string deðer girilemez...');
        when value_error then
            dbms_output.put_line('Alan uyuþmazlýðý');
        when others then -- else
            my_errcode := sqlcode;
            my_errmesaj := sqlerrm;
            dbms_output.put_line('Hata Kodu = ' || my_errcode);
            dbms_output.put_line('Hata Mesajý = ' || my_errmesaj);           
end;
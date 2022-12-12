create or replace package body calisanlar as
    procedure zam_yap(p_zamorani in number) is
    
    begin
        update emp set sal = sal + (sal * p_zamorani);
        commit;
    end zam_yap;
    
    function bolum_adi(p_deptno dept.deptno%type) return varchar2 is
    wdname dept.dname%type;
    begin
        select dname into wdname from dept where deptno = p_deptno;
        return wdname;
    exception
        when no_data_found then
            return ('Bölüm ismi bulunamadý');
    end bolum_adi;
    
end calisanlar;
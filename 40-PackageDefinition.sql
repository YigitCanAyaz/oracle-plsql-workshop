-- calisanlara zam
-- package tanimi
create or replace package calisanlar as
    procedure zam_yap(p_zamorani in number);
    function bolum_adi(p_deptno dept.deptno%type) return varchar2; --departman ismi dondurecek
end calisanlar;

declare
    sonuc number;
    ne varchar2(15);
    -- procedure geçiçi kaydolacak çünkü pl/sql kod bloðu içerisinde
    procedure alan (x in number, y in number, z out number, alanCevre in out varchar2) is
    begin
        If alanCevre = 'A' then
            z := x * y;
            alanCevre := 'alan';
        Elsif alanCevre = 'C' then
            z := 2 * (x + y);
            alanCevre := 'Cevre';
        end if;
    end;
begin
    ne := 'A';
    alan(5, 6, sonuc, ne);
    dbms_output.put_line(ne || ' : ' || sonuc);
    
    ne := 'C';
    alan(5, 6, sonuc, ne);
    dbms_output.put_line(ne || ' : ' || sonuc);
end;

-- Kalýcý kaydetmek istiyorsak
/*
create or replace procedure alan (x in number, y in number, z out number, alanCevre in out varchar2) is
begin
    If alanCevre = 'A' then
        z := x * y;
        alanCevre := 'alan';
    Elsif alanCevre = 'C' then
        z := 2 * (x + y);
        alanCevre := 'Cevre';
    end if;
end;
*/
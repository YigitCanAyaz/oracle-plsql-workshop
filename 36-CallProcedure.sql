-- parametre g�nderme metodlar�

create or replace procedure silindir_hacmi(r in number, h in number, p_sonuc out number) is
    wsonuc number;
    pi constant number := 3.1415;
begin
    wsonuc := pi * r * r * h;
    p_sonuc := wsonuc;
end;

---------------------------------------------------------
declare
    gelen_sonuc number;
begin
    -- silindir_hacmi(4, 6, gelen_sonuc); s�ras�yla
    -- silindir_hacmi(r => 4, h => 6, p_sonuc => gelen_sonuc); -- farkl� parametre �a��rma �ekli
    silindir_hacmi(4, 6, p_sonuc => gelen_sonuc);
    dbms_output.put_line('Yar��ap� 4 ve y�klekli�i 6 olan bir dik silindirin hacmi = ' || gelen_sonuc);
end;
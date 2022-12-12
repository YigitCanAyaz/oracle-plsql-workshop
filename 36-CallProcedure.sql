-- parametre gönderme metodlarý

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
    -- silindir_hacmi(4, 6, gelen_sonuc); sýrasýyla
    -- silindir_hacmi(r => 4, h => 6, p_sonuc => gelen_sonuc); -- farklý parametre çaðýrma þekli
    silindir_hacmi(4, 6, p_sonuc => gelen_sonuc);
    dbms_output.put_line('Yarýçapý 4 ve yüklekliði 6 olan bir dik silindirin hacmi = ' || gelen_sonuc);
end;
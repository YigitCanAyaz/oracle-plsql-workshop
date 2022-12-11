declare
    subtype isim IS CHAR(25); -- isim adýnda veri tipi tanýmladýk
    subtype mesaj is varchar2(100);
    uye isim; -- uye deðiþkeninin veri tipi isim oldu
    tebrik mesaj;
begin
    uye := 'Sayýn üyemiz';
    tebrik := 'PL/SQL Dünyasýna hoþgeldiniz.';
    
    dbms_output.put_line('Merhaba ' || uye || tebrik);
end;
declare
    subtype isim IS CHAR(25); -- isim ad�nda veri tipi tan�mlad�k
    subtype mesaj is varchar2(100);
    uye isim; -- uye de�i�keninin veri tipi isim oldu
    tebrik mesaj;
begin
    uye := 'Say�n �yemiz';
    tebrik := 'PL/SQL D�nyas�na ho�geldiniz.';
    
    dbms_output.put_line('Merhaba ' || uye || tebrik);
end;
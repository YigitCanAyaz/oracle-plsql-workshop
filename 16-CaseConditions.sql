-- 1 ile 9 arası sayı üret
-- çift mi tek mi bast

declare
    rastgele_sayi number(5);
begin
    rastgele_sayi := dbms_random.value(1,9) * 100; -- tam sayı olarak eşitler
    
    case mod(rastgele_sayi, 2)
        when 0 then dbms_output.put_line(rastgele_sayi || ' sayı çift');
        when 1 then dbms_output.put_line(rastgele_sayi || ' sayı tek');
        else dbms_output.put_line('bu kısma düşmesi imkansız');
    end case;
end;
-- 1 ile 9 aras� say� �ret
-- �ift mi tek mi bast

declare
    rastgele_sayi number(5);
begin
    rastgele_sayi := dbms_random.value(1,9) * 100; -- tam say� olarak e�itler
    
    case mod(rastgele_sayi, 2)
        when 0 then dbms_output.put_line(rastgele_sayi || ' say� �ift');
        when 1 then dbms_output.put_line(rastgele_sayi || ' say� tek');
        else dbms_output.put_line('bu k�sma d��mesi imkans�z');
    end case;
end;
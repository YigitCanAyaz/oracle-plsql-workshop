-- table operat�r� ile varray kullan�m� (select)

declare
    aile isim_listesi := isim_listesi();
begin
    aile.extend(6);
    aile(1) := 'Mehmet';
    aile(2) := 'Yi�it';
    aile(3) := 'Can';
    aile(4) := 'Ayaz';
    aile(5) := 'Deniz';
    aile(6) := 'Mustafa';
    
    -- COLUMN_VALUE => COLUMN DE�ER�NE ER��MEK ���N
    FOR I IN (SELECT COLUMN_VALUE aile_ismi from table(aile) order by aile_ismi) LOOP
        dbms_output.put_line(I.aile_ismi);
    END LOOP;
end;
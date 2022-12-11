-- veritabanýnda dizi oluþturmak
create or replace type isim_listesi IS VARRAY(10) OF VARCHAR2(100);

-- pl/sql'de dizi oluþturmak

declare
    -- type isim_listesi IS VARRAY(10) OF VARCHAR2(100);
    Aile isim_listesi := isim_listesi(); -- Kurucu Metod (Constructor)
begin
    aile.extend(5); -- 5 tane deðer gireceðiz
    -- aile.extend; -- 1 tane item giricez devamýnda demek
    
    aile(1) := 'Yiðit';
    aile(2) := 'Bilge';
    aile(3) := 'Ayþe';
    aile(4) := 'Mustafa';
    aile(5) := 'Demir';
    
    dbms_output.put_line('Dizinin boyutu ' || aile.limit); -- length
    -- EXISTS, LIMIT, FIRST, LAST, NEXT, TRIM (SUBSTRING), DELETE
    
    for I IN 1 .. aile.count LOOP
    dbms_output.put_line(I || ' Deðer: ' || aile(I));
    
    end loop;
end;
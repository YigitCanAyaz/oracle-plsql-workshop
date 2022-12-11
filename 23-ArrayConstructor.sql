declare
    type dersler is varray(5) of varchar(25);
    type sureler is varray(5) of integer;
    
    DERS Dersler;
    SURE Sureler;
    
    toplam integer;
begin
    Ders := Dersler('SQL Dersleri', 'PL/SQL Dersleri', 'DBA Dersleri', 'Forms Dersleri', 'Reports Dersleri');
    sure := Sureler('7', '9', '10', '12', '8'); -- constructor ile deðer tanýmlama
    
    toplam := ders.count;
    
    for I IN 1 .. TOPLAM loop
        DBMS_OUTPUT.PUT_LINE('Ders ' || I || ' ' || Ders(I) || ' Süre ' || Sure(I));
    end loop;
end;
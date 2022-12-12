declare
    -- type dizi is varray(n) as date; array tanımlama
    
    type kitaplar is record (
        ad varchar2(100),
        yazar varchar2(30),
        konu varchar2(50),
        isbn number,
        yayinEvi varchar2(40),
        kitpa_ici bfile
    );
    
    kitap1 kitaplar;
    kitap2 kitaplar;
    
    procedure yaz(kitap kitaplar, sayi number) is
    begin
        dbms_output.put_line(kitap.ad || ' ' || sayi);
        dbms_output.put_line(kitap.yazar);
        dbms_output.put_line(kitap.konu);
        dbms_output.put_line(kitap.isbn);
        dbms_output.put_line(kitap.yayinEvi);
    end;
begin
    kitap1.ad := 'SQL Dersleri';
    kitap1.yazar := 'YCA';
    kitap1.konu := 'SQL';
    kitap1.isbn := 123123123;
    kitap1.yayinEvi := 'Udemy';
    
    yaz(kitap1, 1);
end;
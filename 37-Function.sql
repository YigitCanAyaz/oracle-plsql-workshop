create or replace function hipotenus (a in number, b in number) return number is

sonuc number;

begin
    sonuc := a * a + power(b, 2);
    sonuc := sqrt(sonuc);
    return(sonuc);
end;

---------------------------------------

select hipotenus(3, 4) from dual;
select hipotenus(6, 9) from dual;

begin
    dbms_output.put_line(hipotenus(3, 4));
end;
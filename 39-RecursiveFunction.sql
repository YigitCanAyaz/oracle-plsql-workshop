create or replace function factorial(x number) return number is

f number;

begin
    IF x  = 0 then 
        f:= 1;
    else 
        f := x * factorial(x - 1);
    end if;
    return f;
end;

select factorial(5) from dual;

----------------------------------------

declare
    sonuc number;
    n number;
begin
    n := 5;
    sonuc := factorial(n);
    dbms_output.put_line(sonuc);
end;

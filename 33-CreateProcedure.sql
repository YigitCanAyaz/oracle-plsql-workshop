-- replace yazarsak duplace olmaz override olur
create or replace procedure ilk_proc
is

begin
    dbms_output.put_line('Ben Stored, StandAlone bir prosedürüm. Buyrun beni neden çağırdınız?');
end;

exec ilk_proc; -- execute procedure

-- pl/sql kod bloğunda çalıştırmak
begin
    ilk_proc;
end;
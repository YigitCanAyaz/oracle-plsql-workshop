-- replace yazarsak duplace olmaz override olur
create or replace procedure ilk_proc
is

begin
    dbms_output.put_line('Ben Stored, StandAlone bir prosed�r�m. Buyrun beni neden �a��rd�n�z?');
end;

exec ilk_proc; -- execute procedure

-- pl/sql kod blo�unda �al��t�rmak
begin
    ilk_proc;
end;
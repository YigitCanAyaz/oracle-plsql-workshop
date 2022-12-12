-- taking query as a parameter
create or replace procedure dc_ddl(p_query clob) is

begin
    execute immediate p_query; -- komutu runliyor (ddl) ddl komutlarini calistirir
end;

execute dc_ddl('create table deneme (aa number, bb varchar2(50), cc date)');

execute dc_ddl('drop table deneme');

----------------------------------

declare
    wquery clob;
begin
    wquery := 'create table deneme (aa number, bb varchar2(50), cc date)';
    dc_ddl(wquery);
end;

declare
    wquery clob;
begin
    wquery := 'drop table deneme';
    dc_ddl(wquery);
end;
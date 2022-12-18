-- create ddl event trigger

create table ddl_log(
    neyapildi varchar2(30),
    hangisemada varchar2(30),
    nesneismi varchar2(30),
    kimyapti varchar2(30),
    nezaman date
);

select * from ddl_log;

-- trigger

create or replace trigger ddl_trg
before create or alter or drop
on schema

declare

begin
    insert into ddl_log(neyapildi, hangisemada, nesneismi, kimyapti, nezaman)
    select ora_sysevent, ora_dict_obj_owner, ora_dict_obj_name, user, sysdate from dual;
end;

-- example

create table deneme (aa number, bb varchar2(30));

alter table deneme add cc date;

drop table deneme;

select * from ddl_log;


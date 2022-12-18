-- database level ddl log

-- yetki verme
-- grant dba to yigit;

create table dbddl_log(
    neyapildi varchar2(30),
    hangisemada varchar2(30),
    nesneismi varchar2(30),
    kimyapti varchar2(30),
    nezaman date
);

create or replace trigger dbddl_trg
before create or alter or drop
on database

declare

begin
    insert into dbddl_log(neyapildi, hangisemada, nesneismi, kimyapti, nezaman)
    select ora_sysevent, ora_dict_obj_owner, ora_dict_obj_name, user, sysdate from dual;
end;

show user;

-- alter trigger ddl_trg disable;
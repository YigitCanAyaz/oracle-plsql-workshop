-- after trigger (after update)
-- emp tablosundaki herhangi bir kayit update edildiignde baska bir tabloya emp tablosu update edilid
-- bilgisini, update eden kiþi ve zaman bilgisini kaydetsin

create table emp_log2 (
    islem varchar2(250),
    kim varchar2(30),
    nezaman date,
    wempno number(6)
);

-- trigger

create or replace trigger emp_trg2
after update on emp
for each row

declare 

begin
    insert into emp_log2(islem, kim, nezaman, wempno) values
    (
        'Emp tablosu update edildi', user, sysdate, nvl(:new.empno, :old.empno)
    );
end;

-- example

update emp set comm = nvl(comm, 0) + 3000 where empno = 7788; 

select * from emp_log2 -- wempno => hangi empnumaralý deðiþti
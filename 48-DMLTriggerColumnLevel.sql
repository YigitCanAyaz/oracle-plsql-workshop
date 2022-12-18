-- herhangi bir kisi jobý manager olarak degistirdiginde comm alanini otomatik olarak 1500 maasi olsun
-- column level trigger

create or replace trigger terfi
before update of job on emp
for each row
when (new.job = 'MANAGER')

declare

begin
    :new.comm := 1500;
end;

select * from emp;

update emp set job = 'MANAGER' where ename = 'SMITH';

update emp set job = 'CLERK' where ename = 'TURNER';
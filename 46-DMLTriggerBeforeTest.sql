-- test

insert into emp(empno,ename,job,sal) values (9999, 'deneme', 'pl/sql', 1234);

update emp set sal = 4567 where empno = 9999;

delete from emp where empno = 9999;

desc emp;

select * from emp_log;
-- trigger
create or replace trigger emp_trg
before insert or update or delete on emp
for each row

declare
    wbilgisayar emp_log.bilgisayar%type;
    wip_addr emp_log.ip_addr%type;
begin

    select sys_context('userenv', 'host'), 
           sys_context('userenv', 'ip_address') into wbilgisayar, wip_addr from dual;
    if inserting then 
        insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ip_addr, empno, ename, job,
        mgr, hiredate, sal, comm, deptno) values (
            emp_seq.nextval, 'ins', user, sysdate, wbilgisayar, wip_addr, :new.empno, :new.ename, 
            :new.job, :new.mgr, :new.hiredate, :new.sal, :new.comm, :new.deptno);
    end if;
    
    if updating then 
        -- bu durumda hem eski bilgiyi hem de yeni bilgiyi saklamamiz gerekiyor
        insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ip_addr, empno, ename, job,
        mgr, hiredate, sal, comm, deptno) values (
            emp_seq.nextval, 'upd1', user, sysdate, wbilgisayar, wip_addr, :new.empno, :new.ename, 
            :new.job, :new.mgr, :new.hiredate, :new.sal, :new.comm, :new.deptno);
            
        insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ip_addr, empno, ename, job,
        mgr, hiredate, sal, comm, deptno) values (
            emp_seq.nextval, 'upd2', user, sysdate, wbilgisayar, wip_addr, :old.empno, :old.ename, 
            :old.job, :old.mgr, :old.hiredate, :old.sal, :old.comm, :old.deptno);
    end if;
    
    if deleting then
        -- old bilgisi saklamaliyiz
        insert into emp_log(sirano, neyapti, kim, nezaman, bilgisayar, ip_addr, empno, ename, job,
        mgr, hiredate, sal, comm, deptno) values (
            emp_seq.nextval, 'del', user, sysdate, wbilgisayar, wip_addr, :old.empno, :old.ename, 
            :old.job, :old.mgr, :old.hiredate, :old.sal, :old.comm, :old.deptno);
    end if;
end;
-- dml trigger (before)
-- logging

create table emp_log (
    sirano number,
    neyapti varchar(4),
    kim varchar2(30),
    nezaman date,
    bilgisayar varchar2(50),
    ip_addr varchar2(15),
    EMPNO NUMBER(4),    
    ENAME VARCHAR2(10), 
    JOB VARCHAR2(9),  
    MGR NUMBER(4), 
    HIREDATE DATE,         
    SAL NUMBER(7,2),  
    COMM NUMBER(7,2),  
    DEPTNO NUMBER(2) 
);

-- sequence > identity
create sequence emp_eq
minvalue 1
maxvalue 99999999
increment by 1
start with 1
nocycle
cache 20;
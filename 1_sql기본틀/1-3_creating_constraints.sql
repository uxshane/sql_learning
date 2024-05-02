--dept ���̺� �ε����� ���� ����
create unique index dept_pk on dept(deptno);
alter table dept add constraint dept_pk primary key(deptno);

--emp ���̺� �ε����� ���� ����
create unique index emp_pk on emp(empno);
alter table emp add constraint emp_pk primary key(empno);
create unique index emp_ename_uk on emp(ename);
alter table emp add constraint emp_ename_uk unique(ename);

--bonus ���̺� �ε����� ���� ����
create unique index bonus_pk on bonus(ename);
alter table bonus add constraint bonus_pk primary key(ename);

--salgrade ���̺� �ε����� ���� ����
create unique index salgrade_pk on salgrade(grade);
alter table salgrade add constraint salgrade_pk primary key(grade);





























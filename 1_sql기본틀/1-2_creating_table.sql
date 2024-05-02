--emp 테이블 생성
create table emp
(empno number(4) not null,
 ename varchar2(10), 
 job varchar2(9),
 mgr number(4),
 hiredate date,
 sal number(7,2),
 comm number(7,2),
 deptno number(2));
 
--emp 테이블 데이터 입력
insert into emp values (7369, 'SMITH', 'CLERK', 7902, date'1980-12-17', 800, null, 20);
insert into emp values (7499, 'ALLEN', 'SALESMAN', 7698, date'1981-02-20', 1600, 300, 30);
insert into emp values (7521, 'WARD', 'SALESMAN', 7698, date'1981-02-22', 1250, 500, 30);
insert into emp values (7566, 'JONES', 'MANAGER', 7839, date'1981-04-02', 2975, null, 20);
insert into emp values (7654, 'MARTIN', 'SALESMAN', 7698, date'1981-09-28', 1250, 1400, 30);
insert into emp values (7698, 'BLAKE', 'MANAGER', 7839, date'1981-06-09', 2450, null, 10);
insert into emp values (7782, 'CLARK', 'MANAGER', 7839, date'1981-06-09', 2450, null, 10);
insert into emp values (7788, 'SCOTT', 'ANALYST', 7566, date'1987-04-19', 3000, null, 20);
insert into emp values (7839, 'KING', 'PRESIDENT', null, date'1981-11-17', 5000, null, 10);
insert into emp values (7844, 'TURNER', 'SALESMAN', 7698, date'1981-09-08', 1500, 0, 30);
insert into emp values (7876, 'ADAMS', 'CLERK', 7788, date'1987-05-23', 1100, null, 20);
insert into emp values (7900, 'JAMES', 'CLERK', 7698, date'1981-12-03', 950, null, 30);
insert into emp values (7902, 'FORD', 'ANALYST', 7566, date'1981-12-03', 3000, null, 20);
insert into emp values (7934, 'MILLER', 'CLERK', 7782, date'1981-01-23', 1300, null, 10);

--dept 테이블 생성
create table dept
(deptno number(2),
 dname varchar2(14),
 loc varchar2(13));
 
 --dept 테이블 데이터 입력
insert into dept values (10, 'ACCOUNTING', 'NEW YORK');
insert into dept values (20, 'RESEARCH', 'DALLAS');
insert into dept values (30, 'SALES', 'CHICAGO');
insert into dept values (40, 'OPERATIONS', 'BOSTON');

--bonus 테이블 생성
create table bonus
(ename varchar2(10),
 job varchar2(9),
 sal number,
 comm number);
 
--salgrade 테이블 생성
create table salgrade
(grade number,
 losal number,
 hisal number);

--salgrade 테이블 데이터 입력
insert into salgrade values (1, 700, 1200);
insert into salgrade values (2, 1201, 1400);
insert into salgrade values (3, 1401, 2000);
insert into salgrade values (4, 2001, 3000);
insert into salgrade values (5, 3001, 9999);

commit;
















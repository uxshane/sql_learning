merge into emp a
using (select 7788 as empno,
              'SCOTT' as ename,
              'ANALYST' as job,
              20 as default_deptno
              from dual) b
on (a.empno = b.empno)
when matched then
    update set a.ename = b.ename,
               a.job = b.job
when not matched then
    insert (a.empno, a.ename, a.job, a.deptno)
    values (b.empno, b.ename, b.job, b.default_deptno);
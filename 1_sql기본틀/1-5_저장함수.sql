create or replace function get_dept_employee_count(a_deptno number) 
    return number
is
    v_cnt number;
begin
    select count(*)
        into v_cnt
        from emp
        where deptno = a_deptno;
        
        return v_cnt;
exception when others then
    DBMS_OUTPUT.PUT_LINE('���� ���α׷� ���� �߻�' || CHR(10) || SQLERRM);
    return -1;
end;



select deptno, dname, loc, get_dept_employee_count(deptno) AS employee_count
from dept;
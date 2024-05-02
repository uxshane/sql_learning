create or replace procedure register_employee(
        a_empno number,
        a_ename varchar2,
        a_job   varchar2,
        a_rslt_out  out boolean,
        a_msg_out   out varchar2)
is
    c_default_deptno constant number := 20;
    v_cnt number;
begin
    select count(*)
        into v_cnt
        from emp
        where empno = a_empno;
        
    if v_cnt > 0 then
        update emp
            set ename = a_ename,
                job = a_job
            where ename = a_ename;
        
        a_msg_out := '��� "' || a_ename || '"�� ������ ����Ǿ����ϴ�';
    else
        insert into emp(empno, ename, job, deptno)
        values (a_empno, a_ename, a_job, c_default_deptno);
        
        a_msg_out := '���Ի��"' || a_ename || '"��(��) ��ϵǾ����ϴ�';
    end if;
    a_rslt_out := true;

exception when others then
    rollback;
    a_msg_out := '���� ���α׷� ���� �߻�' || CHR(10) || SQLERRM;
    a_rslt_out := false;
end;



--���� ���ν����� �͸� ����
declare
    a_rslt_out boolean;
    a_msg_out varchar2(1000);
begin
    register_employee(7788, 'SCOTT', 'ANALYST', a_rslt_out, a_msg_out);
    DBMS_OUTPUT.PUT_LINE(a_msg_out);
    if a_rslt_out = true then
        DBMS_OUTPUT.PUT_LINE('��� ����!');
        commit;
    else
        DBMS_OUTPUT.PUT_LINE('��� ����!');
        rollback;
    end if;
end;







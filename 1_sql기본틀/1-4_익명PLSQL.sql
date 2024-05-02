SET SERVEROUTPUT ON;
--�͸� PL/SQL

declare
    --���
    c_default_deptno constant number := 20; -- �⺻ �μ��ڵ�
    
    --ó�� ��� ��� ������ ������ ������ ���� ����
    v_empno number(4)   :=  9000;   --ó����� ���
    v_ename varchar2(10)    :=  'ȫ�浿';    --ó����� �����
    v_job   varchar2(9) :=  'CLERK';  --ó����� ����� ����
    
    --�߰� ����
    v_cnt   number; --�Ǽ�
begin
    select count(*)
        into v_cnt
        from emp
        where empno = v_empno;
        
    if v_cnt > 0 then
        update emp
            set ename = v_ename,
                job = v_job
            where empno = v_empno;    
        DBMS_OUTPUT.PUT_LINE('��� "' || v_ename || '"�� ������ ����Ǿ����ϴ�.');
    else
        insert into emp(empno, ename, job, deptno)
        values (v_empno, v_ename, v_job, c_default_deptno);
        DBMS_OUTPUT.PUT_LINE('���Ի��"' || v_ename || '"��(��) ��ϵǾ����ϴ�.');
    end if;
    commit;
exception when others then
    rollback;
    DBMS_OUTPUT.PUT_LINE('���� ���α׷� ���� �߻�' || CHR(10) || SQLERRM);
end;
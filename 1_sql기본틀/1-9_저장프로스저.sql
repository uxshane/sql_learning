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
        
        a_msg_out := '사원 "' || a_ename || '"의 정보가 변경되었습니다';
    else
        insert into emp(empno, ename, job, deptno)
        values (a_empno, a_ename, a_job, c_default_deptno);
        
        a_msg_out := '신입사원"' || a_ename || '"이(가) 등록되었습니다';
    end if;
    a_rslt_out := true;

exception when others then
    rollback;
    a_msg_out := '응용 프로그램 오류 발생' || CHR(10) || SQLERRM;
    a_rslt_out := false;
end;



--저장 프로시저의 익명 실행
declare
    a_rslt_out boolean;
    a_msg_out varchar2(1000);
begin
    register_employee(7788, 'SCOTT', 'ANALYST', a_rslt_out, a_msg_out);
    DBMS_OUTPUT.PUT_LINE(a_msg_out);
    if a_rslt_out = true then
        DBMS_OUTPUT.PUT_LINE('등록 성공!');
        commit;
    else
        DBMS_OUTPUT.PUT_LINE('등록 실패!');
        rollback;
    end if;
end;







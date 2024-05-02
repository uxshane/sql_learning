SET SERVEROUTPUT ON;
--익명 PL/SQL

declare
    --상수
    c_default_deptno constant number := 20; -- 기본 부서코드
    
    --처리 대상 사원 정보를 값으로 가지는 변수 정의
    v_empno number(4)   :=  9000;   --처리대상 사번
    v_ename varchar2(10)    :=  '홍길동';    --처리대상 사원명
    v_job   varchar2(9) :=  'CLERK';  --처리대상 사원의 업무
    
    --추가 변수
    v_cnt   number; --건수
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
        DBMS_OUTPUT.PUT_LINE('사원 "' || v_ename || '"의 정보가 변경되었습니다.');
    else
        insert into emp(empno, ename, job, deptno)
        values (v_empno, v_ename, v_job, c_default_deptno);
        DBMS_OUTPUT.PUT_LINE('신입사원"' || v_ename || '"이(가) 등록되었습니다.');
    end if;
    commit;
exception when others then
    rollback;
    DBMS_OUTPUT.PUT_LINE('응용 프로그램 오류 발생' || CHR(10) || SQLERRM);
end;
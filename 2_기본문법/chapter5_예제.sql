--일반적인 사용자 정의 식별자
-- 예약어 사용 불가능
declare
    c_pi    constant number := 3.14;
    emp_id  varchar2(30);
    v_2_by_2    number;
    v_ten$  number; --$사용
    v_seq#  number; --#사용
begin
    null;
end;

--큰따옴표를 사용한 사용자 정의 식별자(변수명)
--변수명을 큰따옴표를 사용해서 디테일하게 정의해도 되지만,
--갖다쓰는 사람 입장에서는 여간 귀찮은 일이다.
set serveroutput on;
declare
    v_num   number;
    "v_num" number;
    "공백 포함 변수명" number;
    "v_~!@#$%^&*()_+"   number;
    "BEGIN" number;
    
    function "square number"(a_num number)
    return number is
    begin
        return a_num * a_num;
    end;
    
begin
    "v_num"     := 10;
    v_num       := 20;
    "공백 포함 변수명" := 30;
    "v_~!@#$%^&*()_+" := 40;
    "BEGIN" := 50;
    DBMS_OUTPUT.PUT_LINE("v_num");
    DBMS_OUTPUT.PUT_LINE(v_num);
    DBMS_OUTPUT.PUT_LINE(V_NUM);
    DBMS_OUTPUT.PUT_LINE("V_NUM");
    DBMS_OUTPUT.PUT_LINE("공백 포함 변수명");
    DBMS_OUTPUT.PUT_LINE("v_~!@#$%^&*()_+");
    DBMS_OUTPUT.PUT_LINE("BEGIN");
    DBMS_OUTPUT.PUT_LINE("square number"(10));
end;

--식별자명 충돌 시의 유효범위
--아래의 예시는 inner블록의 v_num은 밖에서 인식하지 못한다.
set serveroutput on;
declare
    v_num number := 0;
begin
    declare
        v_num number;
    begin
        v_num := 4;
        DBMS_OUTPUT.PUT_LINE('v_num : ' || v_num);
    end;
    v_num := v_num + 1;
    DBMS_OUTPUT.PUT_LINE('v_num : ' || v_num);
end;

--레이블을 사용한 식별자 참조
<<OUTER_BLOCK>>
declare
    v_num number := 0;
begin
    declare
        v_num number;
    begin
        OUTER_BLOCK.v_num := 4;
        v_num := 1;
    end;
    DBMS_OUTPUT.PUT_LINE('v_num : ' || v_num);
end;

-- 5-6 서브프로그램에서의 식별자 유효 범위
create or replace procedure check_salary(a_empno number)
is
    v_name varchar2(10);
    v_num number;
    
    function check_bonus(a_empno number) return boolean
    is
        v_num number;
        begin
            select comm
            into v_num
            from emp
            where empno = a_empno;
            
            DBMS_OUTPUT.PUT_LINE(v_name || '의 커미션: ' || v_num);
        
            if check_salary.v_num < v_num then
                return false;
            else
                return true;
            end if;
        end;

begin
    select ename, sal
    into v_name, v_num
    from emp
    where empno = a_empno;
    
    if check_bonus(a_empno) then
        DBMS_OUTPUT.PUT_LINE('사원 ' || v_name || '의 커미션이 과도합니다');
    else
        DBMS_OUTPUT.PUT_LINE('사원 ' || v_name || '의 커미션이 정상입니다');
    end if;
end;

--check_salary 프로시저 실행
set serveroutput on;
begin
    check_salary(7369);
end;



































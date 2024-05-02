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
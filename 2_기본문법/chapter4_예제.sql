-- 4-1 PL/SQL 프로그램의 기본적인 구성요소를 모두 갖춘 예제
declare
    --v_str이라는 100bytes 크기의 문자를 받는 변수 선언.
    v_str varchar2(100);
begin
    -- ':='이라는 대입 연산자를 사용해서 변수에 문자값을 넣어줌.
    v_str := 'Hello, Minkyu!';
    -- DBMS_OUTPUT.PUT_LINE은 java에서 system.out.println이라 생각하면 됌.
    DBMS_OUTPUT.PUT_LINE(v_str);
exception when others then 
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;

-- 4-2 PL/SQL 블록 구조의 중첩
declare
    v_str varchar2(100);
    v_num number := 50;
begin
    v_str := 'Hello, kim!';
    DBMS_OUTPUT.PUT_LINE(v_str);
    
    --중첩1
    begin
        v_num := v_num + 10;
    end;
    DBMS_OUTPUT.PUT_LINE('v_num = ' || v_num);
    
    --중첩2
    declare
        v_num2 number;
    begin
        v_num2 := 3;
        v_num := v_num * v_num2;
        
        if v_num >= 100 then
            --중첩3
            begin
                v_num := mod(v_num, 100);
            end;
        end if;
    end;
    DBMS_OUTPUT.PUT_LINE('v_num = ' || v_num);
exception when others then
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;

--4-5 placeholder용도의 null문
begin
    null;
end;

--4-8 저장 서브프로그램
create or replace function square(a_num number) return number
    is
    begin
        return a_num * a_num;
    end;

--4-9 익명 PL/SQL
declare
    v_num number;
begin
    v_num := square(10);
    DBMS_OUTPUT.PUT_LINE(square(12));
end;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
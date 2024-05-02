-- 4-1 PL/SQL ���α׷��� �⺻���� ������Ҹ� ��� ���� ����
declare
    --v_str�̶�� 100bytes ũ���� ���ڸ� �޴� ���� ����.
    v_str varchar2(100);
begin
    -- ':='�̶�� ���� �����ڸ� ����ؼ� ������ ���ڰ��� �־���.
    v_str := 'Hello, Minkyu!';
    -- DBMS_OUTPUT.PUT_LINE�� java���� system.out.println�̶� �����ϸ� ��.
    DBMS_OUTPUT.PUT_LINE(v_str);
exception when others then 
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;

-- 4-2 PL/SQL ��� ������ ��ø
declare
    v_str varchar2(100);
    v_num number := 50;
begin
    v_str := 'Hello, kim!';
    DBMS_OUTPUT.PUT_LINE(v_str);
    
    --��ø1
    begin
        v_num := v_num + 10;
    end;
    DBMS_OUTPUT.PUT_LINE('v_num = ' || v_num);
    
    --��ø2
    declare
        v_num2 number;
    begin
        v_num2 := 3;
        v_num := v_num * v_num2;
        
        if v_num >= 100 then
            --��ø3
            begin
                v_num := mod(v_num, 100);
            end;
        end if;
    end;
    DBMS_OUTPUT.PUT_LINE('v_num = ' || v_num);
exception when others then
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;

--4-5 placeholder�뵵�� null��
begin
    null;
end;

--4-8 ���� �������α׷�
create or replace function square(a_num number) return number
    is
    begin
        return a_num * a_num;
    end;

--4-9 �͸� PL/SQL
declare
    v_num number;
begin
    v_num := square(10);
    DBMS_OUTPUT.PUT_LINE(square(12));
end;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
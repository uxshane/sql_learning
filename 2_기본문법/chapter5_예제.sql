--�Ϲ����� ����� ���� �ĺ���
-- ����� ��� �Ұ���
declare
    c_pi    constant number := 3.14;
    emp_id  varchar2(30);
    v_2_by_2    number;
    v_ten$  number; --$���
    v_seq#  number; --#���
begin
    null;
end;

--ū����ǥ�� ����� ����� ���� �ĺ���(������)
--�������� ū����ǥ�� ����ؼ� �������ϰ� �����ص� ������,
--���پ��� ��� ���忡���� ���� ������ ���̴�.
set serveroutput on;
declare
    v_num   number;
    "v_num" number;
    "���� ���� ������" number;
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
    "���� ���� ������" := 30;
    "v_~!@#$%^&*()_+" := 40;
    "BEGIN" := 50;
    DBMS_OUTPUT.PUT_LINE("v_num");
    DBMS_OUTPUT.PUT_LINE(v_num);
    DBMS_OUTPUT.PUT_LINE(V_NUM);
    DBMS_OUTPUT.PUT_LINE("V_NUM");
    DBMS_OUTPUT.PUT_LINE("���� ���� ������");
    DBMS_OUTPUT.PUT_LINE("v_~!@#$%^&*()_+");
    DBMS_OUTPUT.PUT_LINE("BEGIN");
    DBMS_OUTPUT.PUT_LINE("square number"(10));
end;

--�ĺ��ڸ� �浹 ���� ��ȿ����
--�Ʒ��� ���ô� inner����� v_num�� �ۿ��� �ν����� ���Ѵ�.
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

--���̺��� ����� �ĺ��� ����
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

-- 5-6 �������α׷������� �ĺ��� ��ȿ ����
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
            
            DBMS_OUTPUT.PUT_LINE(v_name || '�� Ŀ�̼�: ' || v_num);
        
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
        DBMS_OUTPUT.PUT_LINE('��� ' || v_name || '�� Ŀ�̼��� �����մϴ�');
    else
        DBMS_OUTPUT.PUT_LINE('��� ' || v_name || '�� Ŀ�̼��� �����Դϴ�');
    end if;
end;

--check_salary ���ν��� ����
set serveroutput on;
begin
    check_salary(7369);
end;



































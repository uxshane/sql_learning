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
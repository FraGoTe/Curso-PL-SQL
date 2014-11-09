ppt[7]
DECLARE
	v_hiredate		DATE;		
	v_deptno		NUMBER(2) NOT NULL := 10;
	v_location		VARCHAR2(13) := 'Atlanta';
	c_comm			CONSTANT NUMBER := 1400; 
BEGIN
END;

DECLARE
  v_myName VARCHAR2(20);
BEGIN
 DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myName);
 v_myName := 'John';
 DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myName);
END;
/

DECLARE
 v_myName VARCHAR2(20):= 'John';
BEGIN
 v_myName := 'Steven';
 DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myName);
END; 
/

ppt[9]
DECLARE
    v_event VARCHAR2(15);
BEGIN
	v_event  := q'!Father's day!';
	DBMS_OUTPUT.PUT_LINE('3rd Sunday in June is :   '|| v_event );
	v_event  := q'[Mother's day]';
	DBMS_OUTPUT.PUT_LINE('2nd Sunday in May is :   '|| v_event );
END;
/

ppt[13]
set serveroutput on
declare
  v_myName_1 VARCHAR2(20):='John';
  v_myName_2 VARCHAR2(20) DEFAULT 'John';
begin
  dbms_output.put_line('v_myName_1='||v_myName_1);
  dbms_output.put_line('v_myName_2='||v_myName_2);
  v_myName_2:='Juan';
  dbms_output.put_line('v_myName_2='||v_myName_2);
end;

ppt[14]
DECLARE
  employee_id	NUMBER(6);
BEGIN
  SELECT	   employee_id
	  INTO		employee_id
	  FROM		employees
  WHERE 		last_name = 'Kochhar';
END;
/

ppt[21]
DECLARE
  v_emp_job				VARCHAR2(9);
  v_count_loop	   	BINARY_INTEGER := 0;
  v_dept_total_sal	NUMBER(9,2) := 0;
  v_orderdate		   DATE := SYSDATE + 7;
  c_tax_rate			CONSTANT NUMBER(3,2) := 8.25;
  v_valid			   BOOLEAN NOT NULL := TRUE;
begin
end;

ppt[30]
variable b_result number
begin
select count(*) into :b_result from tab;
end;
/
print b_result

ppt[31]
b_result
select * from tab where rownum=:b_result;

ppt[32]
variable b_emp_salary number
set autoprint on
declare
v_empno number(5):=&empno;
begin
 select salary into :b_emp_salary from employees where employee_id = v_empno;
end;
/


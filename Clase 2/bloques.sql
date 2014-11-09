---- BLOQUE ANONIMO
SET SERVEROUTPUT ON SIZE 5000

DECLARE
  --V_SALARY EMPLOYEES.SALARY%TYPE
  V_EMPLOYEE EMPLOYEES%ROWTYPE;
BEGIN  
  SELECT 
  * INTO V_EMPLOYEE
  FROM EMPLOYEES 
  WHERE EMPLOYEE_ID = 100;
  
  --V_SALARY := V_EMPLOYEE.SALARY;
  
  DBMS_OUTPUT.PUT_LINE('SALARY = ' || V_EMPLOYEE.SALARY);
  
  IF ( V_EMPLOYEE.SALARY < 1000 ) THEN
    DBMS_OUTPUT.PUT_LINE('LOW SALARY');
  ELSE
    DBMS_OUTPUT.PUT_LINE('BETTER SALARY');
  END IF;
END;
---- FIN BLOQUE ANONIMO
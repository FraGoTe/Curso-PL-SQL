SET AUTOPRINT ON SIZE 5000
---------------------------------------------
-- 1. Determining valid identifiers
---------------------------------------------
IGV CONSTANT NUMBER := 18;
EMPLOYEE_FIRST_NAME VARCHAR2(50);
EMPLOYEE_TMP EMPLOYEES%TYPE;
EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
SALARY EMPLOYEES.SALARY%TYPE := &SALARY;
---------------------------------------------
-- 2. Determining valid variable declarations
---------------------------------------------
C_IGV CONSTANT NUMBER := 18;
V_EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
V_SALARY EMPLOYEES.SALARY%TYPE := &SALARY;
---------------------------------------------
-- 3. Determining valid variable declarations within an anonymous block
---------------------------------------------
DECLARE
C_IGV CONSTANT NUMBER := 18;
V_EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
V_SALARY EMPLOYEES.SALARY%TYPE := &SALARY;
BEGIN
  SELECT 
  EMPLOYEE_ID INTO V_EMPLOYEE_ID
  FROM EMPLOYEES
  WHERE SALARY = V_SALARY
  AND ROWNUM < 2;
  
  DBMS_OUTPUT.PUT_LINE ('EMPLOYEE ID: ' || V_EMPLOYEE_ID );
END;
-----------------------------------------------------
-- 4. Using the %type attribute to declare variables
-----------------------------------------------------
V_EMPLOYEE EMPLOYEES%TYPE;
V_EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE;
V_SALARY EMPLOYEES.SALARY%TYPE := &SALARY;
-----------------------------------------------------
-- 5. Declaring and printing a bind variable
-----------------------------------------------------
VARIABLE B_EMPLOYEE_ID NUMBER

BEGIN
  SELECT 
  EMPLOYEE_ID INTO :B_EMPLOYEE_ID
  FROM EMPLOYEES
  WHERE ROWNUM < 2;
END;

/
PRINT B_EMPLOYEE_ID
-----------------------------------------------------
-- 6. Executing a PL/SQL block
-----------------------------------------------------
DECLARE
V_EMPLOYEE EMPLOYEES%ROWTYPE;
P_EMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE := &EMPLOYEE_ID;
BEGIN
  SELECT 
  * INTO V_EMPLOYEE
  FROM EMPLOYEES
  WHERE EMPLOYEE_ID = P_EMPLOYEE_ID
  AND ROWNUM < 2;
  
  IF ( V_EMPLOYEE.SALARY > 1000 ) THEN
    DBMS_OUTPUT.PUT_LINE ('GOOD SALARY!');
  ELSE
    DBMS_OUTPUT.PUT_LINE ('BAD SALARY!');
  END IF;
END;

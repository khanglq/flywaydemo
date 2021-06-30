CREATE OR REPLACE PROCEDURE TEST_PROC(emp_id IN NUMBER, emp_name OUT varchar2)
AS BEGIN
SELECT employee_name INTO emp_name FROM employee WHERE employee_id = emp_id;
END;
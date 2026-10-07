CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER) 
  RETURN VARCHAR2 
  IS
    v_salary employees.salary%TYPE;
    v_annual_sal NUMBER;
    v_tax NUMBER;
BEGIN
    -- Retrieve employee salary
    SELECT salary INTO v_salary
    FROM employees
    WHERE employee_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero.';
    END IF;

    -- Calculate metrics using previously built functions
    v_annual_sal := fn_annual_salary(v_salary);
    v_tax := fn_calculate_tax(v_salary);

    RETURN 'VALID | Annual Sal: ' || v_annual_sal || ' | Tax: ' || v_tax;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee ID does not exist.';
    WHEN OTHERS THEN
        RETURN 'ERROR: Payroll validation failed.';
END fn_validate_payroll;
/

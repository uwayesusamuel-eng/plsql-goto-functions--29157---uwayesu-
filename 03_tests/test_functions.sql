SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- TESTING FUNCTIONS ---');
    DBMS_OUTPUT.PUT_LINE('Annual Sal (5000): ' || fn_annual_salary(5000));
    DBMS_OUTPUT.PUT_LINE('Tax for 5000: ' || fn_calculate_tax(5000));
    DBMS_OUTPUT.PUT_LINE('Dept Name (10): ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept Name (999): ' || fn_dept_name(999));
END;
/

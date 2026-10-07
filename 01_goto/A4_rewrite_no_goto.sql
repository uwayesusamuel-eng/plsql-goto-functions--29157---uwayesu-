SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 7500;
BEGIN
    -- Rewritten using standard IF-ELSIF logic without GOTO
    IF v_salary < 4000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Bracket: LOW');
    ELSIF v_salary BETWEEN 4000 AND 10000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Bracket: MEDIUM');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Bracket: HIGH');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review process done cleanly.');
END;
/

SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 7500;
BEGIN
    IF v_salary < 4000 THEN
        GOTO low_sal;
    ELSIF v_salary BETWEEN 4000 AND 10000 THEN
        GOTO mid_sal;
    ELSE
        GOTO high_sal;
    END IF;

    <<low_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Bracket: LOW (Below 4,000)');
    GOTO finish;

    <<mid_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Bracket: MEDIUM (4,000 - 10,000)');
    GOTO finish;

    <<high_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Bracket: HIGH (Above 10,000)');
    GOTO finish;

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review process done.');
END;
/

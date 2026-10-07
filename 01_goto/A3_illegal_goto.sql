-- DEMONSTRATION OF ILLEGAL GOTO (Uncomment to see Oracle Error PLS-00375):
/*
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    GOTO inside_if; -- ERROR: Cannot jump into an IF block from outside!
    
    IF v_flag THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/

-- FIXED VERSION:
SET SERVEROUTPUT ON;

DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    IF v_flag THEN
        GOTO valid_label;
    END IF;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('Fixed: Jumped to a valid label outside the IF construct.');
END;
/

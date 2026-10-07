CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_monthly_salary IN NUMBER
) RETURN NUMBER 
  IS
    v_tax NUMBER := 0;
BEGIN
    IF p_monthly_salary <= 3000 THEN
        v_tax := 0;
    ELSIF p_monthly_salary <= 8000 THEN
        v_tax := p_monthly_salary * 0.15; -- 15%
    ELSE
        v_tax := p_monthly_salary * 0.30; -- 30%
    END IF;
    
    RETURN v_tax;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END fn_calculate_tax;
/  

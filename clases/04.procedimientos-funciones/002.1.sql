

CREATE OR REPLACE FUNCTION total_empleados RETURN NUMBER 
    IS
        total NUMBER;
    BEGIN
        SELECT COUNT(*) INTO total FROM empleados;
        RETURN total;
    END;
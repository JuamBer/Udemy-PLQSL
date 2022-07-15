CREATE OR REPLACE FUNCTION mayor_entre (x IN NUMBER, y IN NUMBER) RETURN NUMBER 
    IS

    BEGIN
        IF x > y THEN
            RETURN x;
        ELSE
            RETURN y;
        END IF;
    END;
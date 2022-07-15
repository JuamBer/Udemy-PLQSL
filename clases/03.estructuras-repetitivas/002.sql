set serveroutput on;

DECLARE 
    x NUMBER := 10;
BEGIN 

    LOOP
        x := x + 1;
        IF(x > 20) THEN EXIT; END IF;
        dbms_output.put_line( x );
    END LOOP;

END;
/
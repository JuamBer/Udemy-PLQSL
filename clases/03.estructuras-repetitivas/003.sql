set serveroutput on;

DECLARE 
    y NUMBER := 20;
BEGIN 

    WHILE y < 100 LOOP
        y := y + 1;
        dbms_output.put_line( y );
    END LOOP;

END;
/
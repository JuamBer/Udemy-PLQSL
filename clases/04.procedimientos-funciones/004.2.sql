set serveroutput on;

DECLARE 
    a NUMBER := 10;
    b NUMBER := 25;
    c NUMBER;
BEGIN 
    c := mayor_entre(a,b);
    dbms_output.put_line( 'Mayor: ' || c  );
END;
/
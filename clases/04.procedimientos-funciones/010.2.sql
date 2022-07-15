set serveroutput on;

DECLARE 
    a NUMBER := 5;
    b NUMBER := 10;
    c NUMBER := 0;
BEGIN
    menor_entre(a, b, c);
    dbms_output.put_line( 'Menor: ' || c );
END;
/
set serveroutput on;

DECLARE 
    empleados NUMBER;
BEGIN 
    empleados := total_empleados();
    dbms_output.put_line( 'Total de empleados: ' || empleados );
END;
/
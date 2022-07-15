set serveroutput on;

DECLARE 
    salarioPromedio NUMBER := 0;

    FUNCTION obtener_promedio RETURN NUMBER
        IS
            promedio NUMBER := 0;
        BEGIN
            SELECT AVG(salario) INTO promedio FROM empleados;
            RETURN promedio;
        END;
    
BEGIN 
    salarioPromedio := obtener_promedio();

    dbms_output.put_line( 'Salario promedio: ' || salarioPromedio );
END;
/
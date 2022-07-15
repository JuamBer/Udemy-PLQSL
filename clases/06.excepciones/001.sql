set serveroutput on;

DECLARE 
    nombre NVARCHAR2(50);
BEGIN   
    SELECT nombre INTO nombre FROM empleados WHERE id = 20;

    DBMS_OUTPUT.PUT_LINE('Nombre: ' || nombre);


EXCEPTION 
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: No se encontró ningún registro');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: Ocurrió un error');
END;
/
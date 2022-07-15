set serveroutput on;

DECLARE 
BEGIN 
    UPDATE empleados SET actualizado = SYSDATE;
    DBMS_OUTPUT.PUT_LINE('Actualizados: ' || sql%ROWCOUNT);

    IF(sql%FOUND) THEN
        DBMS_OUTPUT.PUT_LINE('Se encontraron registros');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontraron registros');
    END IF;
END;
/
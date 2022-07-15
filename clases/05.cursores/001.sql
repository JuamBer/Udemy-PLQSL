set serveroutput on;

DECLARE 
    promedio NUMBER;
BEGIN 
    FOR fila IN (SELECT * FROM notas) LOOP
        promedio := (fila.nota1 + fila.nota2 + fila.nota3 )/3;
        dbms_output.put_line('Nombre: ' || fila.nombre || ', Promedio: ' || promedio );
    END LOOP;

END;
/
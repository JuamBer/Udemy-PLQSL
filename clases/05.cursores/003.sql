set serveroutput on;

DECLARE 
    nombre NVARCHAR2(100);
    salario NUMBER;

    CURSOR c_empleados IS
        SELECT nombre, salario FROM empleados;
BEGIN 
    OPEN c_empleados;
    LOOP 
        FETCH c_empleados INTO nombre, salario;
        EXIT WHEN c_empleados%NOTFOUND;
        dbms_output.put_line('Nombre: ' || nombre || ', Salario: ' || salario);
    END LOOP;
    
    CLOSE c_empleados;
END;
/
set serveroutput on;

DECLARE 
    reg_empleado empleados%ROWTYPE;
BEGIN 
    SELECT * INTO reg_empleado FROM empleados WHERE id = 5;
    dbms_output.put_line('Nombre: ' || reg_empleado.nombre || ', Salario: ' || reg_empleado.salario);
END;
/
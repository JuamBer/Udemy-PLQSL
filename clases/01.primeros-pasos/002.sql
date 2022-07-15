SET SERVEROUT ON;

DECLARE 
-- Definici�n variables y funciones
    salario NUMBER := 1500;
    nombreEmpleado NVARCHAR2(100);
    activo BOOLEAN;
    fecha DATE;
BEGIN
    nombreEmpleado := 'Juan S�ez';
    activo := true;
    fecha := SYSDATE;
    
    dbms_output.put_line('Nombre: ' || nombreEmpleado );
    dbms_output.put_line('Salario: ' || salario );
    dbms_output.put_line('Fecha: ' || fecha );
    
    dbms_output.put_line('Activo: ' || CASE WHEN activo THEN 'Si' ELSE 'NO' END);
END;
/
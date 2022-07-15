CREATE OR REPLACE PROCEDURE actualizar_fecha_empleados
AS
BEGIN
    UPDATE empleados SET actualizado = SYSDATE;
END;
/
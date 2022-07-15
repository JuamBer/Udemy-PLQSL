SET SERVEROUT ON;

DECLARE 
    cantidad NUMBER;
    usuario NVARCHAR2(100);
BEGIN
    /*
        SELECT USER INTO usuario FROM dual;
        SELECT COUNT(*) INTO cantidad FROM dual;
    */

    SELECT USER, count(*) INTO usuario, cantidad FROM dual;

    DBMS_OUTPUT.PUT_LINE('Usuario: ' || usuario);

    DBMS_OUTPUT.PUT_LINE('Cantidad: ' || cantidad);
END;
/
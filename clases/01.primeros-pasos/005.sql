SET SERVEROUT ON;

DECLARE 
    nombre NVARCHAR2(100) := ' Juan Saez ';
    hoy DATE := SYSDATE;
    nombre2 NVARCHAR2(100);
BEGIN

    DBMS_OUTPUT.PUT_LINE('Largo: ' || LENGTH(nombre));
    nombre := TRIM(nombre);
    DBMS_OUTPUT.PUT_LINE('Trim: ' || LENGTH(nombre));
    DBMS_OUTPUT.PUT_LINE('Lower: ' || LOWER(nombre));
    DBMS_OUTPUT.PUT_LINE('Upper: ' || UPPER(nombre));
    DBMS_OUTPUT.PUT_LINE('Substring: ' || SUBSTR(nombre, 1, 3));
    DBMS_OUTPUT.PUT_LINE('Replace: ' || REPLACE(nombre, 'Juan', 'Juanito'));
    DBMS_OUTPUT.PUT_LINE('Hoy: ' || hoy);
    DBMS_OUTPUT.PUT_LINE('Agregar días: ' || (hoy+1));
    DBMS_OUTPUT.PUT_LINE('Agregar mes: ' || ADD_MONTHS(hoy,1));
    DBMS_OUTPUT.PUT_LINE('To char: ' || TO_CHAR(hoy, 'dd'));
    DBMS_OUTPUT.PUT_LINE('To char: ' || TO_CHAR(hoy, 'dd-MM'));
    DBMS_OUTPUT.PUT_LINE('NVL: ' || NVL(nombre2, 'No definido'));
END;
/
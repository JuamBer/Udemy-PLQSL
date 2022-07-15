SET SERVEROUT ON;

DECLARE 
    TYPE alumnosArray IS VARRAY(5) OF NVARCHAR2(100);
    TYPE notasArray IS VARRAY(5) OF NUMBER;

    alumnos alumnosArray;
    notas notasArray;
BEGIN 
    alumnos := alumnosArray('Juan', 'Pedro', 'Maria', 'Juan', 'Pedro');
    notas := notasArray(10, 9, 8, 7, 6);

    DBMS_OUTPUT.PUT_LINE('Alumno 1: ' || alumnos(1));
    
    alumnos(1) := 'Juanito';

    DBMS_OUTPUT.PUT_LINE('Alumno 1: ' || alumnos(1));

    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(alumnos(i) || ': ' || notas(i));
    END LOOP;
END;
/
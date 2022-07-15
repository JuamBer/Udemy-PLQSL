SET SERVEROUT ON;

DECLARE 
    nota NUMBER := 45;
BEGIN 
    IF(nota > 50 OR nota = 45) THEN
        DBMS_OUTPUT.PUT_LINE('Aprobado');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Reprobado');
    END IF;

    IF(nota BETWEEN 50 AND 70) THEN
        DBMS_OUTPUT.PUT_LINE('Aprobado');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Reprobado');
    END IF;

    IF(nota >= 90) THEN
        DBMS_OUTPUT.PUT_LINE('Exelente');
    ELSIF (nota >= 80) THEN
        DBMS_OUTPUT.PUT_LINE('Notable');
    ELSIF (nota >= 60) THEN
        DBMS_OUTPUT.PUT_LINE('Bien');
    ELSIF (nota >= 50) THEN
        DBMS_OUTPUT.PUT_LINE('Suficiente');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insuficiente');
    END IF;
        
END;
/
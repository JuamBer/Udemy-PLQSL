set serveroutput on;

DECLARE 
    TYPE COCHE IS RECORD(
        marca NVARCHAR2(100),
        modelo NVARCHAR2(100),
        puertas NUMBER
    );

    mazda COCHE;
    toyota COCHE;

    PROCEDURE imprimir_coche(coche COCHE) IS
    BEGIN
        dbms_output.put_line('Marca: ' || coche.marca || ', Modelo: ' || coche.modelo || ', Puertas: ' || coche.puertas);
    END;
BEGIN 
    mazda.marca := 'Mazda';
    mazda.modelo := 'CX-5';
    mazda.puertas := 5;
    
    toyota.marca := 'Toyota';
    toyota.modelo := 'Corolla';
    toyota.puertas := 4;

    imprimir_coche(mazda);
    imprimir_coche(toyota);
END;
/
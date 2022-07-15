CREATE OR REPLACE PROCEDURE menor_entre(x IN NUMBER, y IN NUMBER, z OUT NUMBER)
AS
BEGIN
    z := x;
    IF y < z THEN
        z := y;
    END IF;
END;
/
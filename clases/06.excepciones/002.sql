set serveroutput on;

DECLARE 
    ran NUMBER := ROUND(DBMS_RANDOM.VALUE(1, 3));

    err1 EXCEPTION;
    err2 EXCEPTION;
    err3 EXCEPTION;
BEGIN   
    CASE 
        WHEN ran = 1 THEN
            RAISE err1;
        WHEN ran = 2 THEN
            RAISE err2;
        WHEN ran = 3 THEN
            RAISE err3;
    END CASE;


EXCEPTION 
    WHEN err1  THEN
        DBMS_OUTPUT.PUT_LINE('ERROR1');
    WHEN err2  THEN
        DBMS_OUTPUT.PUT_LINE('ERROR2');
    WHEN err3  THEN
        DBMS_OUTPUT.PUT_LINE('ERROR3');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: Ocurrió un error');
END;
/
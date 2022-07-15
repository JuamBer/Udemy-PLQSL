SET SERVEROUT ON;

DECLARE PI CONSTANT NUMBER := 3.14159265358979323846;

area NUMBER;

radius NUMBER;

BEGIN radius := 7;

area := PI * ( radius * radius );

DBMS_OUTPUT.PUT_LINE(
    'The area of the circle is ' || ROUND(area, 2) || 'cm2'
);

END;

/
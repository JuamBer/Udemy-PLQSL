set serveroutput on;

DECLARE 

BEGIN 

    << ciclo_tabla_2 >> 
    FOR i in 1..20 LOOP
        IF(MOD(i,2)<>0) THEN CONTINUE; END IF;
        IF(i = 10) THEN EXIT; END IF;
        --dbms_output.put_line( i || ' * 2 = ' || ( i * 2 )    );  -- 1 * 2 = 2
        dbms_output.put(i);

    dbms_output.put( ' * 2 = ' );

    dbms_output.put_line( i * 2 );

    END LOOP ciclo_tabla_2;

END;

/
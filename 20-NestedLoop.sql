-- NESTED LOOPS

DECLARE
    I NUMBER;
    J NUMBER;
BEGIN
    I := 1;
    LOOP
        J := 1;
        LOOP
            DBMS_OUTPUT.PUT(LPAD(TO_CHAR(I * J), 8, ' '));
            j := j + 1;
            if j > 10 then
                exit;
            end if;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
        I := I + 1;
        EXIT WHEN I > 10;
    END LOOP;
END;
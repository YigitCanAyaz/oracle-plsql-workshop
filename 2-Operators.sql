declare
    A NUMBER;
    B NUMBER;
    C NUMBER;
    -- Bu bir açýklama satýrýdýr
    /*
    Bu da çoklu açýklama satýrýdýr
    Bu da çoklu açýklama satýrýdýr
    Bu da çoklu açýklama satýrýdýr

    */
    
begin
    a := 10;
    b := a * 3;
    
    c := b / a;
    
    c := a + b + c;
    
    dbms_output.put_line('a = ' || a || ' b = ' || b || ' c = ' || c);


end;
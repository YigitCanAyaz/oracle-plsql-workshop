declare
    A NUMBER;
    B NUMBER;
    C NUMBER;
    -- Bu bir a��klama sat�r�d�r
    /*
    Bu da �oklu a��klama sat�r�d�r
    Bu da �oklu a��klama sat�r�d�r
    Bu da �oklu a��klama sat�r�d�r

    */
    
begin
    a := 10;
    b := a * 3;
    
    c := b / a;
    
    c := a + b + c;
    
    dbms_output.put_line('a = ' || a || ' b = ' || b || ' c = ' || c);


end;
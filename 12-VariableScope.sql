declare
    sayi1 number := 10;
    sayi2 number := 20;
    sayi3 number := 30;
begin

    dbms_output.put_line('Say�1 Global Variables ' || sayi1);
    dbms_output.put_line('Say�2 Global Variables ' || sayi2);
    dbms_output.put_line('Say�3 Global Variables ' || sayi3);
    declare
        sayi2 number := 100;
        sayi4 number := 40;
        sayi5 number := 50;
        sayi6 number := 60;
    begin
        dbms_output.put_line('Say�1 global Variables ' || sayi1);
        dbms_output.put_line('Say�2 local Variables ' || sayi2);
        dbms_output.put_line('Say�4 local Variables ' || sayi4);
        dbms_output.put_line('Say�5 local Variables ' || sayi5);
        dbms_output.put_line('Say�6 local Variables ' || sayi6);
    end;
    -- we can't access sayi4 from here bcs its local variable
    dbms_output.put_line('Say�1 Global Variables ' || sayi1);
    dbms_output.put_line('Say�2 Global Variables ' || sayi2);
end;
declare
    x number := 10;
    y number := 10;
begin
    -- if... else... end if
    if x > y then
        dbms_output.put_line('x y den b�y�kt�r');
    else
        dbms_output.put_line('x y den b�y�k de�ildir');
    end if;
    
    -- if ... elsif ... else... end if
    
    if x > y then
        dbms_output.put_line('x y den b�y�kt�r');
    elsif x = y then
        begin -- birden fazla sat�r varsa begin olmas� best practice
            dbms_output.put_line('x y ye e�ittir');
            dbms_output.put_line('sonu� bulundu');
        end;
    else
        dbms_output.put_line('y x den b�y�kt�r');
    end if;
    
    -- <> equals to !=
end;
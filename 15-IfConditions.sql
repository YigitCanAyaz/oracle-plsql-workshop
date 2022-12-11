declare
    x number := 10;
    y number := 10;
begin
    -- if... else... end if
    if x > y then
        dbms_output.put_line('x y den büyüktür');
    else
        dbms_output.put_line('x y den büyük deðildir');
    end if;
    
    -- if ... elsif ... else... end if
    
    if x > y then
        dbms_output.put_line('x y den büyüktür');
    elsif x = y then
        begin -- birden fazla satýr varsa begin olmasý best practice
            dbms_output.put_line('x y ye eþittir');
            dbms_output.put_line('sonuç bulundu');
        end;
    else
        dbms_output.put_line('y x den büyüktür');
    end if;
    
    -- <> equals to !=
end;
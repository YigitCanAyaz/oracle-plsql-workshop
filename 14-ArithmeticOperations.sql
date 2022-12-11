declare
    x number := 20;
    y number := 30;
    z number := 2;
begin
    dbms_output.put_line('x + y = ' || to_char(x + y));
    dbms_output.put_line('x - y = ' || to_char(x - y));
    dbms_output.put_line('x * y = ' || to_char(x * y));
    dbms_output.put_line('y / z = ' || to_char(y / z));
    dbms_output.put_line('y nin karesi ' || to_char(power(y, z)));
end;
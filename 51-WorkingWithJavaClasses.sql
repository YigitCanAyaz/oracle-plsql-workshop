
create or replace and  compile java source named "Merhaba" as
public class Merhaba  {
    public static String javaKardes() {
        return "Merhaba PL/SQL Kardes";
    }
};

create or replace function merhabajava return varchar2 as
language java name 'Merhaba.javaKardes() return java.lang.String';

-- set serveroutput on;

declare
    my_string varchar2(500);
begin
    my_string := merhabajava();
    dbms_output.put_line('Javadan gelen mesaj: ' || my_string);
end;
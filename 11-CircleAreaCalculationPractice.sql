DECLARE
    pi CONSTANT double precision := 3.1415; 
    r number(5,2);
    alan number(10,2);
    cevre number(10,2);
    aciklama1 varchar2(15) := 'Alan = ';
    aciklama2 varchar2(15) default 'çevre = '; -- deðiþtiremediði sürece deðeri bu
    
    f1 float;
    f2 float;
BEGIN
    -- PI := 2212.12; we cannot change pi's value bcs it's constant
    
    -- r := 5;
    
    
    r := &YARICAPI_GIR; -- input
    /*
    alan := pi * r * r; -- alan := pi * power(r, 2);
    cevre := 2 * pi * r;
    dbms_output.put_line(aciklama1 || alan);
    dbms_output.put_line(aciklama2 || cevre);
    */
    
    f1 := pi * r * r;
    f2 := 2 * pi * r;
    
    dbms_output.put_line(aciklama1 || f1);
    dbms_output.put_line(aciklama2 || f2);
END;
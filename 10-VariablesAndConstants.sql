DECLARE
    V_SAYI NUMBER(3);
    ADRES VARCHAR2(150);
    
    P_EMPNO EMP.EMPNO%TYPE;
    P_EMP EMP%ROWTYPE;
    
    SUBTYPE ISIM AS VARCHAR2(50);
    PI CONSTANT NUMBER(10, 5) := 3,14;
    P_ISIM ISIM;
    
    RESIM BLOB;
    
    CHAR_DATA CLOB;
    
    RESIM2 BFILE;
    
BEGIN

END;
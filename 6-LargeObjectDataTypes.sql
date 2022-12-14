-- EXT => EXTERNAL
CREATE TABLE LARGE_OBJECTS (
    CHAR_DATA CLOB,
    BINARY_DATA BLOB,
    EXT_BINARY_DATA BFILE 
);

CREATE DIRECTORY RESIM_DIR AS 'C:\Users\yigit\Pictures\Ben';

DECLARE

BEGIN
    INSERT INTO LARGE_OBJECTS(CHAR_DATA, BINARY_DATA, EXT_BINARY_DATA) VALUES
    (
    'Bu alan CLOB türündedir',
    UTL_RAW.CAST_TO_RAW('Bu alan BLOB Türündedir'),
    BFILENAME('RESIM_DIR', 'ben.png')
    );
END;

select CHAR_DATA, BINARY_DATA, UTL_RAW.CAST_TO_VARCHAR2(BINARY_DATA) from large_objects
CREATE TABLE tbl2 
( 
   key UInt32, 
   value UInt32 
) 
ENGINE = SummingMergeTree() 
ORDER BY key;


INSERT INTO tbl2 Values(1,1),(1,2),(2,1);


SELECT * FROM tbl2;

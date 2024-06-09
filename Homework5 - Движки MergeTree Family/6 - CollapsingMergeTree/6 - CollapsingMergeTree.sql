CREATE TABLE tbl6 
( 
`id` Int32,
`status` String, 
`price` String,
`comment` String, 
`sign` Int8
 ) ENGINE = CollapsingMergeTree(sign) 
PRIMARY KEY (id) 
ORDER BY (id, status);


INSERT INTO tbl6 VALUES (23, 'success', '1000', 'Confirmed', 1);
INSERT INTO tbl6 VALUES (23, 'success', '1000', 'Confirmed', -1),
                        (23, 'success', '2000', 'Cancelled', 1);

SELECT * FROM tbl6;


SELECT * FROM tbl6 FINAL;
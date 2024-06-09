CREATE OR REPLACE TABLE tbl3 
( 
 `id` Int32, 
 `status` String, 
 `price` String,
 `comment` String 
) ENGINE = ReplacingMergeTree 
PRIMARY KEY (id) 
ORDER BY (id, status);


INSERT INTO tbl3 VALUES (23, 'success', '1000', 'Confirmed');

INSERT INTO tbl3 VALUES (23, 'success', '2000', 'Cancelled'); 


SELECT * FROM tbl3;

SELECT * FROM TBL3 FINAL WHERE ID = 23;


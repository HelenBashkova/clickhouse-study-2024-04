CREATE TABLE tbl5 
(   
CounterID UInt8, 
StartDate Date, 
UserID AggregateFunction(uniq, UInt64) 
) ENGINE = AggregatingMergeTree() 
PARTITION BY toYYYYMM(StartDate) ORDER BY (CounterID, StartDate);


INSERT INTO tbl5 
SELECT CounterID, StartDate, uniqState(UserID) FROM tbl4 
GROUP BY CounterID, StartDate;


INSERT INTO tbl5 VALUES (1,'2019-11-12',1);


INSERT INTO tbl5 VALUES (1,'2019-11-12',1);


INSERT INTO tbl4 VALUES (1,'2019-11-12',1) 


INSERT INTO tbl5 
SELECT CounterID, StartDate, uniqState(UserID) FROM tbl4 
GROUP BY CounterID, StartDate;


SELECT * FROM tbl5;


SELECT uniqMerge(UserID) AS state FROM tbl5 GROUP BY CounterID, StartDate;
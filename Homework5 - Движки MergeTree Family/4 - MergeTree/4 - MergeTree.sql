CREATE TABLE tbl4 
(  
 CounterID UInt8, 
 StartDate Date,
 UserID UInt64 
) ENGINE = MergeTree PARTITION BY toYYYYMM(StartDate) ORDER BY (CounterID, StartDate);

INSERT INTO tbl4 VALUES(0, '2019-11-11', 1);

INSERT INTO tbl4 VALUES(1, '2019-11-12', 1);
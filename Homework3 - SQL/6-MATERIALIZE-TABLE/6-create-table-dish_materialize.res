CREATE TABLE dish_materialize
ENGINE = MergeTree
ORDER BY dish_name
AS SELECT
    id AS dish_id,
    name AS dish_name,
    description,
    menus_appeared,
    times_appeared,
    first_appeared,
    last_appeared,
    lowest_price,
    highest_price
FROM dish

Query id: 0d6f80a0-4646-45ef-a739-648368461ec3

? Progress: 428.15 thousand rows, 31.16 MB (278.86 thousand rows/s., 20.29 MB/s.? Progress: 428.15 thousand rows, 31.16 MB (278.86 thousand rows/s., 20.29 MB/s.? Progress: 428.15 thousand rows, 31.16 MB (258.08 thousand rows/s., 18.78 MB/s.? Progress: 428.15 thousand rows, 31.16 MB (224.62 thousand rows/s., 16.35 MB/s.? Progress: 428.15 thousand rows, 31.16 MB (221.79 thousand rows/s., 16.14 MB/s.Ok.

0 rows in set. Elapsed: 1.930 sec. Processed 428.15 thousand rows, 31.16 MB (221.79 thousand rows/s., 16.14 MB/s.)



SELECT *
FROM dish_materialize
LIMIT 2

Query id: 07161f4f-81db-443a-b023-40f8077854bd

Row 1:
??????
dish_id:        481860
dish_name:           "     hashed in cream
description:    
menus_appeared: 1
times_appeared: 1
first_appeared: 0
last_appeared:  0
lowest_price:   0
highest_price:  0

Row 2:
??????
dish_id:        131244
dish_name:           "  Newburg
description:    
menus_appeared: 1
times_appeared: 1
first_appeared: 1900
last_appeared:  1900
lowest_price:   0.75
highest_price:  0.75

2 rows in set. Elapsed: 0.201 sec. 
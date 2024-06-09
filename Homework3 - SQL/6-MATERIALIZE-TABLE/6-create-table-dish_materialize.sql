CREATE TABLE dish_materialize
ENGINE = MergeTree ORDER BY (dish_name)
AS SELECT
id as dish_id,
name as dish_name,
description,
menus_appeared,
times_appeared,
first_appeared,
last_appeared,
lowest_price,
highest_price,
FROM dish 


SELECT * FROM dish_materialize LIMIT 2\G

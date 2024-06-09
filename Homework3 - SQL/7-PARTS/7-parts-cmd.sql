SELECT
partition,
name,
partition_id
FROM system.parts
WHERE (database = 'db_click') AND (table = menu_restaurant') 

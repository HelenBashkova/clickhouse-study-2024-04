SELECT
    partition,
    name,
    partition_id
FROM system.parts
WHERE (database = 'db_click') AND (`table` = 'menu_restaurant')

Query id: 00d2bc19-9965-483a-b9a5-2577af592b1c

   ??partition???name??????????partition_id??
1. ? tuple()   ? all_1_1_0_6 ? all          ?
   ??????????????????????????????????????????



ALTER TABLE db_click.menu_restaurant
    (DETACH PART 'all_1_1_0_6')
Query id: 4b4ed21f-c6d6-401e-b111-0c78ad548209
Ok.
0 rows in set. Elapsed: 0.099 sec. 

ll /var/lib/clickhouse/data/db_click/menu_restaurant/detached/
èòîãî 12
drwxr-x--- 3 clickhouse clickhouse 4096 èþí  8 19:22 ./
drwxr-x--- 4 clickhouse clickhouse 4096 èþí  8 19:22 ../
drwxr-x--- 2 clickhouse clickhouse 4096 èþí  8 19:22 all_1_1_0_6/


ALTER TABLE db_click. menu_restaurant  ATTACH PART ‘all_1_1_0_6’

ALTER TABLE db_click.menu_restaurant
    (ATTACH PART 'all_1_1_0_6')

Query id: 142846a2-3618-45fe-a80a-99664b61a262
Ok.
0 rows in set. Elapsed: 0.077 sec. 



ALTER TABLE db_click.menu_restaurant
    (DROP PART 'all_7_7_0')

Query id: e66bf82f-19eb-4b15-b296-b9a33072cada

Ok.

0 rows in set. Elapsed: 0.008 sec. 



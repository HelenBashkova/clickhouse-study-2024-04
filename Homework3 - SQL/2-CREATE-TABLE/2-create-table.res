DROP TABLE IF EXISTS menu_restaurant

Query id: 471ef686-ce56-44bb-8335-cd1b586a6b83

Ok.

0 rows in set. Elapsed: 0.004 sec.


CREATE TABLE menu_restaurant
(
    `id` UInt32 NOT NULL,
    `name` LowCardinality(String) COMMENT 'Íàçâàíèå',
    `sponsor` LowCardinality(String) COMMENT 'Ñïîíñîð',
    `event` LowCardinality(String) COMMENT 'Ìåðîïðèÿòèå',
    `venue` LowCardinality(String) COMMENT 'Ìåñòî ïðîâåäåíèÿ',
    `physical_description` LowCardinality(String) COMMENT 'Îïèñàíèå',
    `dish1_id` UInt32 NOT NULL COMMENT 'Áëþäî1',
    `dish2_id` Nullable(UInt32) COMMENT 'Áëþäî2',
    `dish3_id` Nullable(UInt32) COMMENT 'Áëþäî3',
    `dish4_id` Nullable(UInt32) COMMENT 'Áëþäî4'
)
ENGINE = MergeTree
ORDER BY id

Query id: 27041f25-af9b-4eef-9f36-211acca7124f

Ok.

0 rows in set. Elapsed: 0.098 sec. 
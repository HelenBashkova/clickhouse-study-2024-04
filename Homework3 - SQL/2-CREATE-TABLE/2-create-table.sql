#Создать таблицу для бизнес-кейса "Меню ресторана" с 5+ полями, наполнить ее данными. Обязательно указывать, где нужно, модификаторы Nullable, LowCardinality и пр. Добавить комментарии.

DROP TABLE IF EXISTS menu_restaurant;

CREATE TABLE menu_restaurant
(
    id UInt32 not null,
    name String comment ‘Íàçâàíèå’,
    sponsor String comment ‘Ñïîíñîð’,
    event String comment ‘Ìåðîïðèÿòèå’,
    venue String comment ‘Ìåñòî ïðîâåäåíèÿ’,
    physical_description LowCardinality(String) comment ‘Îïèñàíèå’,
    dish1_id  UInt32 not null comment ‘Áëþäî1’,
    dish2_id  Nullable(UInt32) comment ‘Áëþäî2’, 
    dish3_id  Nullable(UInt32) comment ‘Áëþäî3’,
    dish4_id  Nullable(UInt32) comment ‘Áëþäî4’	
) ENGINE = MergeTree ORDER BY id;
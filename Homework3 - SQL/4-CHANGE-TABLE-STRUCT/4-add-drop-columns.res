#Добавление колонок
ALTER TABLE menu_restaurant
    (ADD COLUMN `dish5_id` Nullable(UInt32) COMMENT 'Блюдо5')

Query id: 274a45ed-c626-4f99-ba43-fcb1c5cff513

Ok.

0 rows in set. Elapsed: 0.116 sec. 


ALTER TABLE menu_restaurant
    (ADD COLUMN `Name_Enum` Enum('Summer menu' = 1, 'Winter menu' = 2, 'Autumn menu' = 3, 'Spring menu' = 4))

Query id: 4018a3e3-93ef-46fd-8ffc-a847f6a4b4f3

Ok.

0 rows in set. Elapsed: 0.055 sec. 


#Удаление колонок

ALTER TABLE menu_restaurant
    (DROP COLUMN name)

Query id: 1f69d80e-9c32-486d-b3f1-5d0f8ab77df4

Ok.

0 rows in set. Elapsed: 0.311 sec. 


ALTER TABLE menu_restaurant
    (DROP COLUMN physical_description)

Query id: 725e14c5-7059-4e48-a4aa-dabaab314f41

Ok.

0 rows in set. Elapsed: 0.116 sec. 
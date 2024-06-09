#Добавление колонки dish5_id

ALTER TABLE menu_restaurant ADD COLUMN dish5_id  Nullable(UInt32) comment ‘Блюдо5’


#Добавление колонки Name_Enum

ALTER TABLE menu_restaurant ADD COLUMN Name_Enum  Enum('Summer menu' = 1, 'Winter menu' = 2, 'Autumn menu' = 3, 'Spring menu' = 4)


#Удаление колонки name
ALTER TABLE menu_restaurant DROP COLUMN name


#Удаление колонки physical_description
ALTER TABLE menu_restaurant DROP COLUMN physical_description





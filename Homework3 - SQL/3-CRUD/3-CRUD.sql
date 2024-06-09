#INSERT

INSERT INTO menu_restaurant(id, name, sponsor, event, physical_description, dish1_id, dish2_id, dish3_id, dish4_id) VALUES(1, 'Summer menu', null, null, null, 1, 2, 10, 231)

INSERT INTO menu_restaurant(id, name, sponsor, event, physical_description, dish1_id, dish2_id, dish3_id, dish4_id) VALUES(2, 'Summer menu light', 'cafe ccc', 'catering', 'no', 16, 50, 21, 33)


#SELECT

SELECT * FROM menu_restaurant \G


#UPDATE

ALTER TABLE db_click.menu_restaurant UPDATE event='veranda' WHERE name = 'Summer menu'


#DELETE


ALTER TABLE db_click.menu_restaurant DELETE WHERE name='Summer menu light'


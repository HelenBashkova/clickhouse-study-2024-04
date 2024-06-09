INSERT INTO menu_restaurant (id, name, sponsor, event, physical_description, dish1_id, dish2_id, dish3_id, dish4_id) FORMAT Values

Query id: 4c17d249-0329-4727-abe6-d5f0373df7d9

Ok.

1 row in set. Elapsed: 0.008 sec. 


SELECT *
FROM menu_restaurant

Query id: c7db0bc3-ba53-40c7-8343-a264b18d412b

Row 1:
??????
id:                   2
name:                 Summer menu light
sponsor:              cafe ccc
event:                catering
venue:                
physical_description: no
dish1_id:             16
dish2_id:             50
dish3_id:             21
dish4_id:             33

Row 2:
??????
id:                   1
name:                 Summer menu
sponsor:              
event:                
venue:                
physical_description: 
dish1_id:             1
dish2_id:             2
dish3_id:             10
dish4_id:             231

2 rows in set. Elapsed: 0.199 sec. 

ALTER TABLE db_click.menu_restaurant
    (UPDATE event = 'veranda' WHERE name = 'Summer menu')

Query id: 1472038c-0cc8-462f-a7bf-3a0e6b5e6cb7

Ok.

0 rows in set. Elapsed: 0.283 sec. 



SELECT *
FROM menu_restaurant
WHERE name = 'Summer menu'

Query id: d0f7b123-bdcb-4895-8e3c-e6be3957b86d

Row 1:
??????
id:                   1
name:                 Summer menu
sponsor:              
event:                veranda
venue:                
physical_description: 
dish1_id:             1
dish2_id:             2
dish3_id:             10
dish4_id:             231

1 row in set. Elapsed: 0.280 sec. 




ALTER TABLE db_click.menu_restaurant
    (DELETE WHERE name = 'Summer menu light')

Query id: b26756bb-8ace-46eb-af2e-85c35ede3acd

Ok.

0 rows in set. Elapsed: 0.066 sec. 

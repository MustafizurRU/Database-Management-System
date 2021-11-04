--select * from Item

create table Item
(
	item_id char(6) primary key check(item_id like '[P][0-9][0-9][0-9][0-9][0-9]'),
	item_name char(12),
	item_category char(10),
	item_price float check(item_price>=0),
	item_qoh int check(item_qoh>=0),
	item_last_sold date default getdate(),
)

insert Item (item_id,item_name,item_category,item_price,item_qoh) 
values ('P00001','Database','Books',200.00,1)

insert Item (item_id,item_name,item_category,item_price,item_qoh) 
values ('P00002','AI','Books',175.50,2)


ALTER TABLE Item
add DateOfBirth int;

ALTER TABLE Item
drop COLUMN  DateOfBirth; 

UPDATE Item
SET item_price = 400
WHERE item_id='P00002';

DELETE FROM Item
WHERE item_id='P00001';


select * from Item

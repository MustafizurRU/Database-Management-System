--select * from Item

create table Item2
(
	item_id char(6) primary key check(item_id like '[P][0-9][0-9][0-9][0-9][0-9]'),
	item_name char(12),
	item_category char(10),
	item_price float check(item_price>=0),
	item_qoh int check(item_qoh>=0),
	item_last_sold date default getdate(),
)

insert Item2 (item_id,item_name,item_category,item_price,item_qoh) 
values ('P00001','Database','Books',200.00,1)

insert Item2 (item_id,item_name,item_category,item_price,item_qoh) 
values ('P00002','AI','Books',175.50,2)


ALTER TABLE Item2
add DateOfBirth int;

ALTER TABLE Item2
drop COLUMN  DateOfBirth; 

UPDATE Item2
SET item_price = 400
WHERE item_id='P00002';

DELETE FROM Item2
WHERE item_id='P00001';


select * from Item2

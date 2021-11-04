create table Items
(
	cusl_id char(6) primary key check(cusl_id like'[P][0-9][0-9][0-9][0-9][0-9]'),
	item_name varchar(15) not null,
	item_category varchar(15) not null,
	item_price float check(item_price>=0),
	item_qoh int check(item_qoh>=0),
	item_last_sold date default getdate(),
)

select * from Items

insert Items values('P00001','AI','Books',130,5,getdate());
insert Items values('P00002','Database','Books',150,7,getdate());
insert Items values('P00003','Keyboard','Electronics',550,3,getdate());
insert Items values('P00004','Mouse','Electronics',250,10,getdate());
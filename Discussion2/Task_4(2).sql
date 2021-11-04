--use Company
create table Transactions
(
	tran_id char(10) primary key check(tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	--item_id char(6) foreign key references Item(item_id),
	item_id char(6) foreign key references Item(item_id),
	cusl_id char(6) foreign key references CustomerAndSuppliers(cusl_id),
	tran_type char(1) check(tran_type like '[SO]'),
	tran_quantity int check(tran_quantity>=0),
	tran_date date default getdate()
)

select * from Transactions
select * from Item
select * from CustomerAndSuppliers

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000001','P00001','S00001','S',1)

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000002','P00002','C00001','O',1)

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000003','P00002','C00001','S',1)

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000005','P00001','S00001','S',10)
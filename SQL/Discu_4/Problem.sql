--select * from Transactions
--select * from item
--select * from CustomerAndSuppliers
/*
create table CustomerAndSuppliers(
	cusl_id char(6) primary key check(cusl_id like '[cs][0-9][0-9][0-9][0-9][0-9]'),
	cusl_fname char(15) not null,
	cusl_lname varchar(15),
	cusl_address text,
	cusl_telno char(12) check (cusl_telno like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	cusl_city char(12) default 'Rajshahi',
	sales_amnt int check(sales_amnt>=0),
	proc_amnt int check(proc_amnt>=0)
)

insert CustomerAndSuppliers values('C00001','Himul','Roy','Shovagonj','01735111000','Gaibandha',1,1);
insert CustomerAndSuppliers values('S00001','S1','Roy','Rajshahi','01735111001','Rajshahi',5,5);
insert CustomerAndSuppliers values('C00002','Shiraj','Islam','Shovagonj','01735111010','Gaibandha',3,3);
insert CustomerAndSuppliers values('S00002','S2','Roy','Dhaka','01735111101','Dhaka',10,10);

*/

/*
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


insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000001','P00001','S00001','S',4)

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000002','P00002','C00001','O',4)

*/
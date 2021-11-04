create table CustomeerAndSupliers
(
	cust_id char(6) primary key check(cust_id like'[CS][0-9][0-9][0-9][0-9][0-9]'),
	cust_fname varchar(15) not null,
	cust_lname varchar(15),
	sales_amnt float check(sales_amnt>=0),
	proc_amnt float check(proc_amnt>=0)

)

create table Item
(
	item_id char(6) primary key check(item_id like'[P][0-9][0-9][0-9][0-9][0-9]'),
	item_name char(12),
	item_category char(15),
	item_price float check(item_price>=0),
	item_qoh int check(item_qoh>=0),
	item_last_sold datetime default getdate()

)

select * from item

insert Item values('P00001','keyboard','Electronics',550,5,default)

create table Transactions
(
	tran_id char(6) primary key check(tran_id like'[T][0-9][0-9][0-9][0-9][0-9]'),
	item_id char(6) foreign key references Item(item_id),
	cust_id char(6) foreign key references CustomeerAndSupliers(cust_id),
	tran_type char(1) check(tran_type like'[SO]'),
	tran_quantity int check(tran_quantity>=0),
	tran_date datetime default getdate()
)

select * from Transactions


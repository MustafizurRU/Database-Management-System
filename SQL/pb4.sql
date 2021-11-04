--create database Company
--use Company
create table CustomerAndSuppliers(
	cusl_id char(6) primary key check(cusl_id like '[cs][0-9][0-9][0-9][0-9][0-9]'),
	cusl_fname char(15) not null,
	cusl_lname varchar(15),
	cusl_address text,
	cusl_telno char(12) check (cusl_telno like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	cusl_city char(12) default 'Rajshahi',
	sales_amnt money check(sales_amnt>=0),
	proc_amnt money check(proc_amnt>=0)
)
--select * from CustomerAndSuppliers


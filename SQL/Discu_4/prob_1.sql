--select * from transactions

create trigger trg_test on item for insert
as
begin
	print'Data inserted in Item Table'
end

insert item values('P00004','Mouse','Elect.',250,10,getdate());
insert item values('P00005','Mango','Fruit.',80,60,getdate());


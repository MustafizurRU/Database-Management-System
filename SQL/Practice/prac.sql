create trigger trg_test on Item for insert
as 
begin
	print 'data inserted in Item table'
end

insert Item values('P00001','AI','Books',130,5,getdate());
insert Item values('P00002','Mouse','Electronics',250,10,getdate());

alter trigger trg_test2 on Item for delete
as 
begin
	print 'Data deleted from Item table'
end

delete Item where item_id ='P00001'
select * from Item
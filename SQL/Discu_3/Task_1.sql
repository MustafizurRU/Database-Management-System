select * from item
insert item values('P00003','keyboard','Electr.',550,5,getdate())
insert item values('P00004','Mouse','Electr.',250,5,getdate())

create proc Task_1
as
begin
	select "Category"=item_category,"Total Number of Items"=count(item_name),avg(item_price) as 'Average Price' from item group by item_category;
end

exec Task_1
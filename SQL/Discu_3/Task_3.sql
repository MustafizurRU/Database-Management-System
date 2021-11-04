alter proc Task_3 @category_name char(15) , @accepted_avg_price float
as
begin
	declare @price float
	set @price=(select avg(item_price) from item)
	--print @price
	while(1.1*@price<@accepted_avg_price)
		update Item set item_price=(1.1*item_price) where item_category=@category_name
end

exec Task_3 'Books.','1500'

select * from Item
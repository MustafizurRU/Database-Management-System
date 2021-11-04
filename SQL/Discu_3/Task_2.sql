alter proc Task_2 @category_name char(15) , @accepted_price float
as
begin
	select * from item where item_category=@category_name and item_price<=@accepted_price
end

exec Task_2 'Electr.','300'

select * from Item
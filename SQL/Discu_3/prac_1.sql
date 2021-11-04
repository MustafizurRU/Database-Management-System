/*
create proc sp_showTitleAndAuthor
as
begin
	select "authors Last Name"=au_lname from authors where au_id in (select au_id from titleauthor where title_id='BU1032')
end
exec sp_showTitleAndAuthor

alter proc sp_showTitleAndAuthor
as
begin
	select "authors First Name"=au_fname from authors where au_id in (select au_id from titleauthor where title_id='BU1032')
end
exec sp_showTitleAndAuthor


alter proc sp_showTitleAndAuthor @titleid char(15)
as
begin
select "authors Last Name"=au_lname from authors where au_id in (select au_id from titleauthor where title_id=@titleid)
end
exec sp_showTitleAndAuthor 'BU1032'

/* 3 */
create proc sp_updatePrice @titleid char(15)
as
begin
	declare @price Money
	select @price=price from titles where title_id=@titleid
	set @price=@price + 0.1*@price
	if @price<=20
	update titles set price=@price where title_id=@titleid
end
exec sp_updatePrice 'BU1111'

*/


select * from authors where au_id='172-32-1176'
select * from titleauthor where title_id='BU1032'
select * from titles
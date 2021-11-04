--select * from Transactions
--select * from item
--select * from CustomerAndSuppliers
create trigger trg_update_item on Transactions for insert
as 
begin
	declare @item_id char(6),@tranamount int,@tran_type char(1)
	select @item_id=item_id,@tranamount=tran_quantity ,@tran_type=tran_type from inserted
	if(@tran_type='s')
		update item set item_qoh=item_qoh - @tranamount where item_id=@item_id
	else
		update item set item_qoh=item_qoh + @tranamount where item_id=@item_id
end

insert Transactions values('T000000005','P00001','S00001','S',5,getdate());

insert Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000005','P00001','S00001','S',5)
delimiter //
create procedure CancelOrder(in ChosenOrderID int)
begin
	delete from Orders
    where OrderID = ChosenOrderID;
    
    select concat('Order ', ChosenOrderID, ' is cancelled')
    as Confirmation;
end //
delimiter ;

call CancelOrder(5);
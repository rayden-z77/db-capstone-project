DELIMITER //

CREATE PROCEDURE AddValidBooking(in chosenBookingDate date, in chosenTableNum int)
BEGIN
	start transaction;
    SELECT EXISTS (SELECT * FROM Bookings 
        WHERE BookingDate = chosenBookingDate 
		AND TableNumber = chosenTableNum)
        INTO @bookingStatus;
    
    insert into Bookings (BookingDate, TableNumber)
    values (chosenBookingDate, chosenTableNum);
    
    if @bookingStatus then
		rollback;
        
        select concat('Table ', chosenTableNum,
        ' is already booked - booking cancelled')
        as 'Booking status';
	else
		select concat('You have successfully booked Table ', chosenTableNum)
        as 'Booking status';
		
		commit;
	end if;
END //

DELIMITER ;

call AddValidBooking('2022-12-17', 6);
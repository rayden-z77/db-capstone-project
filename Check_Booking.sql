DELIMITER //

CREATE PROCEDURE CheckBooking(in chosenBookingDate date, in chosenTableNum int)
BEGIN
    SELECT EXISTS (SELECT * FROM Bookings 
        WHERE BookingDate = chosenBookingDate 
		AND TableNumber = chosenTableNum)
        INTO @bookingStatus;
    
    if @bookingstatus then
		select concat('Table ', chosenTableNum, ' is already booked')
        as 'Booking status';
    else
		select concat('Table ', chosenTableNum, ' has not yet been booked') as 'Booking status';
    end if;
END //

DELIMITER ;

call CheckBooking('2022-11-12', 3);
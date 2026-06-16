DELIMITER //

CREATE PROCEDURE CancelBooking(in chosen_booking_id int)
BEGIN
    delete from Bookings where BookingID = chosen_booking_id;
    
    select concat('Booking ', chosen_booking_id, ' cancelled') 
    as Confirmation;
END //

DELIMITER ;

call CancelBooking(9);
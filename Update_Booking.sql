DELIMITER //

CREATE PROCEDURE UpdateBooking(in chosen_booking_id int, in chosen_booking_date date)
BEGIN
    update Bookings
    set BookingDate = chosen_booking_date
    where BookingID = chosen_booking_id;
    
    select concat('Booking ', chosen_booking_id, ' updated') as Confirmation;
END //

DELIMITER ;

call UpdateBooking(9, '2022-12-17');
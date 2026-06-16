DELIMITER //

CREATE PROCEDURE AddBooking(in chosen_booking_id int, 
    in chosen_customer_id int, 
    in chosen_table_number int, 
    in chosen_booking_date date)
BEGIN
    insert into Bookings (BookingID,
    TableNumber, fk_Bookings_Customer, BookingDate)
    values (chosen_booking_id, chosen_table_number, chosen_customer_id, 
    chosen_booking_date);
    
    select 'New booking added' as Confirmation;
END //

DELIMITER ;

call AddBooking(9, 3, 4, '2022-12-30');
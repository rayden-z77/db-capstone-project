insert into Bookings (BookingID, 
BookingDate, 
TableNumber, 
fk_Bookings_Customer)
values (1, '2022-10-10', 5, 1),
(2, '2022-11-12', 3, 3),
(3, '2022-10-11', 2, 2),
(4, 2022-10-13, 2, 1);

select BookingID, 
BookingDate, 
TableNumber, 
fk_Bookings_Customer as CustomerID from Bookings;
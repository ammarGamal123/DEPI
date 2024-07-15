

Select * from Booking

Select AVG(price) as avgPrice,
Min(discount) as minDiscount,
Max(discount) as maxDiscount
From Booking


Select price , Count(*) as cnt
from Booking
group by price

select Room_id , max(price) as maxPrice
From Booking
group by Room_id


select Room_id , Count(*) as countRoomIds
From Booking
Group by Room_id
having count(*) <= 10

select distinct (Room_id) from Booking


select Room_id , Count(*) as countRoomsInBooking
From Booking b
inner join Rooms r 
on r.id = b.Room_id
group by Room_id

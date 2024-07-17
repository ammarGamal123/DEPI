
select Bid , price
From Booking
where price > (select avg(price) from Booking)

select Bid , discount , date_form 
from Booking
where date_form in (
	select date_form from Booking
	where Booking.discount > 10);


select b1.Bid , b1.price , b1.date_form
from Booking b1
where date_form = (
	select max (date_form)
	from Booking b2
	where b1.Bid = b2.Bid)
order by Bid , date_form;


select Bid , price 
from Booking as b1
Where exists (
	select * from Booking as b2
	where b1.Bid = b2.Bid);

select Bid , price 
from Booking as b1
Where not exists (
	select * from Booking as b2
	where b1.Bid = b2.Bid);




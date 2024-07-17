-- Module 8

select count(*) as numorderlines , sum(Booking.discount * Booking.price)
from Booking

select top(50) Bid , Price,
	   Rank() Over(Order by price desc) as
	   rankPrice
From Booking
order by rankPrice;



select CAST (date_form as date)
from Booking	



select CAST (date_form as int)
from Booking
-- Error because data type is incompatible 


SELECT PARSE('02/12/2012' AS datetime2 USING 'en-US')
	AS parse_result; 
-- Parse 

SELECT TRY_PARSE('SQLServer' AS datetime2 USING 'en-US') AS try_parse_result; 
-- Null Can't parse this is the use of TRY_Parse

SELECT TRY_PARSE('2020-02-02' AS datetime2 USING 'en-US')
	AS try_parse_result; 
-- Value is not null

SELECT ISNUMERIC('101.99') AS isnmumeric_result;

SELECT ISNUMERIC('Ammar') AS isnmumeric_result;

SELECT 
    Booking.price,
    IIF(price >= 500, 'High', 'Low') AS pricePoint
FROM 
    Booking
	order by price desc;


Select CHOOSE (2 , Bid , guset_id , price)
FROM Booking;

select ISNULL(Rooms.info , 'N/A')
From Rooms

select coalesce(Rooms.show , '')
from Rooms


select Bid , nullif(Bid + 400 , price + 100) as actual_if_difference
from Booking
















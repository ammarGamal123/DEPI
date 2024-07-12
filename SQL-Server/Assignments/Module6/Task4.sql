-- Module 6 Task

select * from Booking

select CAST(Price as int) from Booking
-- casting decimal into integer 


select concat(Bid,', ', Room_id, ', ', guset_id) as info
from Booking
-- allow character ', ' to be added to any type in concat
-- concat different columns into one column (info)

select (Bid + Room_id + guset_id) as info
from Booking
-- doesn't allow any character and MUST be in the same data type
-- concat different columns into one column (info)

select SUBSTRING('ammar' , 1 , 3)

select left ('ammar' , 3)

select right ('ammar' , 3)

select len('ammar')

select DATALENGTH('ammar')

select CHARINDEX('am' , 'ammar')
-- return first char index found matching this substring ('am')

select replace('ammar' , 'am','ah')
-- replace all occurences of 'am' into 'ah' in the string 'ammar'

select UPPER('ammar')

select * from Booking


select room_view 
from Booking
where room_view like N'%ل'


select * 
from Booking
where date_form = '2018-07-23'


Declare @DataOnly as datetime2 = '2020-12-13';

select @DataOnly


DECLARE @time AS time = '12:34:56';
SELECT CAST(@time AS datetime2) AS Result;

SELECT DATENAME(dw, '2024-07-11')

SELECT DATEDIFF(DAY,'2022-07-11','2024-07-11') as DayDiff

Select DATEADD(day,2,'2022-07-11');

Select ISDATE('2022-02-22')


Select ISDATE('20220222')


Select ISDATE('202202122')




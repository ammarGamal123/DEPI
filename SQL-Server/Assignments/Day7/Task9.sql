-- Single Statement Table Valued Functions (STVF)

create function GetBookingIDByRoomID (@roomID int)
returns table 
as 
return 
(
	select Bid 
	From Booking 
	where Booking.Room_id = @roomID
);

GO

Select * From GetBookingIDByRoomID(8)

Go

create function GetBookingDetails (@bookID INT)
returns @BookingDetails Table
(	
	BookingID INT ,
	Date_From date,
	Date_to date,
	Price INT
)
as
Begin 
	insert into @BookingDetails 
		Select Bid , date_form , date_to , price 
		From Booking
		where @bookID = Bid
		
		return;
end;

GO


Select * from GetBookingDetails(543)


Select * from Booking



-- Module7

select * from Rooms

insert into Rooms (roomNum , floor , room_View , typeID , NAdult , NChild , price , show , disable , Dailystatus)
Values ('500' , 2 , N'الاستراحة' , 1 , 3 , 2 , 500 , 1 , 0 , 'Empty')

select * from Rooms
where roomNum = '500'

INSERT INTO Rooms (roomNum, floor, room_View, typeID, NAdult, NChild, price, show, disable, Dailystatus)
VALUES 
('501', 2, N'البحر', 2, 2, 1, 600, 1, 0, 'Occupied'),
('502', 3, N'الحديقة', 1, 4, 2, 700, 1, 0, 'Empty'),
('503', 1, N'المدينة', 3, 2, 0, 450, 1, 0, 'Reserved'),
('504', 4, N'الشاطئ', 2, 3, 1, 800, 1, 0, 'Occupied'),
('505', 5, N'الجبل', 1, 2, 2, 550, 1, 0, 'Maintenance')



create table TestTable(
	BookBid int primary key,
	BookRoomView NVARCHAR(MAX) 
);


insert TestTable 
(BookBid , BookRoomView)
	Select Bid , room_view From Booking
	where Bid < 555;


select * from TestTable

select Bid , room_view INTO TestTableV3
From Booking
where Bid < 565 


select * from TestTableV2



update TestTableV2
	set room_view = room_view + 'V1'
	where room_view is not null
	


select * from TestTableV2



UPDATE Reason  -- Notice use of Alias to make reading better 
	SET room_view += '?'

FROM Booking AS Reason 
INNER JOIN TestTable AS WorkOrder
 
ON 	Reason.Bid = WorkOrder.BookBid;



Select * from TestTable

select * from TestTableV2


MERGE TOP (5)
INTO TestTable AS Destination
USING (
    SELECT Bid, room_view
    FROM TestTableV2
) AS StagingTable
ON (Destination.BookBid = StagingTable.Bid)

WHEN NOT MATCHED THEN
    INSERT (BookBid, BookRoomView)
    VALUES (StagingTable.Bid, StagingTable.room_view)

WHEN MATCHED THEN 
    UPDATE SET Destination.BookRoomView = StagingTable.room_view;



create table Products 
(
	PID int Identity(1 , 1) not null,
	Name NVARCHAR(MAX)
);

insert into Products
values ('Shoes')


select @@IDENTITY from Products



CREATE SEQUENCE InvoiceSeq AS INT START WITH 1 INCREMENT BY 1;


SELECT NEXT VALUE FOR dbo.InvoiceSeq;










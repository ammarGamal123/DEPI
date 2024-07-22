
select * from Rooms;

GO
drop procedure UnpivotRooms;
GO

CREATE PROCEDURE UnpivotRooms
AS
BEGIN
    SELECT
        id,
        roomNum,
        [Attribute],
        [Value]
    FROM
    (
        SELECT
            id,
            roomNum,
            CAST(floor AS nvarchar(50)) AS floor,
            CAST(NAdult AS nvarchar(50)) AS NAdult,
            CAST(NChild AS nvarchar(50)) AS NChild
        FROM dbo.Rooms
    ) p
    UNPIVOT
    (
        [Value] FOR [Attribute] IN 
        (
            floor,
            NAdult,
            NChild
        )
    ) AS unpvt;
END


EXEC UnpivotRooms;



BEGIN TRANSACTION
GO
CREATE FUNCTION udf_CreatorWithBoardgames(@name NVARCHAR(50) ) 
RETURNS INT
AS
BEGIN
--DECLARE @cId AS INT;
DECLARE @result  INT;
--SELECT @cId = Id FROM Creators WHERE FirstName = @name;
SELECT @result = COUNT(BoardgameId) FROM CreatorsBoardgames WHERE CreatorId = (SELECT Id FROM Creators WHERE FirstName = @name);
RETURN @result;
END;
GO

COMMIT TRANSACTION
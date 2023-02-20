CREATE PROC usp_SearchByCategory(@category VARCHAR(50))
AS
BEGIN
DECLARE @CatId INT;
SELECT @CatId = Id FROM Categories WHERE [Name] = @category
SELECT b.[Name],b.YearPublished,b.Rating,c.[Name],p.[Name],CONCAT(pr.PlayersMin,' people'),CONCAT(pr.PlayersMax,' people')
FROM Boardgames AS b 
JOIN Categories AS c 
ON b.CategoryId = c.Id AND c.Id = @CatId
JOIN Publishers as p
ON p.Id = b.PublisherId
JOIN PlayersRanges as pr
ON pr.Id = b.PlayersRangeId
ORDER BY p.[Name] ASC, YearPublished DESC

END;
SELECT c.Id,CONCAT(c.FirstName,' ',c.LastName) AS CreatorName,c.Email 
FROM Creators AS c
FULL JOIN CreatorsBoardgames AS cb
ON c.Id = cb.CreatorId
WHERE cb.BoardgameId IS NULL
ORDER BY CreatorName ASC
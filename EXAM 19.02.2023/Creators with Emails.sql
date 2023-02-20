SELECT 
      CONCAT(c.FirstName,' ',c.LastName) AS FullName,
	  c.Email,
	  vbt.Rating
FROM
(SELECT bt.Id, MAX(Rating) AS Rating FROM (SELECT 
      --CONCAT(c.FirstName,' ',c.LastName) AS FullName, 
	  --c.Email,
	  c.Id,
	  b.Rating
FROM Creators AS c
JOIN CreatorsBoardgames AS cb
ON c.Id = cb.CreatorId AND c.Email LIKE '%.com'
JOIN Boardgames AS b
ON cb.BoardgameId = b.Id) AS bt
JOIN Creators AS c
ON bt.Id = c.Id
GROUP BY bt.Id) AS vbt
JOIN Creators AS c
ON c.Id = vbt.Id
ORDER BY FullName ASC
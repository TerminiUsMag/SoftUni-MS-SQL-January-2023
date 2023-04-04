CREATE FUNCTION udf_ProductWithClients (@name NVARCHAR(MAX))
RETURNS INT
AS
BEGIN
    DECLARE @clientCount INT;
    SELECT @clientCount = COUNT(DISTINCT ClientId)
    FROM Products as p
	JOIN ProductsClients as pc
	ON p.Id = pc.ProductId
    WHERE p.[Name] = @name;
    RETURN @clientCount;
END;
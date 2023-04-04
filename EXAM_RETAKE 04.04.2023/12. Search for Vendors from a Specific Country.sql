CREATE PROCEDURE usp_SearchByCountry
    @country NVARCHAR(50)
AS
BEGIN
    SELECT v.[Name],v.NumberVAT AS VAT,CONCAT_WS(' ',a.StreetName,a.StreetNumber) AS 'Street Info',CONCAT_WS(' ',a.City,a.PostCode) AS 'City Info'
    FROM Vendors as v
	JOIN Addresses as a
	ON v.AddressId = a.Id
	JOIN Countries as c
	ON a.CountryId=c.Id
    WHERE c.[Name] = @country
    ORDER BY v.[Name] ASC, a.City ASC
END
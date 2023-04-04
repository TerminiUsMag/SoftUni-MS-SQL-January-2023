--SELECT * FROM Clients AS c 
--JOIN Addresses as a
--ON c.AddressId = a.Id
--JOIN Countries as country
--ON a.CountryId = country.Id
--WHERE c.NumberVAT LIKE 'IT%';

--DELETE FROM Countries WHERE Name='Spain'

--UPDATE Clients
--SET AddressId = 0
--WHERE Id = 6;

BEGIN TRANSACTION;

DELETE FROM ProductsClients WHERE ClientId IN (SELECT Id FROM Clients WHERE NumberVAT LIKE 'IT%');
DELETE FROM Invoices WHERE ClientId IN (SELECT Id FROM Clients WHERE NumberVAT LIKE 'IT%');
DELETE FROM Clients WHERE NumberVAT LIKE 'IT%';
--BEGIN TRANSACTION
----DELETE FROM Countries
----WHERE [Name] = (SELECT co.[Name] FROM Clients AS c JOIN Addresses as a ON c.AddressId = a.Id JOIN Countries as co ON co.Id = a.CountryId WHERE c.NumberVAT LIKE 'IT%')
ROLLBACK TRANSACTION

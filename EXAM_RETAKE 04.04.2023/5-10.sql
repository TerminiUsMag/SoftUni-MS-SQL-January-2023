--5.
--SELECT Number,Currency 
--FROM Invoices 
--ORDER BY Amount DESC, DueDate ASC

--6.
--SELECT p.Id,p.[Name],Price,c.[Name] 
--FROM Products as p 
--JOIN Categories as c 
--ON p.CategoryId=c.Id 
--WHERE c.[Name] = 'Others' OR c.[Name]='ADR'
--ORDER BY Price DESC

--7.
--SELECT c.Id, c.[Name] as Client, CONCAT_WS(', ', (CONCAT(a.StreetName,' ', a.StreetNumber)), a.City,a.PostCode,cu.[Name])AS [Address]
--FROM Clients AS c
--LEFT JOIN ProductsClients AS pc 
--ON c.Id = pc.ClientId
--JOIN Addresses AS a
--ON c.AddressId = a.Id
--JOIN Countries as cu
--ON a.CountryId = cu.Id
--WHERE pc.ProductId IS NULL

--8.
--Select the first 7 invoices that were issued before 2023-01-01 and have an EUR currency or the amount of an invoice is greater than 500.00 and the VAT number of the corresponding client starts with "DE". Order the result by invoice number (ascending), then by amount (descending).
--Required columns:
--�	Number
--�	Amount
--�	Client
--SELECT TOP(7) i.Number,i.Amount,c.[Name] 
--FROM Invoices as i
--JOIN Clients as c
--on i.ClientId = c.Id
--WHERE (IssueDate < '2023-01-01' AND Currency = 'EUR') OR (Amount > 500.00 AND c.NumberVAT LIKE 'DE%')
--ORDER BY Number ASC, Amount DESC

--9.
--SELECT c.[Name],MAX(p.Price) AS Price,c.NumberVAT FROM Clients as c
--JOIN ProductsClients as pc
--ON pc.ClientId = c.Id
--JOIN Products as p
--ON p.Id = pc.ProductId
--WHERE c.[Name] NOT LIKE '%KG'
--GROUP BY c.[Name],c.NumberVAT
--ORDER BY MAX(p.Price) DESC

--10.
--Select all clients, which have bought products. Select their name and average price (rounded down to the nearest integer). Show only the results for clients, whose products are distributed by vendors with "FR" in their VAT number. Order the results by average price (ascending), then by client name (descending).
SELECT c.[Name], FLOOR(AVG(p.Price)) AS 'Average Price' FROM Clients AS c
JOIN ProductsClients AS pc
ON pc.ClientId = c.Id
JOIN Products as p
ON p.Id=pc.ProductId
JOIN Vendors as v
ON p.VendorId = v.Id
WHERE v.NumberVAT LIKE '%FR%'
GROUP BY c.[Name]
ORDER BY AVG(p.Price) ASC, c.Name DESC

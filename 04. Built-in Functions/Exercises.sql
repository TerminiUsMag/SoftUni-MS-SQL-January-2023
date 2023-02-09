--01.--SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE 'Sa%'

--02.--SELECT FirstName, LastName FROM Employees WHERE LastName LIKE '%ei%'

--03.--SELECT FirstName 
--  FROM Employees
--  WHERE (DepartmentID = 3 OR DepartmentID = 10)
--        AND
--        (YEAR(HireDate)>=1995 AND YEAR(HireDate)<= 2005)

--04.--SELECT FirstName,LastName FROM Employees WHERE JobTitle NOT LIKE '%engineer%'

--05.--SELECT [Name] FROM Towns WHERE LEN([Name]) = 5 OR LEN([Name]) = 6 ORDER BY [Name]

--06.--SELECT * FROM Towns WHERE [Name] LIKE '[MKBE]%' ORDER BY [Name]

--07.--SELECT * FROM Towns WHERE [Name] NOT LIKE '[RBD]%' ORDER BY [Name]

--08.--CREATE VIEW V_EmployeesHiredAfter2000 AS
     --SELECT FirstName,LastName
     --  FROM Employees
     -- WHERE YEAR(HireDate) > 2000

--09.--SELECT FirstName,LastName
--  FROM Employees
-- WHERE LEN(LastName) =5

--10.--SELECT EmployeeID
--      ,FirstName
--	  ,LastName
--	  ,Salary
--	  ,DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) 
--  FROM Employees
-- WHERE Salary BETWEEN 10000 AND 50000
-- ORDER BY Salary DESC

--11.--SELECT * FROM (SELECT EmployeeID
--      ,FirstName
--	  ,LastName
--	  ,Salary
--	  ,DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) AS [Rank]
--  FROM Employees
-- WHERE Salary BETWEEN 10000 AND 50000) AS s
-- WHERE s.[Rank] = 2
-- ORDER BY s.Salary DESC

--use Geography

--12.--SELECT CountryName,IsoCode 
--  FROM Countries
-- WHERE LOWER(CountryName) 
--       LIKE
--	   '%a%a%a%' 
-- ORDER BY IsoCode

--13.--SELECT PeakName
--      ,RiverName
--	  ,LOWER(CONCAT(PeakName,SUBSTRING(RiverName,2,LEN(RiverName)-1))) AS Mix
--  FROM Peaks AS p 
--      ,Rivers AS r
-- WHERE LOWER(SUBSTRING(PeakName,LEN(PeakName),1)) = LOWER (SUBSTRING(RiverName,1,1))
-- ORDER BY Mix

--use Diablo

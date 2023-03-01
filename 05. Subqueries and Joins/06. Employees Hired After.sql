SELECT FirstName,LastName,e.HireDate,d.[Name] FROM Employees AS e
JOIN Departments AS d 
ON e.DepartmentID = d.DepartmentID AND HireDate > '1.1.1999' AND d.[Name] IN ('Sales','Finance')
ORDER BY HireDate ASC
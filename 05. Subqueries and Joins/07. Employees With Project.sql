SELECT TOP(5) e.EmployeeID,e.FirstName,p.[Name] FROM EmployeesProjects AS ep
JOIN Employees AS e
ON e.EmployeeID = ep.EmployeeID
JOIN Projects AS p
ON ep.ProjectID = p.ProjectID AND EndDate is NULL AND StartDate > '2002-08-13'
ORDER BY EmployeeID ASC
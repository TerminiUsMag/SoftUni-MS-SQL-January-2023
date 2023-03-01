SELECT EmployeeID,FirstName,LastName,d.[Name] FROM Employees AS e
JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID AND d.[Name] = 'Sales'
ORDER BY EmployeeID ASC
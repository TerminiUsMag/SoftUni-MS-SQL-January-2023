SELECT TOP(3) e.EmployeeID, e.FirstName FROM Employees AS e
FULL JOIN EmployeesProjects AS ep
ON e.EmployeeID = ep.EmployeeID
WHERE ProjectID is NULL
ORDER BY e.EmployeeID ASC
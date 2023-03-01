SELECT e.EmployeeID,e.FirstName,ProjectName = CASE
WHEN  p.StartDate >='1-1-2005' THEN NULL
ELSE p.[Name]
END
FROM EmployeesProjects AS ep
JOIN Employees AS e
ON ep.EmployeeID = e.EmployeeID AND e.EmployeeID = 24
JOIN Projects AS p
ON ep.ProjectID = p.ProjectID
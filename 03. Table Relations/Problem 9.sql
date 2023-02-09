SELECT m.MountainRange,p.PeakName,p.Elevation
FROM Peaks as p
JOIN Mountains as m ON p.MountainId = m.Id AND m.MountainRange = 'Rila'
ORDER BY p.Elevation DESC
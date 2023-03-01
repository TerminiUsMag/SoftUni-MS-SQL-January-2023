SELECT CountryCode, MountainRange,PeakName,Elevation FROM Peaks AS p
JOIN Mountains AS m
ON p.MountainId = m.Id AND p.Elevation > 2835
JOIN MountainsCountries AS mc
ON m.Id = mc.MountainId AND mc.CountryCode = 'BG'
ORDER BY Elevation DESC
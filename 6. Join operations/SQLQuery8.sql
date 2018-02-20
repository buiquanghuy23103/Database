SELECT FamilyName,FirstName,b.Street
FROM Staff s LEFT JOIN Branch b
ON s.BranchId=b.Id
ORDER BY FamilyName
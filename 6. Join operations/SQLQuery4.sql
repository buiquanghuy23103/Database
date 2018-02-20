SELECT FirstName,FamilyName,Street,TypeOfProperty
FROM Staff s RIGHT JOIN PropertyForRent p
ON s.Id=p.StaffId
ORDER BY FirstName
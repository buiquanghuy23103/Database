SELECT FirstName,FamilyName,Position,Street,TypeOfProperty
FROM Staff s LEFT JOIN PropertyForRent p
ON s.Id=p.StaffId
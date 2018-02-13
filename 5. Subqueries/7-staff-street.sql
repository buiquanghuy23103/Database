SELECT Staff.FirstName,Staff.FamilyName,PropertyForRent.Street
FROM Staff
FULL OUTER JOIN PropertyForRent ON Staff.Id=PropertyForRent.StaffId
WHERE PropertyForRent.Street='8 Naval Drive'
SELECT FirstName,FamilyName,pro.Street
FROM PrivateOwner pri  JOIN PropertyForRent pro
ON pri.Id=pro.PrivateOwnerId
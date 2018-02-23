SELECT FamilyName,FirstName,TypeOfProperty,
pro.Street AS TargetStreetAddress
FROM PrivateOwner pri JOIN PropertyForRent pro
ON pro.PrivateOwnerId=pri.Id
ORDER BY FamilyName

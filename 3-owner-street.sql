SELECT PrivateOwner.FirstName,PrivateOwner.FamilyName,PropertyForRent.Street
FROM PrivateOwner
FULL OUTER JOIN PropertyForRent ON PrivateOwner.Id=PropertyForRent.PrivateOwnerId
WHERE PropertyForRent.Street='Slippery Lane 16'
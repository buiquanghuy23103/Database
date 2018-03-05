SELECT FirstName,FamilyName
FROM PrivateOwner
WHERE Id = (SELECT PrivateOwnerId
			FROM PropertyForRent
			WHERE Street = 'Slippery Lane 16');
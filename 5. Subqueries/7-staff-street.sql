SELECT FirstName,FamilyName
FROM Staff
WHERE Id = (SELECT PrivateOwnerId
			FROM PropertyForRent
			WHERE Street = '8 Naval Drive');
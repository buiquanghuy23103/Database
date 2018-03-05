SELECT FirstName,FamilyName
FROM Client
WHERE Id IN (SELECT ClientId
			FROM Viewing
			WHERE PropertyForRentId IN (SELECT Id
										FROM PropertyForRent
										WHERE TypeOfProperty = 'Flat'));
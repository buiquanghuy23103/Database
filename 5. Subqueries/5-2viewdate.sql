SELECT FirstName,FamilyName
FROM Client
WHERE Id IN (SELECT ClientId
			FROM Viewing
			WHERE ViewDate = '2018-06-15' OR ViewDate = '2018-06-16');
SELECT FirstName,FamilyName
FROM Staff
WHERE BranchId = (SELECT Id
					FROM Branch
					WHERE Street = '32 Manse Road')
		AND Position = 'Assistant';
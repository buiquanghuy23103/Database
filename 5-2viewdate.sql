SELECT DISTINCT Client.FirstName,Client.FamilyName,Viewing.ViewDate
FROM Client
FULL OUTER JOIN Viewing ON Client.Id=Viewing.ClientId
WHERE Viewing.ViewDate='2018-06-15' OR Viewing.ViewDate='2018-06-16'
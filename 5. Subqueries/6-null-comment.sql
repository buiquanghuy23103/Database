SELECT DISTINCT Client.FirstName,Client.FamilyName,Viewing.ViewDate,Viewing.CommentsGiven
FROM Client
FULL OUTER JOIN Viewing ON Client.Id=Viewing.ClientId
WHERE Viewing.ViewDate='2018-06-15' AND Viewing.CommentsGiven IS NULL
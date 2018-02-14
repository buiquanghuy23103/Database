SELECT DISTINCT Client.FirstName,Client.FamilyName,Viewing.ViewDate,Viewing.CommentsGiven
FROM Client
JOIN Viewing ON Client.Id=Viewing.ClientId
WHERE Viewing.ViewDate='2018-06-15' AND Viewing.CommentsGiven IS NULL

SELECT DISTINCT FirstName,FamilyName
FROM Client
WHERE Id IN
  (SELECT ClientId
  FROM Viewing
  WHERE ViewDate='2018-06-15' AND CommentsGiven IS NULL)

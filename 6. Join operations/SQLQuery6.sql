SELECT FamilyName,FirstName,CommentsGiven
FROM Client c JOIN Viewing v
ON c.Id=v.ClientId
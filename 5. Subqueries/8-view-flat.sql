SELECT Client.FirstName,Client.FamilyName,PropertyForRent.TypeOfProperty,Viewing.ViewDate
FROM Viewing
FULL OUTER JOIN PropertyForRent ON PropertyForRent.Id=Viewing.PropertyForRentId
FULL OUTER JOIN Client ON Client.Id=Viewing.ClientId
WHERE PropertyForRent.TypeOfProperty='Flat'
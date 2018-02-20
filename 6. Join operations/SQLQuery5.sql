SELECT TypeOfProperty,Rent,b.Street
FROM PropertyForRent p JOIN Branch b
ON p.BranchId=b.Id
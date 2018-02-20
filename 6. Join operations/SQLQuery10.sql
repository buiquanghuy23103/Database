SELECT b.Street,TypeOfProperty,Rent
FROM Branch b JOIN PropertyForRent p
ON b.Id=p.BranchId
ORDER BY b.Street,TypeOfProperty
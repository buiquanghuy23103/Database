SELECT Staff.FirstName, Staff.FamilyName, Branch.City, Branch.Street
FROM Branch
FULL OUTER JOIN Staff ON Branch.Id=Staff.BranchId
WHERE Staff.FirstName='Ann'
SELECT Staff.FirstName, Staff.Position, Branch.City, Branch.Street
FROM Branch
FULL OUTER JOIN Staff ON Branch.Id=Staff.BranchId
WHERE Branch.Street='32 Manse Road' AND Staff.Position='Assistant'
SELECT City, Street
FROM Branch
WHERE BranchId = (SELECT BranchId
                  FROM Staff
                  WHERE FirstName='Ann');

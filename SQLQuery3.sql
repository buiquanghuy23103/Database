SELECT FamilyName,
count(StaffId) as "Number of properties"
FROM Staff
LEFT OUTER JOIN PropertyForRent pro
ON Staff.Id=pro.StaffId
GROUP BY FamilyName
ORDER BY "Number of properties" DESC

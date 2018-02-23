SELECT FamilyName,
count(*) AS "Number of properties"
FROM PropertyForRent pro JOIN Staff
ON Staff.Id=pro.StaffId
GROUP BY FamilyName
ORDER BY "Number of properties" DESC

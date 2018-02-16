SELECT FamilyName,
count(*) AS "Number of properties"
FROM PropertyForRent pro
INNER JOIN Staff
ON Staff.Id=pro.StaffId
--WHERE StaffId IS NOT NULL
GROUP BY FamilyName
ORDER BY "Number of properties" DESC
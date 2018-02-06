select FirstName, FamilyName,
format(DateOfBirth, 'yyyy', 'en-US') as YearOfBirth,
cast( YEAR(GETDATE()) - YEAR(DateOfBirth) as int) as Age
from Staff
order by Age
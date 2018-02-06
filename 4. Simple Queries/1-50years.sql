select FirstName, FamilyName, 
format(DateOfBirth, 'D', 'en-US') as Birthday
from Staff
where DateOfBirth < '1968-2-2';
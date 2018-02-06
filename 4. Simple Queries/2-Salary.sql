select FirstName, FamilyName,
cast(Salary/12 as decimal(8,2)) as 'Monthly sSalary'
from Staff
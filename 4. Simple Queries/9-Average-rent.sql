select TypeOfProperty,
count(*) as "Number of properties",
cast(avg(Rent) as decimal(8,2)) as "Average rent"
from PropertyForRent
group by TypeOfProperty
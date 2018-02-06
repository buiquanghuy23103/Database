select TypeOfProperty, count(*) as "Number of properties"
from PropertyForRent
group by TypeOfProperty
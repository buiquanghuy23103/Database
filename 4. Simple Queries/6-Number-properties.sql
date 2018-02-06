select TypeOfProperty, count(*) as "Number of properties"
from PropertyForRent
group by TypeOfProperty
having count(*) > 1
order by count(*) desc
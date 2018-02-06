select StaffId, count(*) as "Number of properties"
from PropertyForRent
group by StaffId
having count(*) > 1
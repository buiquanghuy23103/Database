select PropertyForRentId, count(*) as "Number of Viewings"
from Viewing
group by PropertyForRentId
having count(*) > 1
select e.months*e.salary as earn, count(*)
from Employee e
group by earn
order by earn desc
limit 1;

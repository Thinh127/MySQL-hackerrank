select concat(o.Name, "(", subtr(o.Occupation, 1, 1), ")")
from Occupations o
order by o.Name;
select concat("There is a total of ", count(o.Occupation), " ", lower(o.Occupation),".s")
from Occupations o
group by o.Occupation
order by count(o.Occupation) asc;

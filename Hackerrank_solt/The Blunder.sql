select ceil(avg(e.Salary) - avg(replace(e.Salary, '0', '')))
from EMPLOYEES e;

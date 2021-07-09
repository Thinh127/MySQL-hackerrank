set @index := -1;
select round(avg(indice.lat), 4)
from (select @index := @index + 1 as index, s.LAT_N
      from STATION s
      order by s.LAT_N
      ) indice
where indice.index in (floor(@index/2), ceil(@index/2));

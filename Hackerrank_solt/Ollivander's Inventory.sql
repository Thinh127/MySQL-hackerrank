select w.id, p.age, w.coins_needed, w.power
from Wands w
inner join Wands_Property p on (w.code = p.code) & (p.is_evil = 0)
where w.coins_needed = (select min(w2.coins_needed)
                        from Wands w2
                        inner join Wands_Property p2 on (w2.code = p2.code) & (p2.is_evil = 0)
                        where (w2.power = w.power) & (p2.age = p.age)
                        order by w2.power desc, p2.age desc)
order by w.power desc, p.age desc;

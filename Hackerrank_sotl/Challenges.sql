select h.hacker_id, h.name, count(c.hacker_id) as cnt
from Hackers h 
inner join Challenges c on c.hacker_id = h.hacker_id
group by h.hacker_id, h.name having
								cnt in (select t.subcnt
									    from (select count(c1.hacker_id) as subcnt
											from Challenges c1) t
										group by t.subcnt having count(t.subcnt) = 1
									   )
							 or
							 	cnt = (select max(t.subcnt)
									   from (select count(c1.hacker_id) as subcnt
											from Challenges c1) t
									   )
order by cnt desc, h.hacker_id asc;									   

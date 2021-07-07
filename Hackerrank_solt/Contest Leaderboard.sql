select sub1.hacker_id, h.name, sum(sub1.score) as total_score
from (select s.hacker_id as hacker_id, s.challenge_id, max(s.score) as score
      from Submissions s
      group by s.hacker_id, s.challenge_id) sub1
inner join Hackers h on (sub1.hacker_id = h.hacker_id)
group by sub1.hacker_id, h.name having total_score > 0
order by total_score desc, h.hacker_id asc;

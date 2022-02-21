/*
15. Write a SQL query to find the referees who booked the most number of players.
*/
WITH ref_ranking AS (SELECT RANK() OVER (ORDER BY bookings DESC) AS ref_rank,referee_name FROM
(SELECT r.referee_name,COUNT(DISTINCT(p.player_id)) AS bookings FROM
match_mast AS m LEFT JOIN player_booked AS p
ON m.match_no = p.match_no LEFT JOIN
referee_mast AS r ON
m.referee_id = r.referee_id
GROUP BY 1
ORDER BY 2 desc) AS bookings_cnt)
SELECT referee_name from ref_ranking where ref_rank = 1;
/*
+------------------+
| referee_name     |
+------------------+
| Mark Clattenburg |
+------------------+
*/

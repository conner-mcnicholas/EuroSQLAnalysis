/*
19. Write a SQL query to find the number of captains who were also goalkeepers.
*/
SELECT p.posi_to_play,COUNT(m.player_captain) AS num_caps
FROM match_captain m LEFT JOIN
player_mast p ON p.player_id = m.player_captain
WHERE posi_to_play = 'DF'
GROUP BY 1;
/*
+--------------+----------+
| posi_to_play | num_caps |
+--------------+----------+
| DF           |       40 |
+--------------+----------+
*/

/*
19. Write a SQL query to find the number of captains who were also goalkeepers.
*/
SELECT COUNT(DISTINCT mc.player_captain) AS caps
FROM euro_cup_2016.match_captain AS mc, euro_cup_2016.match_details AS md
WHERE md.match_no = mc.match_no
AND md.player_gk = mc.player_captain;
/*
+------+
| caps |
+------+
|    4 |
+------+
*/

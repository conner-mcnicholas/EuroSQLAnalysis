--q8)Write a SQL query to find the match number for the game with the highest number of penalty shots, and the countries that played that match
WITH highpk AS 
(SELECT MIN(team_id) AS team1,MAX(team_id) AS team2,match_no FROM penalty_shootout WHERE kick_no  >= ((SELECT max(kick_no) FROM penalty_shootout) -1)), 
join1 AS 
(SELECT c1.country_name AS country1,p.team2, p.match_no FROM highpk AS p,soccer_country AS c1 WHERE p.team1 = c1.country_id) 
SELECT j.country1,c2.country_name AS country2, j.match_no FROM join1 AS j,soccer_country AS c2 WHERE j.team2 = c2.country_id;
/*
+----------+-------------+----------+
| country1 | country2    | match_no |
+----------+-------------+----------+
| Germany  | Switzerland | 37       |
+----------+-------------+----------+
*/

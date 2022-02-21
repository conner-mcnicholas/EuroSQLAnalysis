/*
12. Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals.
*/
SELECT c.country_name, p.posi_to_play, COUNT(g.goal_id) AS goals
FROM goal_details AS g LEFT JOIN player_mast AS p
ON g.player_id = p.player_id
LEFT JOIN soccer_country AS c
ON c.country_id = g.team_id
GROUP BY c.country_name, p.posi_to_play
ORDER BY goals DESC;
/*
+---------------------+--------------+-------+
| country_name        | posi_to_play | goals |
+---------------------+--------------+-------+
| France              | FD           |     9 |
| Portugal            | FD           |     8 |
| Wales               | FD           |     6 |
| Belgium             | MF           |     5 |
| France              | MF           |     4 |
| Croatia             | MF           |     4 |
| Iceland             | FD           |     4 |
| Hungary             | FD           |     4 |
| Spain               | FD           |     4 |
| Germany             | MF           |     3 |
| England             | FD           |     3 |
| Iceland             | MF           |     3 |
| Italy               | FD           |     3 |
| Republic of Ireland | MF           |     3 |
| Germany             | FD           |     3 |
| Belgium             | FD           |     3 |
| Slovakia            | MF           |     3 |
| Czech Republic      | FD           |     2 |
| Northern Ireland    | DF           |     2 |
| Wales               | DF           |     2 |
| Iceland             | DF           |     2 |
| Poland              | MF           |     2 |
| Poland              | FD           |     2 |
| Italy               | DF           |     2 |
| Romania             | FD           |     2 |
| Turkey              | MF           |     1 |
| Croatia             | FD           |     1 |
| Austria             | MF           |     1 |
| Turkey              | FD           |     1 |
| Switzerland         | MF           |     1 |
| Germany             | DF           |     1 |
| Belgium             | DF           |     1 |
| Portugal            | MF           |     1 |
| Wales               | MF           |     1 |
| Albania             | FD           |     1 |
| Northern Ireland    | FD           |     1 |
| Switzerland         | FD           |     1 |
| Russia              | MF           |     1 |
| Hungary             | MF           |     1 |
| Italy               | MF           |     1 |
| Republic of Ireland | DF           |     1 |
| Spain               | DF           |     1 |
| Russia              | DF           |     1 |
| England             | MF           |     1 |
| Switzerland         | DF           |     1 |
+---------------------+--------------+-------+
*/

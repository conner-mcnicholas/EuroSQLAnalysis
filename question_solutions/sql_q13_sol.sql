/*
13. Write a SQL query to find all the defenders who scored a goal for their teams.
*/
SELECT p.player_name
FROM goal_details AS g,player_mast AS p
WHERE g.player_id = p.player_id
AND p.posi_to_play = 'DF';
/*
+------------------------+
| player_name            |
+------------------------+
| Fabian Schar           |
| Vasili Berezutski      |
| Gerard Pique           |
| Ciaran Clark           |
| Gareth McAuley         |
| Birkir Saevarsson      |
| Neil Taylor            |
| Gareth McAuley         |
| Jerome Boateng         |
| Toby Alderweireld      |
| Giorgio Chiellini      |
| Arnor Ingvi Traustason |
| Ashley Williams        |
| Leonardo Bonucci       |
+------------------------+
*/

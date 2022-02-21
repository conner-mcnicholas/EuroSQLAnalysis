/*
11. Write a SQL query to find the players, their jersey number, and playing club who were
the goalkeepers for England in EURO Cup 2016.
*/
SELECT player_name,jersey_no,playing_club FROM euro_cup_2016.player_mast
where posi_to_play = 'GK' and
team_id = (select country_id from soccer_country where country_name = 'England');
/*
+----------------+-----------+--------------+
| player_name    | jersey_no | playing_club |
+----------------+-----------+--------------+
| Joe Hart       | 1         | Man. City    |
| Fraser Forster | 13        | Southampton  |
| Tom Heaton     | 23        | Burnley      |
+----------------+-----------+--------------+
*/

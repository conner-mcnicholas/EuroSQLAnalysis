select player_name from player_mast
where team_id = 1208 AND
player_id in
(SELECT player_gk from match_details where play_stage = 'G');
/*
+--------------+
| player_name  |
+--------------+
| Manuel Neuer |
+--------------+
*/

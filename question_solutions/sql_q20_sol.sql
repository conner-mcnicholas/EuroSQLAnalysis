/*
20. Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule.
*/
SELECT p.player_name FROM player_in_out i LEFT JOIN
player_mast p ON
i.player_id = p.player_id
WHERE in_out = 'I'
AND play_half = '1'
AND play_schedule = 'NT';
/*
+------------------------+
| player_name            |
+------------------------+
| Erik Johansson         |
| Bastian Schweinsteiger |
| Ricardo Quaresma       |
+------------------------+
*/

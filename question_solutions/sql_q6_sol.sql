SELECT COUNT(*) as one_goal_games FROM
(
  SELECT decided_by,
  (CAST(SUBSTRING_INDEX(goal_score,"-",1) AS SIGNED)-CAST(SUBSTRING_INDEX(goal_score,"-",-1) AS SIGNED)
)
AS goal_diff from match_mast) AS matchdiff
WHERE goal_diff = 0 AND decided_by = 'N';
/*
+----------------+
| one_goal_games |
+----------------+
|             11 |
+----------------+
*/

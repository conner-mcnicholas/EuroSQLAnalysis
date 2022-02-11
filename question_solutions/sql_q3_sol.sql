SELECT match_no,play_date,goal_score FROM match_mast WHERE stop1_sec = '0';
--Note that the goal_score data is corrupted within the raw data, converting some
--scores to their month equivalent.
/*
+-------------+------------+------------+
| ﻿match_no   | play_date  | goal_score |
+-------------+------------+------------+
| 4           | 2016-06-12 | 01-Jan     |
+-------------+------------+------------+
*/

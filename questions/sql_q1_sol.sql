SELECT MIN(DATE(play_date)) as start_date FROM match_mast ORDER BY DATE(play_date);
/*
+------------+
| start_date |
+------------+
| 2016-06-11 |
+------------+
*/

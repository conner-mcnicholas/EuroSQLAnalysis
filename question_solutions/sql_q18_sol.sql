/*
18. Write a SQL query to find the highest number of foul cards given in one match.
*/
WITH foulcounts AS (SELECT match_no,COUNT(booking_time) AS num_fouls
FROM player_booked
GROUP BY 1)
SELECT match_no,num_fouls FROM foulcounts WHERE
num_fouls = (SELECT MAX(num_fouls) FROM foulcounts);
/*
+----------+-----------+
| match_no | num_fouls |
+----------+-----------+
| 51       |        10 |
+----------+-----------+
*/

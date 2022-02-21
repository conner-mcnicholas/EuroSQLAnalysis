/*
17. Write a SQL query to find the country where the most assistant referees come from,
and the count of the assistant referees.
*/
WITH refcounts AS (SELECT c.country_name,COUNT(r.referee_name) AS num_refs
FROM referee_mast AS r
LEFT JOIN soccer_country AS c
ON r.country_id = c.country_id
GROUP BY 1)
SELECT country_name,num_refs FROM refcounts WHERE
num_refs = (SELECT MAX(num_refs) FROM refcounts);
/*
+--------------+----------+
| country_name | num_refs |
+--------------+----------+
| England      |        2 |
+--------------+----------+
*?

/*
14. Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order.
*/
SELECT r.referee_name,COUNT(p.player_id) AS bookings FROM
match_mast AS m LEFT JOIN player_booked AS p
ON m.match_no = p.match_no LEFT JOIN
referee_mast AS r ON
m.referee_id = r.referee_id
GROUP BY 1
ORDER BY 2 desc;
/*
+-------------------------+----------+
| referee_name            | bookings |
+-------------------------+----------+
| Mark Clattenburg        |       21 |
| Nicola Rizzoli          |       20 |
| Milorad Mazic           |       13 |
| Bjorn Kuipers           |       12 |
| Viktor Kassai           |       12 |
| Sergei Karasev          |       12 |
| Damir Skomina           |       12 |
| Cuneyt Cakir            |       11 |
| Jonas Eriksson          |       11 |
| Pavel Kralovec          |       11 |
| Szymon Marciniak        |       10 |
| Carlos Velasco Carballo |       10 |
| Martin Atkinson         |        9 |
| Ovidiu Hategan          |        9 |
| Felix Brych             |        9 |
| Svein Oddvar Moen       |        8 |
| William Collum          |        8 |
| Clement Turpin          |        3 |
+-------------------------+----------+
*/

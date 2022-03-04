/*
14. Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order.
*/
select rm.referee_name, count(*) count  from  player_booked pb,         match_mast mm,       referee_mast rm  where pb.match_no = mm.match_no and
mm.referee_id = rm.referee_id  group by rm.referee_name   order by count(*) desc;
/*
+-------------------------+-------+
| referee_name            | count |
+-------------------------+-------+
| Mark Clattenburg        |    21 |
| Nicola Rizzoli          |    20 |
| Milorad Mazic           |    13 |
| Bjorn Kuipers           |    12 |
| Viktor Kassai           |    12 |
| Sergei Karasev          |    12 |
| Damir Skomina           |    12 |
| Cuneyt Cakir            |    11 |
| Jonas Eriksson          |    11 |
| Pavel Kralovec          |    11 |
| Szymon Marciniak        |    10 |
| Carlos Velasco Carballo |    10 |
| Martin Atkinson         |     9 |
| Ovidiu Hategan          |     9 |
| Felix Brych             |     9 |
| Svein Oddvar Moen       |     8 |
| William Collum          |     8 |
| Clement Turpin          |     3 |
+-------------------------+-------+

*/

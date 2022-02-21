/*
16. Write a SQL query to find referees and the number of matches they worked in each
venue.
*/
SELECT r.referee_name,v.venue_name,COUNT(match_no) as refd_matches FROM
match_mast AS m LEFT JOIN
referee_mast AS r ON
m.referee_id = r.referee_id LEFT JOIN
soccer_venue AS v ON
m.venue_id = v.venue_id
GROUP BY venue_name, referee_name
ORDER BY refd_matches desc, referee_name ASC, venue_name ASC;
/*
+-------------------------+-------------------------+--------------+
| referee_name            | venue_name              | refd_matches |
+-------------------------+-------------------------+--------------+
| Damir Skomina           | Stade Pierre Mauroy     |            3 |
| Bjorn Kuipers           | Stade de France         |            2 |
| Carlos Velasco Carballo | Stade Bollaert-Delelis  |            2 |
| Mark Clattenburg        | Stade Geoffroy Guichard |            2 |
| Nicola Rizzoli          | Stade VElodrome         |            2 |
| Pavel Kralovec          | Stade de Lyon           |            2 |
| Bjorn Kuipers           | Stade de Bordeaux       |            1 |
| Carlos Velasco Carballo | Stade Geoffroy Guichard |            1 |
| Clement Turpin          | Parc des Princes        |            1 |
| Clement Turpin          | Stade de Bordeaux       |            1 |
| Cuneyt Cakir            | Stade de Bordeaux       |            1 |
| Cuneyt Cakir            | Stade de France         |            1 |
| Cuneyt Cakir            | Stade Geoffroy Guichard |            1 |
| Damir Skomina           | Stade de Nice           |            1 |
| Felix Brych             | Stade Bollaert-Delelis  |            1 |
| Felix Brych             | Stade de Nice           |            1 |
| Felix Brych             | Stade VElodrome         |            1 |
| Jonas Eriksson          | Parc des Princes        |            1 |
| Jonas Eriksson          | Stade de Lyon           |            1 |
| Jonas Eriksson          | Stadium de Toulouse     |            1 |
| Mark Clattenburg        | Stade de France         |            1 |
| Mark Clattenburg        | Stade de Lyon           |            1 |
| Martin Atkinson         | Parc des Princes        |            1 |
| Martin Atkinson         | Stade de Lyon           |            1 |
| Martin Atkinson         | Stade Pierre Mauroy     |            1 |
| Milorad Mazic           | Stade de France         |            1 |
| Milorad Mazic           | Stade de Nice           |            1 |
| Milorad Mazic           | Stadium de Toulouse     |            1 |
| Nicola Rizzoli          | Parc des Princes        |            1 |
| Nicola Rizzoli          | Stade de Lyon           |            1 |
| Ovidiu Hategan          | Stade de Nice           |            1 |
| Ovidiu Hategan          | Stade Pierre Mauroy     |            1 |
| Sergei Karasev          | Parc des Princes        |            1 |
| Sergei Karasev          | Stade VElodrome         |            1 |
| Svein Oddvar Moen       | Stade de Bordeaux       |            1 |
| Svein Oddvar Moen       | Stade VElodrome         |            1 |
| Szymon Marciniak        | Stade de France         |            1 |
| Szymon Marciniak        | Stade Pierre Mauroy     |            1 |
| Szymon Marciniak        | Stadium de Toulouse     |            1 |
| Viktor Kassai           | Stade de Bordeaux       |            1 |
| Viktor Kassai           | Stade de France         |            1 |
| Viktor Kassai           | Stadium de Toulouse     |            1 |
| William Collum          | Stade Bollaert-Delelis  |            1 |
| William Collum          | Stade VElodrome         |            1 |
+-------------------------+-------------------------+--------------+
*/

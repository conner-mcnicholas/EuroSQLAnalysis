SELECT player_name AS liverpool_player,posi_to_play AS position,dt_of_bir AS birthday,age, country_n
ame AS national_team FROM player_mast AS p, soccer_country AS s WHERE p.team_id = s.country_id AND
p.playing_club = 'Liverpool';
/*
+-------------------+----------+------------+------+---------------+
| liverpool_player  | position | birthday   | age  | national_team |
+-------------------+----------+------------+------+---------------+
| Simon Mignolet    | GK       | 1988-08-06 | 27   | Belgium       |
| Divock Origi      | FD       | 1995-04-18 | 21   | Belgium       |
| Christian Benteke | FD       | 1990-12-03 | 25   | Belgium       |
| James Milner      | MF       | 1986-01-04 | 30   | England       |
| Adam Lallana      | MF       | 1988-05-10 | 28   | England       |
| Nathaniel Clyne   | DF       | 1991-04-05 | 25   | England       |
| Jordan Henderson  | MF       | 1990-06-17 | 26   | England       |
| Daniel Sturridge  | FD       | 1989-09-01 | 26   | England       |
| Emre Can          | MF       | 1994-01-12 | 22   | Germany       |
| Martin Skrtel     | DF       | 1984-12-15 | 31   | Slovakia      |
| Joe Allen         | MF       | 1990-03-14 | 26   | Wales         |
| Danny Ward        | GK       | 1993-06-22 | 22   | Wales         |
+-------------------+----------+------------+------+---------------+
*/

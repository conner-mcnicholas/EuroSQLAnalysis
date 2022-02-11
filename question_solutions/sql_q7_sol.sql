SELECT m.venue_id, v.venue_name from match_mast as m
left join soccer_venue as v
on m.venue_id = v.venue_id
WHERE m.decided_by = 'P';
/* 
+----------+-------------------------+
| venue_id | venue_name              |
+----------+-------------------------+
| 20009    | Stade Geoffroy Guichard |
| 20005    | Stade VElodrome         |
| 20001    | Stade de Bordeaux       |
+----------+-------------------------+
*/

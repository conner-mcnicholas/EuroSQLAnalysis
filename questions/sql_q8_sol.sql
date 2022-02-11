SELECT match_no from penalty_shootout
where `﻿kick_id` = (select max(`﻿kick_id`) from penalty_shootout);
/*
+----------+
| match_no |
+----------+
| 37       |
+----------+
*/

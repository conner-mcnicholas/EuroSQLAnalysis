# EuroSQLAnalysis
Advanced SQL Mini Project

Initial state is shell scripts and data dir with csv files from https://drive.google.com/file/d/1gbSU9bjpler1y5lHo6koVa5YSI1J2MRk/view?usp=sharing

1. Running ./create_table_list.sh creates list of tables/files tablenames.txt to be used in downstream scripts.
2. Running ./build_all_tables.sh creates build_all_tables.sql
3. Running ./remove_col_headers.sh creates copies of csv files in data/justdata that lack column headers, which would break their import.
4. Running ./fix_match_goals.sh cleans the corrupted goal data (1 goal - Jan, 2 - Feb, etc)
5. The file build_all_tables.sql is imported into euro_cup_2016 database within phpMyAdmin mySQL UI (creates tables based on all csv files in data dir).
6. The csv files in data/justdata are imported into each individual table. All columns are created as varchar(N) where N is the max number of chars in each column of the table's csv file.
7. This database is then ready to query.  Image of this database was exported from phpMyAdmin to create euro_cup_2016.sql.  
